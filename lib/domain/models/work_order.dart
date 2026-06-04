import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_order.freezed.dart';
part 'work_order.g.dart';

enum WorkOrderStatus {
  pending,
  inProgress,
  completed,
  cancelled,
  unknown;

  static WorkOrderStatus fromCode(int? code) => switch (code) {
        0 => WorkOrderStatus.pending,
        1 => WorkOrderStatus.inProgress,
        2 => WorkOrderStatus.completed,
        3 => WorkOrderStatus.cancelled,
        _ => WorkOrderStatus.unknown,
      };
}

@freezed
abstract class WorkOrderAction with _$WorkOrderAction {
  const WorkOrderAction._();
  const factory WorkOrderAction({
    @JsonKey(name: 'Order') @Default(0) int order,
    @JsonKey(name: 'Step') @Default(0) int step,
    @JsonKey(name: 'Status') @Default(0) int statusCode,
    @JsonKey(name: 'FuelToLoadGallons') @Default(0) double fuelToLoadGallons,
    @JsonKey(name: 'StartedTime') DateTime? startedTime,
    @JsonKey(name: 'EndedTime') DateTime? endedTime,
  }) = _WorkOrderAction;
  factory WorkOrderAction.fromJson(Map<String, dynamic> json) =>
      _$WorkOrderActionFromJson(json);

  WorkOrderStatus get status => WorkOrderStatus.fromCode(statusCode);
}

@freezed
abstract class WorkOrder with _$WorkOrder {
  const WorkOrder._();
  const factory WorkOrder({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'AircraftId') String? aircraftId,
    @JsonKey(name: 'Name') @Default('') String name,
    @JsonKey(name: 'StartDate') DateTime? startDate,
    @JsonKey(name: 'Status') @Default(0) int statusCode,
    @JsonKey(name: 'IsTicking') @Default(false) bool isTicking,
    @JsonKey(name: 'DepartureAirportId') String? departureAirportId,
    @JsonKey(name: 'Actions') @Default([]) List<WorkOrderAction> actions,
    @JsonKey(name: 'Crews') @Default([]) List<Object?> crews,
  }) = _WorkOrder;

  factory WorkOrder.fromJson(Map<String, dynamic> json) =>
      _$WorkOrderFromJson(json);

  WorkOrderStatus get status => WorkOrderStatus.fromCode(statusCode);
  int get crewCount => crews.length;
}
