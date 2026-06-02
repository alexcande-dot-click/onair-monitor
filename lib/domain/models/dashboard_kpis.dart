import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_kpis.freezed.dart';
part 'dashboard_kpis.g.dart';

@freezed
abstract class DashboardKpis with _$DashboardKpis {
  const factory DashboardKpis({
    @JsonKey(name: 'Cash') @Default(0) double cash,
    @JsonKey(name: 'Value') @Default(0) double value,
    @JsonKey(name: 'Assets') @Default(0) double assets,
    @JsonKey(name: 'ReturnOnAssets') @Default(0) double returnOnAssets,
    @JsonKey(name: 'Incomes1week') @Default(0) double incomes1Week,
    @JsonKey(name: 'Incomes2weeks') @Default(0) double incomes2Weeks,
    @JsonKey(name: 'NumberOfAircrafts') @Default(0) int aircraftTotal,
    @JsonKey(name: 'NumberOfActiveAircrafts') @Default(0) int aircraftFlying,
    @JsonKey(name: 'NumberOfActivesMissions') @Default(0) int missionsActive,
    @JsonKey(name: 'NumberOfCompletedMissions') @Default(0) int missionsCompleted,
    @JsonKey(name: 'NumberOfEmployees') @Default(0) int employees,
    @JsonKey(name: 'NumberOfFBOs') @Default(0) int fbos,
    @JsonKey(name: 'Level') @Default(0) int level,
    @JsonKey(name: 'XP') @Default(0) int xp,
    @JsonKey(name: 'XPNeeded') @Default(0) int xpNeeded,
  }) = _DashboardKpis;

  factory DashboardKpis.fromJson(Map<String, dynamic> json) =>
      _$DashboardKpisFromJson(json);
}
