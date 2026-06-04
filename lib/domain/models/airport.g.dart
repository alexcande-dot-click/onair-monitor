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
);

Map<String, dynamic> _$AirportToJson(_Airport instance) => <String, dynamic>{
  'Id': instance.id,
  'ICAO': instance.icao,
  'IATA': instance.iata,
  'Name': instance.name,
  'City': instance.city,
  'Latitude': instance.latitude,
  'Longitude': instance.longitude,
};
