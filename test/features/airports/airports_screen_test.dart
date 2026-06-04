import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/features/airports/airports_logic.dart';
import 'package:onairmonitor/features/airports/airports_providers.dart';
import 'package:onairmonitor/features/airports/airports_screen.dart';

void main() {
  testWidgets('renders relevant airports with reason chips', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        relevantAirportsProvider.overrideWith((ref) async => [
              RelevantAirport(
                  icao: 'EETN',
                  name: 'Tallinn',
                  reasons: {AirportReason.fbo, AirportReason.grounded},
                  groundedCount: 2),
            ]),
      ],
      child: const MaterialApp(home: Scaffold(body: AirportsScreen())),
    ));
    await tester.pumpAndSettle();
    expect(find.text('EETN'), findsOneWidget);
    expect(find.textContaining('FBO'), findsOneWidget);
    expect(find.textContaining('Grounded'), findsOneWidget);
  });
}
