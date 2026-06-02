import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/dashboard_kpis.dart';
import 'package:onairmonitor/features/dashboard/dashboard_screen.dart';
import 'package:onairmonitor/providers/dashboard_providers.dart';

void main() {
  testWidgets('renders KPI values from the provider', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        dashboardProvider.overrideWith((ref) async => const DashboardKpis(
              cash: 305653.63,
              aircraftTotal: 13,
              aircraftFlying: 4,
              employees: 59,
              fbos: 1,
              level: 4,
              xp: 1600,
              xpNeeded: 4000,
            )),
      ],
      child: const MaterialApp(home: Scaffold(body: DashboardScreen())),
    ));
    await tester.pumpAndSettle();

    expect(find.textContaining('305,654'), findsOneWidget); // cash
    expect(find.text('13'), findsOneWidget); // aircraft total
    expect(find.textContaining('Level 4'), findsOneWidget);
  });

  testWidgets('shows error state on failure', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        dashboardProvider.overrideWith((ref) async => throw StateError('boom')),
      ],
      child: const MaterialApp(home: Scaffold(body: DashboardScreen())),
    ));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('dashboardError')), findsOneWidget);
  });
}
