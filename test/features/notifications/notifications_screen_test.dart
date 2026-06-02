import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/onair_notification.dart';
import 'package:onairmonitor/features/notifications/notifications_screen.dart';
import 'package:onairmonitor/providers/dashboard_providers.dart';

OnairNotification n(String id, String desc, String iso) => OnairNotification(
    id: id, category: 6, description: desc, eventTime: DateTime.parse(iso));

void main() {
  testWidgets('renders rows + Read all enabled when unread exist', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        notificationsProvider.overrideWith((ref) async => [
              n('a', 'Job finished', '2026-06-03T12:00:00'),
              n('b', 'Flight arrived', '2026-06-03T11:00:00'),
            ]),
        lastViewedProvider.overrideWith((ref) async =>
            DateTime.parse('2026-06-03T11:30:00')),
      ],
      child: const MaterialApp(home: Scaffold(body: NotificationsScreen())),
    ));
    await tester.pumpAndSettle();

    expect(find.text('Job finished'), findsOneWidget);
    expect(find.text('Flight arrived'), findsOneWidget);
    final readAll = find.byKey(const Key('readAllButton'));
    expect(readAll, findsOneWidget);
    expect(tester.widget<TextButton>(readAll).onPressed, isNotNull);
  });

  testWidgets('empty state', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        notificationsProvider.overrideWith((ref) async => <OnairNotification>[]),
        lastViewedProvider.overrideWith((ref) async => DateTime(2026)),
      ],
      child: const MaterialApp(home: Scaffold(body: NotificationsScreen())),
    ));
    await tester.pumpAndSettle();
    expect(find.text('No notifications yet'), findsOneWidget);
  });
}
