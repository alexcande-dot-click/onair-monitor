import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/domain/models/aircraft_type.dart';
import 'package:onairmonitor/domain/models/airport.dart';
import 'package:onairmonitor/domain/models/flight.dart';
import 'package:onairmonitor/features/live_map/boarding_pass_sheet.dart';

void main() {
  const aircraft = Aircraft(
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

  testWidgets('shows route, registration, and a working close button',
      (tester) async {
    var closed = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: BoardingPassSheet(
          aircraft: aircraft,
          flight: const Flight(
            id: 'f',
            departureAirport: Airport(icao: 'EETN'),
            arrivalIntendedAirport: Airport(icao: 'ENGM'),
            paxCount: 70,
          ),
          onClose: () => closed = true,
        ),
      ),
    ));

    expect(find.text('N8444V'), findsNothing); // it's embedded in the header text
    expect(find.textContaining('N8444V'), findsOneWidget);
    expect(find.text('EETN'), findsOneWidget);
    expect(find.text('ENGM'), findsOneWidget);
    expect(find.text('DHC Q400'), findsOneWidget);

    await tester.tap(find.byKey(const Key('closeBoardingPass')));
    expect(closed, isTrue);
  });

  testWidgets('no flight => shows No active route', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: BoardingPassSheet(aircraft: aircraft, flight: null, onClose: () {}),
      ),
    ));
    expect(find.text('No active route'), findsOneWidget);
  });
}
