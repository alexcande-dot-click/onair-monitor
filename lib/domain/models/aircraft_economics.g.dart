// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aircraft_economics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AircraftEconomics _$AircraftEconomicsFromJson(
  Map<String, dynamic> json,
) => _AircraftEconomics(
  hourlyProfit: (json['HourlyProfit'] as num?)?.toDouble(),
  costHourlyFuel: (json['CostHourlyFuel'] as num?)?.toDouble(),
  costHourlyCrew: (json['CostHourlyCrew'] as num?)?.toDouble(),
  costHourlyTotalMaintenance: (json['CostHourlyTotalMaintenance'] as num?)
      ?.toDouble(),
  costHourlyRentTotal: (json['CostHourlyRentTotal'] as num?)?.toDouble(),
  costWeeklyLease: (json['CostWeeklyLease'] as num?)?.toDouble(),
  costWeeklyOwning: (json['CostWeeklyOwning'] as num?)?.toDouble(),
  profitHourlyLease: (json['ProfitHourlyLease'] as num?)?.toDouble(),
  profitHourlyOwning: (json['ProfitHourlyOwning'] as num?)?.toDouble(),
  averageWeeklyFlightHours: (json['AverageWeeklyFlightHours'] as num?)
      ?.toDouble(),
  operationalPayloadLbs: (json['OperationalPayloadLbs'] as num?)?.toDouble(),
  averageCruiseSpeedKts: (json['AverageCruiseSpeedKts'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AircraftEconomicsToJson(_AircraftEconomics instance) =>
    <String, dynamic>{
      'HourlyProfit': instance.hourlyProfit,
      'CostHourlyFuel': instance.costHourlyFuel,
      'CostHourlyCrew': instance.costHourlyCrew,
      'CostHourlyTotalMaintenance': instance.costHourlyTotalMaintenance,
      'CostHourlyRentTotal': instance.costHourlyRentTotal,
      'CostWeeklyLease': instance.costWeeklyLease,
      'CostWeeklyOwning': instance.costWeeklyOwning,
      'ProfitHourlyLease': instance.profitHourlyLease,
      'ProfitHourlyOwning': instance.profitHourlyOwning,
      'AverageWeeklyFlightHours': instance.averageWeeklyFlightHours,
      'OperationalPayloadLbs': instance.operationalPayloadLbs,
      'AverageCruiseSpeedKts': instance.averageCruiseSpeedKts,
    };
