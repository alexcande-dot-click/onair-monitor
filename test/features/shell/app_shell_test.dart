import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/data/db/app_database.dart';
import 'package:onairmonitor/features/shell/app_shell.dart';
import 'package:onairmonitor/providers/providers.dart';
import 'package:onairmonitor/providers/dashboard_providers.dart';

void main() {
  testWidgets('shell shows title, tab name, and a bell with unread badge',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        appDatabaseProvider
            .overrideWithValue(AppDatabase.forTesting(NativeDatabase.memory())),
        unreadCountProvider.overrideWith((ref) async => 3),
      ],
      child: MaterialApp(
        home: AppShell(
          title: 'Dashboard',
          onOpenNotifications: () {},
          body: const Center(child: Text('BODY')),
        ),
      ),
    ));
    await tester.pumpAndSettle();

    expect(find.text('OnAir Monitor'), findsWidgets);
    expect(find.text('Dashboard'), findsWidgets);
    expect(find.text('3'), findsOneWidget); // unread badge
    expect(find.text('BODY'), findsOneWidget);

    // opening the drawer reveals navigation
    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();
    expect(find.text('Live Map'), findsOneWidget); // a future tab is listed
  });
}
