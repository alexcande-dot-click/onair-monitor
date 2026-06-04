// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CargoType _$CargoTypeFromJson(Map<String, dynamic> json) =>
    _CargoType(name: json['Name'] as String?);

Map<String, dynamic> _$CargoTypeToJson(_CargoType instance) =>
    <String, dynamic>{'Name': instance.name};

_CargoLeg _$CargoLegFromJson(Map<String, dynamic> json) => _CargoLeg(
  weight: (json['Weight'] as num?)?.toDouble() ?? 0,
  cargoType: json['CargoType'] == null
      ? null
      : CargoType.fromJson(json['CargoType'] as Map<String, dynamic>),
  departureAirport: json['DepartureAirport'] == null
      ? null
      : Airport.fromJson(json['DepartureAirport'] as Map<String, dynamic>),
  destinationAirport: json['DestinationAirport'] == null
      ? null
      : Airport.fromJson(json['DestinationAirport'] as Map<String, dynamic>),
  distance: (json['Distance'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$CargoLegToJson(_CargoLeg instance) => <String, dynamic>{
  'Weight': instance.weight,
  'CargoType': instance.cargoType,
  'DepartureAirport': instance.departureAirport,
  'DestinationAirport': instance.destinationAirport,
  'Distance': instance.distance,
};

_CharterLeg _$CharterLegFromJson(Map<String, dynamic> json) => _CharterLeg(
  passengersNumber: (json['PassengersNumber'] as num?)?.toInt() ?? 0,
  departureAirport: json['DepartureAirport'] == null
      ? null
      : Airport.fromJson(json['DepartureAirport'] as Map<String, dynamic>),
  destinationAirport: json['DestinationAirport'] == null
      ? null
      : Airport.fromJson(json['DestinationAirport'] as Map<String, dynamic>),
  distance: (json['Distance'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$CharterLegToJson(_CharterLeg instance) =>
    <String, dynamic>{
      'PassengersNumber': instance.passengersNumber,
      'DepartureAirport': instance.departureAirport,
      'DestinationAirport': instance.destinationAirport,
      'Distance': instance.distance,
    };

_Mission _$MissionFromJson(Map<String, dynamic> json) => _Mission(
  id: json['Id'] as String,
  categoryCode: (json['Category'] as num?)?.toInt() ?? 0,
  state: (json['State'] as num?)?.toInt() ?? 0,
  description: json['Description'] as String? ?? '',
  mainAirport: json['MainAirport'] == null
      ? null
      : Airport.fromJson(json['MainAirport'] as Map<String, dynamic>),
  completionDate: json['CompletionDate'] == null
      ? null
      : DateTime.parse(json['CompletionDate'] as String),
  totalCargoTransported:
      (json['TotalCargoTransported'] as num?)?.toDouble() ?? 0,
  totalPaxTransported: (json['TotalPaxTransported'] as num?)?.toDouble() ?? 0,
  pay: (json['Pay'] as num?)?.toDouble() ?? 0,
  realPay: (json['RealPay'] as num?)?.toDouble() ?? 0,
  payLastMinuteBonus: (json['PayLastMinuteBonus'] as num?)?.toDouble() ?? 0,
  payCompanyBonus: (json['PayCompanyBonus'] as num?)?.toDouble() ?? 0,
  penality: (json['Penality'] as num?)?.toDouble() ?? 0,
  reputationImpact: (json['ReputationImpact'] as num?)?.toDouble() ?? 0,
  xp: (json['XP'] as num?)?.toInt() ?? 0,
  expirationDate: json['ExpirationDate'] == null
      ? null
      : DateTime.parse(json['ExpirationDate'] as String),
  totalDistance: (json['TotalDistance'] as num?)?.toDouble() ?? 0,
  cargos:
      (json['Cargos'] as List<dynamic>?)
          ?.map((e) => CargoLeg.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  charters:
      (json['Charters'] as List<dynamic>?)
          ?.map((e) => CharterLeg.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$MissionToJson(_Mission instance) => <String, dynamic>{
  'Id': instance.id,
  'Category': instance.categoryCode,
  'State': instance.state,
  'Description': instance.description,
  'MainAirport': instance.mainAirport,
  'CompletionDate': instance.completionDate?.toIso8601String(),
  'TotalCargoTransported': instance.totalCargoTransported,
  'TotalPaxTransported': instance.totalPaxTransported,
  'Pay': instance.pay,
  'RealPay': instance.realPay,
  'PayLastMinuteBonus': instance.payLastMinuteBonus,
  'PayCompanyBonus': instance.payCompanyBonus,
  'Penality': instance.penality,
  'ReputationImpact': instance.reputationImpact,
  'XP': instance.xp,
  'ExpirationDate': instance.expirationDate?.toIso8601String(),
  'TotalDistance': instance.totalDistance,
  'Cargos': instance.cargos,
  'Charters': instance.charters,
};
