import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import '../enums.dart';
import 'aircraft_type.dart';
import 'airport.dart';

part 'aircraft.freezed.dart';
part 'aircraft.g.dart';

@freezed
abstract class Aircraft with _$Aircraft {
  const Aircraft._();
  const factory Aircraft({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Identifier') @Default('') String identifier,
    @JsonKey(name: 'Nickname') String? nickname,
    @JsonKey(name: 'AircraftTypeId') String? aircraftTypeId,
    @JsonKey(name: 'AircraftType') AircraftType? aircraftType,
    @JsonKey(name: 'AircraftStatus') @Default(0) int aircraftStatusCode,
    @JsonKey(name: 'Latitude') @Default(0) double latitude,
    @JsonKey(name: 'Longitude') @Default(0) double longitude,
    @JsonKey(name: 'Heading') @Default(0) double heading,
    @JsonKey(name: 'Altitude') @Default(0) double altitude,
    @JsonKey(name: 'IndicatedSpeed') @Default(0) double indicatedSpeed,
    @JsonKey(name: 'GroundSpeed') @Default(0) double groundSpeed,
    @JsonKey(name: 'fuelTotalGallons') @Default(0) double fuelTotalGallons,
    @JsonKey(name: 'airframeCondition') @Default(0) double airframeCondition,
    @JsonKey(name: 'MustDoMaintenance') @Default(false) bool mustDoMaintenance,
    @JsonKey(name: 'MustDoMaintenanceSoon') @Default(false) bool mustDoMaintenanceSoon,
    @JsonKey(name: 'CurrentAirportId') String? currentAirportId,
    @JsonKey(name: 'CurrentAirport') Airport? currentAirport,
  }) = _Aircraft;

  factory Aircraft.fromJson(Map<String, dynamic> json) => _$AircraftFromJson(json);

  AircraftStatus get status => AircraftStatus.fromCode(aircraftStatusCode);
  bool get isFlying => status == AircraftStatus.flying;
  LatLng get position => LatLng(latitude, longitude);
  double get conditionPercent => airframeCondition * 100;
  double get fuelPercent {
    final cap = aircraftType?.fuelCapacityGallons ?? 0;
    if (cap <= 0) return 0;
    return fuelTotalGallons / cap * 100;
  }
}
