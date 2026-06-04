// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fbo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Fbo _$FboFromJson(Map<String, dynamic> json) => _Fbo(
  id: json['Id'] as String,
  name: json['Name'] as String? ?? '',
  airportId: json['AirportId'] as String?,
  airport: json['Airport'] == null
      ? null
      : Airport.fromJson(json['Airport'] as Map<String, dynamic>),
  cargoWeightCapacity: (json['CargoWeightCapacity'] as num?)?.toDouble() ?? 0,
  sleepingCapacity: (json['SleepingCapacity'] as num?)?.toDouble() ?? 0,
  aircraftHangarCapacity:
      (json['AircraftHangarCapacity'] as num?)?.toInt() ?? 0,
  aircraftTieDownCapacity:
      (json['AircraftTieDownCapacity'] as num?)?.toInt() ?? 0,
  fuel100LLCapacity: (json['Fuel100LLCapacity'] as num?)?.toDouble() ?? 0,
  fuel100LLQuantity: (json['Fuel100LLQuantity'] as num?)?.toDouble() ?? 0,
  fuel100LLSellPrice: (json['Fuel100LLSellPrice'] as num?)?.toDouble() ?? 0,
  allowFuel100LLSelling: json['AllowFuel100LLSelling'] as bool? ?? false,
  fuelJetCapacity: (json['FuelJetCapacity'] as num?)?.toDouble() ?? 0,
  fuelJetQuantity: (json['FuelJetQuantity'] as num?)?.toDouble() ?? 0,
  fuelJetSellPrice: (json['FuelJetSellPrice'] as num?)?.toDouble() ?? 0,
  allowFuelJetSelling: json['AllowFuelJetSelling'] as bool? ?? false,
  workshopSEP: json['WorkshopSEP'] as bool? ?? false,
  workshopMEP: json['WorkshopMEP'] as bool? ?? false,
  workshopTurboProp: json['WorkshopTurboProp'] as bool? ?? false,
  workshopJet: json['WorkshopJet'] as bool? ?? false,
  workshopHeavyJet: json['WorkshopHeavyJet'] as bool? ?? false,
  workshopHelicopter: json['WorkshopHelicopter'] as bool? ?? false,
  workshopUnderConstruction:
      json['WorkshopUnderConstruction'] as bool? ?? false,
);

Map<String, dynamic> _$FboToJson(_Fbo instance) => <String, dynamic>{
  'Id': instance.id,
  'Name': instance.name,
  'AirportId': instance.airportId,
  'Airport': instance.airport,
  'CargoWeightCapacity': instance.cargoWeightCapacity,
  'SleepingCapacity': instance.sleepingCapacity,
  'AircraftHangarCapacity': instance.aircraftHangarCapacity,
  'AircraftTieDownCapacity': instance.aircraftTieDownCapacity,
  'Fuel100LLCapacity': instance.fuel100LLCapacity,
  'Fuel100LLQuantity': instance.fuel100LLQuantity,
  'Fuel100LLSellPrice': instance.fuel100LLSellPrice,
  'AllowFuel100LLSelling': instance.allowFuel100LLSelling,
  'FuelJetCapacity': instance.fuelJetCapacity,
  'FuelJetQuantity': instance.fuelJetQuantity,
  'FuelJetSellPrice': instance.fuelJetSellPrice,
  'AllowFuelJetSelling': instance.allowFuelJetSelling,
  'WorkshopSEP': instance.workshopSEP,
  'WorkshopMEP': instance.workshopMEP,
  'WorkshopTurboProp': instance.workshopTurboProp,
  'WorkshopJet': instance.workshopJet,
  'WorkshopHeavyJet': instance.workshopHeavyJet,
  'WorkshopHelicopter': instance.workshopHelicopter,
  'WorkshopUnderConstruction': instance.workshopUnderConstruction,
};
