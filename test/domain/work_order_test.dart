import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/work_order.dart';

void main() {
  test('maps status, ticking, crew count, actions', () {
    final w = WorkOrder.fromJson({
      'Id': 'w1',
      'AircraftId': 'a1',
      'Name': 'Annual inspection',
      'Status': 1,
      'IsTicking': true,
      'StartDate': '2026-06-03T08:00:00',
      'Actions': [
        {'Name': 'Inspect engine'},
        {'Name': 'Replace oil'},
      ],
      'Crews': [{}, {}, {}],
    });
    expect(w.status, WorkOrderStatus.inProgress);
    expect(w.isTicking, isTrue);
    expect(w.crewCount, 3);
    expect(w.actions.map((a) => a.name), ['Inspect engine', 'Replace oil']);
    expect(w.startDate, DateTime.parse('2026-06-03T08:00:00'));
  });

  test('status fromCode incl. unknown', () {
    expect(WorkOrderStatus.fromCode(0), WorkOrderStatus.pending);
    expect(WorkOrderStatus.fromCode(2), WorkOrderStatus.completed);
    expect(WorkOrderStatus.fromCode(3), WorkOrderStatus.cancelled);
    expect(WorkOrderStatus.fromCode(9), WorkOrderStatus.unknown);
  });
}
