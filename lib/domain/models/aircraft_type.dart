import 'package:freezed_annotation/freezed_annotation.dart';

part 'aircraft_type.freezed.dart';
part 'aircraft_type.g.dart';

@freezed
abstract class AircraftClass with _$AircraftClass {
  const factory AircraftClass({
    @JsonKey(name: 'ShortName') String? shortName,
    @JsonKey(name: 'Name') String? name,
  }) = _AircraftClass;

  factory AircraftClass.fromJson(Map<String, dynamic> json) =>
      _$AircraftClassFromJson(json);
}

@freezed
abstract class AircraftType with _$AircraftType {
  const factory AircraftType({
    @JsonKey(name: 'DisplayName') String? displayName,
    @JsonKey(name: 'TypeName') String? typeName,
    @JsonKey(name: 'AircraftClass') AircraftClass? aircraftClass,
    @JsonKey(name: 'FuelTotalCapacityInGallons') @Default(0) double fuelCapacityGallons,
    @JsonKey(name: 'seats') @Default(0) int seats,
    @JsonKey(name: 'needsCopilot') @Default(false) bool needsCopilot,
  }) = _AircraftType;

  factory AircraftType.fromJson(Map<String, dynamic> json) =>
      _$AircraftTypeFromJson(json);
}
