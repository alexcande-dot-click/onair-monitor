// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Company _$CompanyFromJson(Map<String, dynamic> json) => _Company(
  id: json['Id'] as String,
  name: json['Name'] as String,
  airlineCode: json['AirlineCode'] as String?,
  worldId: json['WorldId'] as String?,
  level: (json['Level'] as num?)?.toInt(),
);

Map<String, dynamic> _$CompanyToJson(_Company instance) => <String, dynamic>{
  'Id': instance.id,
  'Name': instance.name,
  'AirlineCode': instance.airlineCode,
  'WorldId': instance.worldId,
  'Level': instance.level,
};
