import 'package:freezed_annotation/freezed_annotation.dart';

part 'onair_notification.freezed.dart';
part 'onair_notification.g.dart';

@freezed
abstract class OnairNotification with _$OnairNotification {
  const factory OnairNotification({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Category') @Default(0) int category,
    @JsonKey(name: 'Description') @Default('') String description,
    @JsonKey(name: 'ZuluEventTime') required DateTime eventTime,
    @JsonKey(name: 'IsRead') @Default(false) bool isRead,
    @JsonKey(name: 'AircraftId') String? aircraftId,
    @JsonKey(name: 'PeopleId') String? peopleId,
    @JsonKey(name: 'AirportId') String? airportId,
  }) = _OnairNotification;

  factory OnairNotification.fromJson(Map<String, dynamic> json) =>
      _$OnairNotificationFromJson(json);
}
