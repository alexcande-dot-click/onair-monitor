// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aircraft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Aircraft _$AircraftFromJson(Map<String, dynamic> json) => _Aircraft(
  id: json['Id'] as String,
  identifier: json['Identifier'] as String? ?? '',
  nickname: json['Nickname'] as String?,
  aircraftTypeId: json['AircraftTypeId'] as String?,
  aircraftType: json['AircraftType'] == null
      ? null
      : AircraftType.fromJson(json['AircraftType'] as Map<String, dynamic>),
  aircraftStatusCode: (json['AircraftStatus'] as num?)?.toInt() ?? 0,
  latitude: (json['Latitude'] as num?)?.toDouble() ?? 0,
  longitude: (json['Longitude'] as num?)?.toDouble() ?? 0,
  heading: (json['Heading'] as num?)?.toDouble() ?? 0,
  altitude: (json['Altitude'] as num?)?.toDouble() ?? 0,
  indicatedSpeed: (json['IndicatedSpeed'] as num?)?.toDouble() ?? 0,
  groundSpeed: (json['GroundSpeed'] as num?)?.toDouble() ?? 0,
  fuelTotalGallons: (json['fuelTotalGallons'] as num?)?.toDouble() ?? 0,
  airframeCondition: (json['airframeCondition'] as num?)?.toDouble() ?? 0,
  mustDoMaintenance: json['MustDoMaintenance'] as bool? ?? false,
  mustDoMaintenanceSoon: json['MustDoMaintenanceSoon'] as bool? ?? false,
  currentAirportId: json['CurrentAirportId'] as String?,
  currentAirport: json['CurrentAirport'] == null
      ? null
      : Airport.fromJson(json['CurrentAirport'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AircraftToJson(_Aircraft instance) => <String, dynamic>{
  'Id': instance.id,
  'Identifier': instance.identifier,
  'Nickname': instance.nickname,
  'AircraftTypeId': instance.aircraftTypeId,
  'AircraftType': instance.aircraftType,
  'AircraftStatus': instance.aircraftStatusCode,
  'Latitude': instance.latitude,
  'Longitude': instance.longitude,
  'Heading': instance.heading,
  'Altitude': instance.altitude,
  'IndicatedSpeed': instance.indicatedSpeed,
  'GroundSpeed': instance.groundSpeed,
  'fuelTotalGallons': instance.fuelTotalGallons,
  'airframeCondition': instance.airframeCondition,
  'MustDoMaintenance': instance.mustDoMaintenance,
  'MustDoMaintenanceSoon': instance.mustDoMaintenanceSoon,
  'CurrentAirportId': instance.currentAirportId,
  'CurrentAirport': instance.currentAirport,
};
