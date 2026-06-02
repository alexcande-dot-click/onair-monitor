import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/onair_notification.dart';
import 'package:onairmonitor/features/notifications/notification_logic.dart';
import 'package:onairmonitor/features/notifications/unread.dart';

OnairNotification n(String id, String iso) =>
    OnairNotification(id: id, eventTime: DateTime.parse(iso), description: id);

void main() {
  final items = [
    n('c', '2026-06-03T12:00:00'),
    n('a', '2026-06-03T10:00:00'),
    n('b', '2026-06-03T11:00:00'),
  ];

  test('selectNewNotifications returns items after lastPushed, ascending', () {
    final out = selectNewNotifications(items, DateTime.parse('2026-06-03T10:30:00'));
    expect(out.map((e) => e.id), ['b', 'c']);
  });

  test('boundary: equal timestamp is excluded', () {
    final out = selectNewNotifications(items, DateTime.parse('2026-06-03T12:00:00'));
    expect(out, isEmpty);
  });

  test('latestEventTime returns max or epoch when empty', () {
    expect(latestEventTime(items), DateTime.parse('2026-06-03T12:00:00'));
    expect(latestEventTime([]), DateTime.fromMillisecondsSinceEpoch(0));
  });

  test('Read all semantics: unread is zero after marking to latest', () {
    expect(unreadCount(items, latestEventTime(items)), 0);
  });
}
