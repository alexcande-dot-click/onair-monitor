import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/core/theme/app_colors.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/domain/models/employee.dart';
import 'package:onairmonitor/features/aircraft/aircraft_logic.dart';

Aircraft ac(String id, String tail, {int status = 0, bool maint = false}) =>
    Aircraft(id: id, identifier: tail, aircraftStatusCode: status, mustDoMaintenance: maint);

void main() {
  test('crewCountByAircraft reverses the assignment map', () {
    final counts = crewCountByAircraft({'e1': 'a1', 'e2': 'a1', 'e3': 'a2'});
    expect(counts['a1'], 2);
    expect(counts['a2'], 1);
    expect(counts['a3'], isNull);
  });

  test('crewNamesFor returns sorted names for an aircraft', () {
    final emps = [
      const Employee(id: 'e1', pseudo: 'Zoe'),
      const Employee(id: 'e2', pseudo: 'Anna'),
      const Employee(id: 'e3', pseudo: 'Bob'),
    ];
    final names = crewNamesFor('a1', {'e1': 'a1', 'e2': 'a1', 'e3': 'a2'}, emps);
    expect(names, ['Anna', 'Zoe']);
    expect(crewNamesFor('zzz', const {}, emps), isEmpty);
  });

  test('filterAircraft by status + tail search', () {
    final all = [ac('1', 'N1', status: 3), ac('2', 'N2', status: 0)];
    expect(filterAircraft(all, filter: AircraftStatusFilter.flying, query: '').single.id, '1');
    expect(filterAircraft(all, filter: AircraftStatusFilter.grounded, query: '').single.id, '2');
    expect(filterAircraft(all, filter: AircraftStatusFilter.all, query: 'n2').single.identifier, 'N2');
  });

  test('sortAircraft groups un-noted at the end', () {
    final all = [ac('1', 'Zulu'), ac('2', 'Alpha'), ac('3', 'Bravo')];
    final sorted = sortAircraft(all, {'1'});
    expect(sorted.map((a) => a.identifier), ['Zulu', 'Alpha', 'Bravo']);
    expect(firstUnnotedIndex(sorted, {'1'}), 1);
    expect(firstUnnotedIndex(all, {'1', '2', '3'}), -1);
  });

  test('aircraftStatusColor: maintenance>flying>grounded', () {
    expect(aircraftStatusColor(ac('1', 'N', status: 3, maint: true)), AppColors.danger);
    expect(aircraftStatusColor(ac('2', 'N', status: 3)), AppColors.electricBlue);
    expect(aircraftStatusColor(ac('3', 'N', status: 0)), AppColors.electricGreen);
  });

  test('aircraftStatusLabel matches precedence', () {
    expect(aircraftStatusLabel(ac('1', 'N', status: 3, maint: true)), 'Maintenance');
    expect(aircraftStatusLabel(ac('2', 'N', status: 3)), 'Flying');
    expect(aircraftStatusLabel(ac('3', 'N', status: 0)), 'Grounded');
  });
}
