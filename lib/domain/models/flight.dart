import 'package:freezed_annotation/freezed_annotation.dart';
import 'airport.dart';

part 'flight.freezed.dart';
part 'flight.g.dart';

@freezed
abstract class Flight with _$Flight {
  const factory Flight({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'DepartureAirport') Airport? departureAirport,
    @JsonKey(name: 'ArrivalIntendedAirport') Airport? arrivalIntendedAirport,
    @JsonKey(name: 'PAXCount') int? paxCount,
    @JsonKey(name: 'CargosTotalWeight') double? cargosTotalWeight,
    @JsonKey(name: 'IsAI') @Default(false) bool isAI,
  }) = _Flight;

  factory Flight.fromJson(Map<String, dynamic> json) => _$FlightFromJson(json);
}
