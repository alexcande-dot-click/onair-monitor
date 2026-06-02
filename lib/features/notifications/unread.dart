import '../../domain/models/onair_notification.dart';

/// Count notifications strictly newer than [lastViewed].
int unreadCount(List<OnairNotification> items, DateTime lastViewed) =>
    items.where((n) => n.eventTime.isAfter(lastViewed)).length;
