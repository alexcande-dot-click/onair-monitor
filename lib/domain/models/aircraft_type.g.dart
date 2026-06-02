// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aircraft_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AircraftClass _$AircraftClassFromJson(Map<String, dynamic> json) =>
    _AircraftClass(
      shortName: json['ShortName'] as String?,
      name: json['Name'] as String?,
    );

Map<String, dynamic> _$AircraftClassToJson(_AircraftClass instance) =>
    <String, dynamic>{'ShortName': instance.shortName, 'Name': instance.name};

_AircraftType _$AircraftTypeFromJson(Map<String, dynamic> json) =>
    _AircraftType(
      displayName: json['DisplayName'] as String?,
      typeName: json['TypeName'] as String?,
      aircraftClass: json['AircraftClass'] == null
          ? null
          : AircraftClass.fromJson(
              json['AircraftClass'] as Map<String, dynamic>,
            ),
      fuelCapacityGallons:
          (json['FuelTotalCapacityInGallons'] as num?)?.toDouble() ?? 0,
      seats: (json['seats'] as num?)?.toInt() ?? 0,
      needsCopilot: json['needsCopilot'] as bool? ?? false,
    );

Map<String, dynamic> _$AircraftTypeToJson(_AircraftType instance) =>
    <String, dynamic>{
      'DisplayName': instance.displayName,
      'TypeName': instance.typeName,
      'AircraftClass': instance.aircraftClass,
      'FuelTotalCapacityInGallons': instance.fuelCapacityGallons,
      'seats': instance.seats,
      'needsCopilot': instance.needsCopilot,
    };
