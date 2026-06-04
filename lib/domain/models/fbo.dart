import 'package:freezed_annotation/freezed_annotation.dart';
import 'airport.dart';

part 'fbo.freezed.dart';
part 'fbo.g.dart';

@freezed
abstract class Fbo with _$Fbo {
  const Fbo._();
  const factory Fbo({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Name') @Default('') String name,
    @JsonKey(name: 'AirportId') String? airportId,
    @JsonKey(name: 'Airport') Airport? airport,
    @JsonKey(name: 'CargoWeightCapacity') @Default(0) double cargoWeightCapacity,
    @JsonKey(name: 'SleepingCapacity') @Default(0) double sleepingCapacity,
    @JsonKey(name: 'AircraftHangarCapacity') @Default(0) int aircraftHangarCapacity,
    @JsonKey(name: 'AircraftTieDownCapacity') @Default(0) int aircraftTieDownCapacity,
    @JsonKey(name: 'Fuel100LLCapacity') @Default(0) double fuel100LLCapacity,
    @JsonKey(name: 'Fuel100LLQuantity') @Default(0) double fuel100LLQuantity,
    @JsonKey(name: 'Fuel100LLSellPrice') @Default(0) double fuel100LLSellPrice,
    @JsonKey(name: 'AllowFuel100LLSelling') @Default(false) bool allowFuel100LLSelling,
    @JsonKey(name: 'FuelJetCapacity') @Default(0) double fuelJetCapacity,
    @JsonKey(name: 'FuelJetQuantity') @Default(0) double fuelJetQuantity,
    @JsonKey(name: 'FuelJetSellPrice') @Default(0) double fuelJetSellPrice,
    @JsonKey(name: 'AllowFuelJetSelling') @Default(false) bool allowFuelJetSelling,
    @JsonKey(name: 'WorkshopSEP') @Default(false) bool workshopSEP,
    @JsonKey(name: 'WorkshopMEP') @Default(false) bool workshopMEP,
    @JsonKey(name: 'WorkshopTurboProp') @Default(false) bool workshopTurboProp,
    @JsonKey(name: 'WorkshopJet') @Default(false) bool workshopJet,
    @JsonKey(name: 'WorkshopHeavyJet') @Default(false) bool workshopHeavyJet,
    @JsonKey(name: 'WorkshopHelicopter') @Default(false) bool workshopHelicopter,
    @JsonKey(name: 'WorkshopUnderConstruction')
    @Default(false) bool workshopUnderConstruction,
  }) = _Fbo;

  factory Fbo.fromJson(Map<String, dynamic> json) => _$FboFromJson(json);

  bool get sells100LL => allowFuel100LLSelling;
  bool get sellsJet => allowFuelJetSelling;
  bool get sellsFuel => sells100LL || sellsJet;

  List<String> get workshopNames => [
        if (workshopSEP) 'SEP',
        if (workshopMEP) 'MEP',
        if (workshopTurboProp) 'TurboProp',
        if (workshopJet) 'Jet',
        if (workshopHeavyJet) 'Heavy Jet',
        if (workshopHelicopter) 'Helicopter',
      ];

  bool get hasWorkshop => workshopNames.isNotEmpty;
}
