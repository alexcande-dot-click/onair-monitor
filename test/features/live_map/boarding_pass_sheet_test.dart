import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/domain/models/aircraft_type.dart';
import 'package:onairmonitor/domain/models/airport.dart';
import 'package:onairmonitor/domain/models/flight.dart';
import 'package:onairmonitor/features/live_map/boarding_pass_sheet.dart';

void main() {
  const flying = Aircraft(
    id: 'a',
    identifier: 'N8444V',
    aircraftStatusCode: 3,
    altitude: 35000,
    groundSpeed: 450,
    heading: 263,
    fuelTotalGallons: 3850,
    airframeCondition: 0.96,
    aircraftType: AircraftType(displayName: 'DHC Q400', fuelCapacityGallons: 7700),
  );

  Widget host(Widget child) => MaterialApp(home: Scaffold(body: child));

  testWidgets('flying with route shows origin/dest + working close', (tester) async {
    var closed = false;
    await tester.pumpWidget(host(BoardingPassSheet(
      aircraft: flying,
      flight: const AsyncData<Flight?>(Flight(
        id: 'f',
        departureAirport: Airport(icao: 'EETN'),
        arrivalIntendedAirport: Airport(icao: 'ENGM'),
        paxCount: 70,
      )),
      onClose: () => closed = true,
    )));

    expect(find.textContaining('N8444V'), findsOneWidget);
    expect(find.text('EETN'), findsOneWidget);
    expect(find.text('ENGM'), findsOneWidget);
    expect(find.text('DHC Q400'), findsOneWidget);

    await tester.tap(find.byKey(const Key('closeBoardingPass')));
    expect(closed, isTrue);
  });

  testWidgets('flying while loading shows a spinner', (tester) async {
    await tester.pumpWidget(host(const BoardingPassSheet(
      aircraft: flying,
      flight: AsyncLoading<Flight?>(),
      onClose: _noop,
    )));
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('grounded aircraft shows Parked at, never a route', (tester) async {
    await tester.pumpWidget(host(const BoardingPassSheet(
      aircraft: Aircraft(
        id: 'g',
        identifier: 'N1',
        aircraftStatusCode: 0,
        currentAirport: Airport(icao: 'EETN'),
      ),
      flight: AsyncData<Flight?>(null),
      onClose: _noop,
    )));
    expect(find.text('Parked at EETN'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsNothing);
  });
}

void _noop() {}
