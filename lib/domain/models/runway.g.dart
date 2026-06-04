// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runway.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Runway _$RunwayFromJson(Map<String, dynamic> json) => _Runway(
  name: json['Name'] as String?,
  magneticHeading: (json['MagneticHeading'] as num?)?.toInt() ?? 0,
  length: (json['Length'] as num?)?.toInt() ?? 0,
  width: (json['Width'] as num?)?.toInt() ?? 0,
  hasIls: json['HasIls'] as bool? ?? false,
  ilsFrequency: (json['IlsFrequency'] as num?)?.toDouble() ?? 0,
  surfaceType: (json['SurfaceType'] as num?)?.toInt() ?? 0,
  approachLights: json['ApproachLights'] as String?,
);

Map<String, dynamic> _$RunwayToJson(_Runway instance) => <String, dynamic>{
  'Name': instance.name,
  'MagneticHeading': instance.magneticHeading,
  'Length': instance.length,
  'Width': instance.width,
  'HasIls': instance.hasIls,
  'IlsFrequency': instance.ilsFrequency,
  'SurfaceType': instance.surfaceType,
  'ApproachLights': instance.approachLights,
};
