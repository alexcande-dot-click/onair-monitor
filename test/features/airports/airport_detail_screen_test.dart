import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/airport.dart';
import 'package:onairmonitor/domain/models/runway.dart';
import 'package:onairmonitor/features/airports/airport_detail_screen.dart';
import 'package:onairmonitor/features/airports/airports_providers.dart';

void main() {
  testWidgets('renders identity + runways', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        airportProvider('EETN').overrideWith((ref) async => const Airport(
              icao: 'EETN', iata: 'TLL', name: 'Tallinn', city: 'Tallinn',
              countryName: 'Estonia', size: 5,
              runways: [Runway(name: '08', magneticHeading: 81, length: 10042)],
            )),
      ],
      child: const MaterialApp(home: AirportDetailScreen(icao: 'EETN')),
    ));
    await tester.pumpAndSettle();
    expect(find.textContaining('EETN'), findsWidgets);
    expect(find.textContaining('Tallinn'), findsWidgets);
    expect(find.textContaining('08'), findsOneWidget);
  });

  testWidgets('null airport shows not found', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        airportProvider('QQQQ').overrideWith((ref) async => null),
      ],
      child: const MaterialApp(home: AirportDetailScreen(icao: 'QQQQ')),
    ));
    await tester.pumpAndSettle();
    expect(find.textContaining('not found'), findsOneWidget);
  });
}
