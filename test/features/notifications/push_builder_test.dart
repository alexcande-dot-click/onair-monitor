import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/onair_notification.dart';
import 'package:onairmonitor/features/notifications/push_builder.dart';

OnairNotification n(String id, String desc) =>
    OnairNotification(id: id, eventTime: DateTime(2026, 6, 3), description: desc);

void main() {
  List<OnairNotification> many(int count) =>
      [for (var i = 0; i < count; i++) n('$i', 'event $i')];

  test('under cap: all individual, correct title/body/company', () {
    final p = buildPushes(many(3), companyId: 'c1', companyName: 'Air Baltic');
    expect(p.length, 3);
    expect(p.first.title, 'OnAir Monitor – Air Baltic');
    expect(p.first.body, 'event 0');
    expect(p.first.companyId, 'c1');
  });

  test('over cap: 5 individual + 1 summary', () {
    final p = buildPushes(many(8), companyId: 'c1', companyName: 'Air Baltic');
    expect(p.length, 6);
    expect(p.last.body, '+3 more');
    expect(p.last.title, 'OnAir Monitor – Air Baltic');
  });

  test('empty input: no pushes', () {
    expect(buildPushes(const [], companyId: 'c1', companyName: 'X'), isEmpty);
  });
}
