import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/employee.dart';
import 'package:onairmonitor/features/crew/crew_logic.dart';

Employee emp(String id, String name, int cat, {int status = 0, String? busy}) =>
    Employee(
      id: id,
      pseudo: name,
      categoryCode: cat,
      statusCode: status,
      busyUntil: busy == null ? null : DateTime.parse(busy),
    );

void main() {
  final all = [
    emp('1', 'Zoe', 1),
    emp('2', 'Anna', 2),
    emp('3', 'Stefan', 3), // mechanic
  ];

  test('filterCrew by category + case-insensitive name', () {
    expect(filterCrew(all, category: CrewCategory.pilot, query: '').length, 1);
    expect(filterCrew(all, category: null, query: 'ann').single.pseudo, 'Anna');
    expect(filterCrew(all, category: CrewCategory.mechanic, query: '').single.id, '3');
  });

  test('sortCrew puts flagged-unassigned assignable crew at the end', () {
    final sorted = sortCrew(all, {'1'});
    expect(sorted.map((e) => e.pseudo), ['Stefan', 'Zoe', 'Anna']);
    expect(firstUnassignedIndex(sorted, {'1'}), 2);
  });

  test('all assignable assigned => no flagged group', () {
    final sorted = sortCrew([all[0], all[1]], {'1', '2'});
    expect(firstUnassignedIndex(sorted, {'1', '2'}), -1);
  });

  test('crewStatusLabel: sleeping uses BusyUntil countdown', () {
    final now = DateTime(2026, 6, 3, 2, 0, 0);
    final sleeping = emp('s', 'S', 2, status: 1, busy: '2026-06-03T04:04:00');
    expect(crewStatusLabel(sleeping, now: now), 'Asleep · wakes in 2h 4m');
    expect(crewStatusLabel(emp('a', 'A', 1, status: 0), now: now), 'Available');
    expect(crewStatusLabel(emp('o', 'O', 1, status: 7), now: now), 'Off duty');
  });
}
