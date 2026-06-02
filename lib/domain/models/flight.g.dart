// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Flight _$FlightFromJson(Map<String, dynamic> json) => _Flight(
  id: json['Id'] as String,
  departureAirport: json['DepartureAirport'] == null
      ? null
      : Airport.fromJson(json['DepartureAirport'] as Map<String, dynamic>),
  arrivalIntendedAirport: json['ArrivalIntendedAirport'] == null
      ? null
      : Airport.fromJson(
          json['ArrivalIntendedAirport'] as Map<String, dynamic>,
        ),
  paxCount: (json['PAXCount'] as num?)?.toInt(),
  cargosTotalWeight: (json['CargosTotalWeight'] as num?)?.toDouble(),
  isAI: json['IsAI'] as bool? ?? false,
);

Map<String, dynamic> _$FlightToJson(_Flight instance) => <String, dynamic>{
  'Id': instance.id,
  'DepartureAirport': instance.departureAirport,
  'ArrivalIntendedAirport': instance.arrivalIntendedAirport,
  'PAXCount': instance.paxCount,
  'CargosTotalWeight': instance.cargosTotalWeight,
  'IsAI': instance.isAI,
};
