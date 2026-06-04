import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/domain/models/aircraft_economics.dart';
import 'package:onairmonitor/features/economics/aircraft_profitability_tab.dart';
import 'package:onairmonitor/features/economics/economics_providers.dart';

void main() {
  testWidgets('lists fleet ranked by hourly profit', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        fleetProfitabilityProvider.overrideWith((ref) async => const [
              (Aircraft(id: '3', identifier: 'N3'), AircraftEconomics(hourlyProfit: 500)),
              (Aircraft(id: '1', identifier: 'N1'), AircraftEconomics(hourlyProfit: 100)),
              (Aircraft(id: '2', identifier: 'N2'), null),
            ]),
      ],
      child: const MaterialApp(home: Scaffold(body: AircraftProfitabilityTab())),
    ));
    await tester.pumpAndSettle();
    expect(find.textContaining('N3'), findsOneWidget);
    expect(find.textContaining('N2'), findsOneWidget);
    expect(find.textContaining('—'), findsWidgets);
  });
}
