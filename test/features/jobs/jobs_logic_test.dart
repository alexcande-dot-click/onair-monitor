import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/core/theme/app_colors.dart';
import 'package:onairmonitor/domain/models/airport.dart';
import 'package:onairmonitor/domain/models/mission.dart';
import 'package:onairmonitor/domain/models/work_order.dart';
import 'package:onairmonitor/features/jobs/jobs_logic.dart';

Mission job(String id, int cat,
        {String icao = 'EETN', String? exp, String? comp}) =>
    Mission(
      id: id,
      categoryCode: cat,
      mainAirport: Airport(icao: icao),
      expirationDate: exp == null ? null : DateTime.parse(exp),
      completionDate: comp == null ? null : DateTime.parse(comp),
    );

WorkOrder wo(String id, int status, {bool ticking = false, String name = ''}) =>
    WorkOrder(
        id: id,
        aircraftId: id,
        statusCode: status,
        isTicking: ticking,
        name: name);

void main() {
  test('filterJobs by category + ICAO/category search', () {
    final all = [job('1', 0, icao: 'EETN'), job('2', 1, icao: 'ENGM')];
    expect(filterJobs(all, category: MissionCategory.cargo).single.id, '1');
    expect(filterJobs(all, query: 'engm').single.id, '2');
    expect(filterJobs(all, query: 'charter').single.id, '2');
  });

  test('sortPending by expiry asc (nulls last)', () {
    final all = [
      job('a', 0, exp: '2026-06-05T00:00:00'),
      job('b', 0),
      job('c', 0, exp: '2026-06-04T00:00:00'),
    ];
    expect(sortPending(all).map((m) => m.id), ['c', 'a', 'b']);
  });

  test('sortCompleted by completionDate newest-first (nulls last)', () {
    final all = [
      job('a', 0, comp: '2026-06-01T00:00:00'),
      job('b', 0),
      job('c', 0, comp: '2026-06-03T00:00:00'),
    ];
    expect(sortCompleted(all).map((m) => m.id), ['c', 'a', 'b']);
  });

  test('routeSummary: real DEP->DEST from legs; description fallback', () {
    const withLegs = Mission(id: 'r', cargos: [
      CargoLeg(
        departureAirport: Airport(icao: 'EETN'),
        destinationAirport: Airport(icao: 'ESNU'),
      )
    ]);
    expect(routeSummary(withLegs), 'EETN → ESNU');

    const completed = Mission(id: 'c', description: 'Flight #3221');
    expect(routeSummary(completed), 'Flight #3221');
  });

  test('filterWorkOrders by status + name/tail', () {
    final all = [wo('1', 1, name: 'Annual'), wo('2', 0, name: 'Repair')];
    expect(filterWorkOrders(all, status: WorkOrderStatus.inProgress).single.id, '1');
    expect(filterWorkOrders(all, query: 'rep').single.id, '2');
    expect(
        filterWorkOrders(all, query: 'N1', tailsById: {'1': 'N1'}).single.id, '1');
  });

  test('workOrderStatusLabel: ongoing when ticking + inProgress', () {
    expect(workOrderStatusLabel(wo('1', 1, ticking: true)), 'Ongoing');
    expect(workOrderStatusLabel(wo('2', 1)), 'In progress');
    expect(workOrderStatusLabel(wo('3', 0)), 'Pending');
    expect(workOrderStatusColor(wo('4', 3)), AppColors.danger);
  });
}
