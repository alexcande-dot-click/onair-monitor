import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/features/aircraft/aircraft_providers.dart';
import 'package:onairmonitor/features/aircraft/aircraft_screen.dart';
import 'package:onairmonitor/features/crew/crew_providers.dart';
import 'package:onairmonitor/features/live_map/live_map_providers.dart';

void main() {
  testWidgets('lists aircraft, filters by Flying chip', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        fleetProvider.overrideWith((ref) async => const [
              Aircraft(id: '1', identifier: 'N1', aircraftStatusCode: 3),
              Aircraft(id: '2', identifier: 'N2', aircraftStatusCode: 0),
            ]),
        aircraftNotesProvider.overrideWith((ref) async => <String, String>{}),
        crewAssignmentsProvider.overrideWith((ref) async => <String, String>{}),
      ],
      child: const MaterialApp(home: Scaffold(body: AircraftScreen())),
    ));
    await tester.pumpAndSettle();

    expect(find.text('NO ROUTE'), findsOneWidget);
    expect(find.textContaining('N1'), findsOneWidget);
    expect(find.textContaining('N2'), findsOneWidget);

    await tester.tap(find.widgetWithText(FilterChip, 'Flying'));
    await tester.pumpAndSettle();
    expect(find.textContaining('N1'), findsOneWidget);
    expect(find.textContaining('N2'), findsNothing);
  });
}
