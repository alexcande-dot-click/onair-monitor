// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onair_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OnairNotification _$OnairNotificationFromJson(Map<String, dynamic> json) =>
    _OnairNotification(
      id: json['Id'] as String,
      category: (json['Category'] as num?)?.toInt() ?? 0,
      description: json['Description'] as String? ?? '',
      eventTime: utcFromJson(json['ZuluEventTime']),
      isRead: json['IsRead'] as bool? ?? false,
      aircraftId: json['AircraftId'] as String?,
      peopleId: json['PeopleId'] as String?,
      airportId: json['AirportId'] as String?,
    );

Map<String, dynamic> _$OnairNotificationToJson(_OnairNotification instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Category': instance.category,
      'Description': instance.description,
      'ZuluEventTime': instance.eventTime.toIso8601String(),
      'IsRead': instance.isRead,
      'AircraftId': instance.aircraftId,
      'PeopleId': instance.peopleId,
      'AirportId': instance.airportId,
    };
