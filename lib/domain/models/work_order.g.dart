// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkOrderAction _$WorkOrderActionFromJson(Map<String, dynamic> json) =>
    _WorkOrderAction(
      order: (json['Order'] as num?)?.toInt() ?? 0,
      step: (json['Step'] as num?)?.toInt() ?? 0,
      statusCode: (json['Status'] as num?)?.toInt() ?? 0,
      fuelToLoadGallons: (json['FuelToLoadGallons'] as num?)?.toDouble() ?? 0,
      startedTime: json['StartedTime'] == null
          ? null
          : DateTime.parse(json['StartedTime'] as String),
      endedTime: json['EndedTime'] == null
          ? null
          : DateTime.parse(json['EndedTime'] as String),
    );

Map<String, dynamic> _$WorkOrderActionToJson(_WorkOrderAction instance) =>
    <String, dynamic>{
      'Order': instance.order,
      'Step': instance.step,
      'Status': instance.statusCode,
      'FuelToLoadGallons': instance.fuelToLoadGallons,
      'StartedTime': instance.startedTime?.toIso8601String(),
      'EndedTime': instance.endedTime?.toIso8601String(),
    };

_WorkOrder _$WorkOrderFromJson(Map<String, dynamic> json) => _WorkOrder(
  id: json['Id'] as String,
  aircraftId: json['AircraftId'] as String?,
  name: json['Name'] as String? ?? '',
  startDate: json['StartDate'] == null
      ? null
      : DateTime.parse(json['StartDate'] as String),
  statusCode: (json['Status'] as num?)?.toInt() ?? 0,
  isTicking: json['IsTicking'] as bool? ?? false,
  departureAirportId: json['DepartureAirportId'] as String?,
  actions:
      (json['Actions'] as List<dynamic>?)
          ?.map((e) => WorkOrderAction.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  crews: json['Crews'] as List<dynamic>? ?? const [],
);

Map<String, dynamic> _$WorkOrderToJson(_WorkOrder instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'AircraftId': instance.aircraftId,
      'Name': instance.name,
      'StartDate': instance.startDate?.toIso8601String(),
      'Status': instance.statusCode,
      'IsTicking': instance.isTicking,
      'DepartureAirportId': instance.departureAirportId,
      'Actions': instance.actions,
      'Crews': instance.crews,
    };
