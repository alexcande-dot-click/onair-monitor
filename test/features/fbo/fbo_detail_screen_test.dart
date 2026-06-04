import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/airport.dart';
import 'package:onairmonitor/domain/models/fbo.dart';
import 'package:onairmonitor/features/fbo/fbo_detail_screen.dart';

void main() {
  testWidgets('shows fuel, parking, and workshop chips', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: FboDetailScreen(
        fbo: Fbo(
          id: 'f1',
          name: 'airBaltic 01',
          airport: Airport(icao: 'EETN', name: 'Tallinn'),
          fuel100LLCapacity: 1000,
          fuel100LLQuantity: 250,
          allowFuel100LLSelling: true,
          aircraftHangarCapacity: 3,
          workshopSEP: true,
          workshopJet: true,
        ),
      ),
    ));
    await tester.pumpAndSettle();

    expect(find.textContaining('EETN'), findsOneWidget);
    expect(find.text('Fuel'), findsOneWidget);
    expect(find.text('Parking'), findsOneWidget);
    expect(find.text('SEP'), findsOneWidget);
    expect(find.text('Jet'), findsOneWidget);
  });

  testWidgets('no workshops shows None', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: FboDetailScreen(
        fbo: Fbo(id: 'f2', name: 'Empty', airport: Airport(icao: 'XXXX')),
      ),
    ));
    await tester.pumpAndSettle();
    expect(find.text('None'), findsOneWidget);
  });
}
