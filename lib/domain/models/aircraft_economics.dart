import 'package:freezed_annotation/freezed_annotation.dart';

part 'aircraft_economics.freezed.dart';
part 'aircraft_economics.g.dart';

@freezed
abstract class AircraftEconomics with _$AircraftEconomics {
  const factory AircraftEconomics({
    @JsonKey(name: 'HourlyProfit') double? hourlyProfit,
    @JsonKey(name: 'CostHourlyFuel') double? costHourlyFuel,
    @JsonKey(name: 'CostHourlyCrew') double? costHourlyCrew,
    @JsonKey(name: 'CostHourlyTotalMaintenance') double? costHourlyTotalMaintenance,
    @JsonKey(name: 'CostHourlyRentTotal') double? costHourlyRentTotal,
    @JsonKey(name: 'CostWeeklyLease') double? costWeeklyLease,
    @JsonKey(name: 'CostWeeklyOwning') double? costWeeklyOwning,
    @JsonKey(name: 'ProfitHourlyLease') double? profitHourlyLease,
    @JsonKey(name: 'ProfitHourlyOwning') double? profitHourlyOwning,
    @JsonKey(name: 'AverageWeeklyFlightHours') double? averageWeeklyFlightHours,
    @JsonKey(name: 'OperationalPayloadLbs') double? operationalPayloadLbs,
    @JsonKey(name: 'AverageCruiseSpeedKts') double? averageCruiseSpeedKts,
  }) = _AircraftEconomics;

  factory AircraftEconomics.fromJson(Map<String, dynamic> json) =>
      _$AircraftEconomicsFromJson(json);
}
