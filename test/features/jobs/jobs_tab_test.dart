import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/airport.dart';
import 'package:onairmonitor/domain/models/mission.dart';
import 'package:onairmonitor/features/jobs/jobs_providers.dart';
import 'package:onairmonitor/features/jobs/jobs_tab.dart';

void main() {
  testWidgets('shows pending jobs with pay; category chip filters', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        pendingJobsProvider.overrideWith((ref) async => const [
              Mission(id: 'm1', categoryCode: 0, pay: 1000, mainAirport: Airport(icao: 'EETN')),
              Mission(id: 'm2', categoryCode: 1, pay: 2000, mainAirport: Airport(icao: 'ENGM')),
            ]),
        completedJobsProvider.overrideWith((ref) async => const <Mission>[]),
      ],
      child: const MaterialApp(home: Scaffold(body: JobsTab())),
    ));
    await tester.pumpAndSettle();

    expect(find.textContaining('EETN'), findsOneWidget);
    expect(find.textContaining('ENGM'), findsOneWidget);

    await tester.tap(find.widgetWithText(FilterChip, 'Cargo'));
    await tester.pumpAndSettle();
    expect(find.textContaining('EETN'), findsOneWidget);
    expect(find.textContaining('ENGM'), findsNothing);
  });
}
