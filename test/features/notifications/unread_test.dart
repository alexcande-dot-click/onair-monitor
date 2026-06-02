import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/onair_notification.dart';
import 'package:onairmonitor/features/notifications/unread.dart';

OnairNotification n(String id, String iso) =>
    OnairNotification(id: id, eventTime: DateTime.parse(iso), description: id);

void main() {
  test('counts notifications strictly newer than lastViewed', () {
    final items = [
      n('a', '2026-06-02T10:00:00'),
      n('b', '2026-06-02T09:00:00'),
      n('c', '2026-06-01T00:00:00'),
    ];
    final viewed = DateTime.parse('2026-06-02T09:00:00');
    expect(unreadCount(items, viewed), 1); // only 'a'
  });

  test('epoch lastViewed means everything is unread', () {
    final items = [n('a', '2026-06-02T10:00:00')];
    expect(unreadCount(items, DateTime.fromMillisecondsSinceEpoch(0)), 1);
  });
}
