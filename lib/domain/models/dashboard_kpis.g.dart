// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_kpis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardKpis _$DashboardKpisFromJson(Map<String, dynamic> json) =>
    _DashboardKpis(
      cash: (json['Cash'] as num?)?.toDouble() ?? 0,
      value: (json['Value'] as num?)?.toDouble() ?? 0,
      assets: (json['Assets'] as num?)?.toDouble() ?? 0,
      returnOnAssets: (json['ReturnOnAssets'] as num?)?.toDouble() ?? 0,
      incomes1Week: (json['Incomes1week'] as num?)?.toDouble() ?? 0,
      incomes2Weeks: (json['Incomes2weeks'] as num?)?.toDouble() ?? 0,
      aircraftTotal: (json['NumberOfAircrafts'] as num?)?.toInt() ?? 0,
      aircraftFlying: (json['NumberOfActiveAircrafts'] as num?)?.toInt() ?? 0,
      missionsActive: (json['NumberOfActivesMissions'] as num?)?.toInt() ?? 0,
      missionsCompleted:
          (json['NumberOfCompletedMissions'] as num?)?.toInt() ?? 0,
      employees: (json['NumberOfEmployees'] as num?)?.toInt() ?? 0,
      fbos: (json['NumberOfFBOs'] as num?)?.toInt() ?? 0,
      level: (json['Level'] as num?)?.toInt() ?? 0,
      xp: (json['XP'] as num?)?.toInt() ?? 0,
      xpNeeded: (json['XPNeeded'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$DashboardKpisToJson(_DashboardKpis instance) =>
    <String, dynamic>{
      'Cash': instance.cash,
      'Value': instance.value,
      'Assets': instance.assets,
      'ReturnOnAssets': instance.returnOnAssets,
      'Incomes1week': instance.incomes1Week,
      'Incomes2weeks': instance.incomes2Weeks,
      'NumberOfAircrafts': instance.aircraftTotal,
      'NumberOfActiveAircrafts': instance.aircraftFlying,
      'NumberOfActivesMissions': instance.missionsActive,
      'NumberOfCompletedMissions': instance.missionsCompleted,
      'NumberOfEmployees': instance.employees,
      'NumberOfFBOs': instance.fbos,
      'Level': instance.level,
      'XP': instance.xp,
      'XPNeeded': instance.xpNeeded,
    };
