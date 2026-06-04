import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/work_order.dart';

void main() {
  test('maps status, ticking, crew count, action fields', () {
    final w = WorkOrder.fromJson({
      'Id': 'w1',
      'AircraftId': 'a1',
      'Name': 'Work Order J',
      'Status': 1,
      'IsTicking': true,
      'StartDate': '2026-06-03T08:00:00',
      'Actions': [
        {'Order': 1, 'Step': 2, 'Status': 2, 'FuelToLoadGallons': 1749.84},
        {'Order': 2, 'Step': 0, 'Status': 0, 'FuelToLoadGallons': 0.0},
      ],
      'Crews': [{}, {}, {}],
    });
    expect(w.status, WorkOrderStatus.inProgress);
    expect(w.isTicking, isTrue);
    expect(w.crewCount, 3);
    expect(w.actions.first.order, 1);
    expect(w.actions.first.status, WorkOrderStatus.completed);
    expect(w.actions.first.fuelToLoadGallons, 1749.84);
    expect(w.startDate, DateTime.parse('2026-06-03T08:00:00'));
  });

  test('status fromCode incl. unknown', () {
    expect(WorkOrderStatus.fromCode(0), WorkOrderStatus.pending);
    expect(WorkOrderStatus.fromCode(2), WorkOrderStatus.completed);
    expect(WorkOrderStatus.fromCode(3), WorkOrderStatus.cancelled);
    expect(WorkOrderStatus.fromCode(9), WorkOrderStatus.unknown);
  });
}
