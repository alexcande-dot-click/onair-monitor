// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Airport _$AirportFromJson(Map<String, dynamic> json) => _Airport(
  id: json['Id'] as String?,
  icao: json['ICAO'] as String?,
  iata: json['IATA'] as String?,
  name: json['Name'] as String?,
  city: json['City'] as String?,
  latitude: (json['Latitude'] as num?)?.toDouble() ?? 0,
  longitude: (json['Longitude'] as num?)?.toDouble() ?? 0,
  state: json['State'] as String?,
  countryCode: json['CountryCode'] as String?,
  countryName: json['CountryName'] as String?,
  elevation: (json['Elevation'] as num?)?.toDouble() ?? 0,
  size: (json['Size'] as num?)?.toInt() ?? 0,
  transitionAltitude: (json['TransitionAltitude'] as num?)?.toInt() ?? 0,
  hasLandRunway: json['HasLandRunway'] as bool? ?? false,
  hasWaterRunway: json['HasWaterRunway'] as bool? ?? false,
  hasHelipad: json['HasHelipad'] as bool? ?? false,
  isClosed: json['IsClosed'] as bool? ?? false,
  isMilitary: json['IsMilitary'] as bool? ?? false,
  magVar: (json['MagVar'] as num?)?.toDouble() ?? 0,
  hasLights: json['HasLights'] as bool? ?? false,
  lastMetarDate: utcFromJsonNullable(json['LastMETARDate']),
  runways:
      (json['Runways'] as List<dynamic>?)
          ?.map((e) => Runway.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$AirportToJson(_Airport instance) => <String, dynamic>{
  'Id': instance.id,
  'ICAO': instance.icao,
  'IATA': instance.iata,
  'Name': instance.name,
  'City': instance.city,
  'Latitude': instance.latitude,
  'Longitude': instance.longitude,
  'State': instance.state,
  'CountryCode': instance.countryCode,
  'CountryName': instance.countryName,
  'Elevation': instance.elevation,
  'Size': instance.size,
  'TransitionAltitude': instance.transitionAltitude,
  'HasLandRunway': instance.hasLandRunway,
  'HasWaterRunway': instance.hasWaterRunway,
  'HasHelipad': instance.hasHelipad,
  'IsClosed': instance.isClosed,
  'IsMilitary': instance.isMilitary,
  'MagVar': instance.magVar,
  'HasLights': instance.hasLights,
  'LastMETARDate': instance.lastMetarDate?.toIso8601String(),
  'Runways': instance.runways,
};
