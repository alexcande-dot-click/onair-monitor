import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

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
    @JsonKey(name: 'Latitude') @Default(0) double latitude,
    @JsonKey(name: 'Longitude') @Default(0) double longitude,
  }) = _Airport;

  factory Airport.fromJson(Map<String, dynamic> json) => _$AirportFromJson(json);

  LatLng get position => LatLng(latitude, longitude);
}
