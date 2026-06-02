import '../../domain/models/onair_notification.dart';

/// Items strictly newer than [lastPushed], oldest-first (so pushes post in order).
List<OnairNotification> selectNewNotifications(
  List<OnairNotification> all,
  DateTime lastPushed,
) {
  final out = all.where((n) => n.eventTime.isAfter(lastPushed)).toList()
    ..sort((a, b) => a.eventTime.compareTo(b.eventTime));
  return out;
}

/// Max event time, or epoch when [all] is empty.
DateTime latestEventTime(List<OnairNotification> all) {
  if (all.isEmpty) return DateTime.fromMillisecondsSinceEpoch(0);
  return all.map((n) => n.eventTime).reduce((a, b) => a.isAfter(b) ? a : b);
}
