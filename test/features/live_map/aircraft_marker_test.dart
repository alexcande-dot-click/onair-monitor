import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/features/live_map/aircraft_marker.dart';

void main() {
  testWidgets('renders a tappable rotated icon', (tester) async {
    var tapped = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: AircraftMarker(
          aircraft: const Aircraft(id: 'a', aircraftStatusCode: 3, heading: 90),
          onTap: () => tapped = true,
        ),
      ),
    ));
    expect(find.byIcon(Icons.flight), findsOneWidget);
    expect(find.byType(Transform), findsWidgets);
    await tester.tap(find.byIcon(Icons.flight));
    expect(tapped, isTrue);
  });
}
