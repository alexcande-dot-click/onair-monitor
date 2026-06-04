import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import '../../core/json/utc.dart';
import 'runway.dart';

part 'airport.freezed.dart';
part 'airport.g.dart';

@freezed
abstract class Airport with _$Airport {
  const Airport._();
  const factory Airport({
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'ICAO') String? icao,
    @JsonKey(name: 'IATA') String? iata,
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'City') String? city,
    @JsonKey(name: 'Latitude') @Default(0) double latitude,
    @JsonKey(name: 'Longitude') @Default(0) double longitude,
    @JsonKey(name: 'State') String? state,
    @JsonKey(name: 'CountryCode') String? countryCode,
    @JsonKey(name: 'CountryName') String? countryName,
    @JsonKey(name: 'Elevation') @Default(0) double elevation,
    @JsonKey(name: 'Size') @Default(0) int size,
    @JsonKey(name: 'TransitionAltitude') @Default(0) int transitionAltitude,
    @JsonKey(name: 'HasLandRunway') @Default(false) bool hasLandRunway,
    @JsonKey(name: 'HasWaterRunway') @Default(false) bool hasWaterRunway,
    @JsonKey(name: 'HasHelipad') @Default(false) bool hasHelipad,
    @JsonKey(name: 'IsClosed') @Default(false) bool isClosed,
    @JsonKey(name: 'IsMilitary') @Default(false) bool isMilitary,
    @JsonKey(name: 'MagVar') @Default(0) double magVar,
    @JsonKey(name: 'HasLights') @Default(false) bool hasLights,
    @JsonKey(name: 'LastMETARDate', fromJson: utcFromJsonNullable) DateTime? lastMetarDate,
    @JsonKey(name: 'Runways') @Default([]) List<Runway> runways,
  }) = _Airport;

  factory Airport.fromJson(Map<String, dynamic> json) => _$AirportFromJson(json);

  LatLng get position => LatLng(latitude, longitude);
}
