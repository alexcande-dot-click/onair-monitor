import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/features/live_map/live_map_providers.dart';
import 'package:onairmonitor/features/live_map/live_map_screen.dart';

void main() {
  testWidgets('builds with an empty fleet and shows the grounded toggle',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        fleetProvider.overrideWith((ref) async => <Aircraft>[]),
      ],
      child: const MaterialApp(home: Scaffold(body: LiveMapScreen())),
    ));
    await tester.pump(); // resolve the fleet future

    expect(find.byKey(const Key('groundedToggle')), findsOneWidget);

    // Dispose the tree so the periodic timers are cancelled (no pending timer).
    await tester.pumpWidget(const SizedBox());
  });
}
