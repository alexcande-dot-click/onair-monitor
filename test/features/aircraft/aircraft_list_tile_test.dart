import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/core/theme/app_colors.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/features/aircraft/aircraft_list_tile.dart';

void main() {
  testWidgets('shows tail, crew count, route note, colored icon; tap fires',
      (tester) async {
    var tapped = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: AircraftListTile(
          aircraft: const Aircraft(id: 'a1', identifier: 'N8444V', aircraftStatusCode: 3),
          crewCount: 2,
          note: 'Route 941',
          onTap: () => tapped = true,
        ),
      ),
    ));
    expect(find.textContaining('N8444V'), findsOneWidget);
    expect(find.textContaining('Route 941'), findsOneWidget);
    final icon = tester.widget<Icon>(find.byIcon(Icons.flight));
    expect(icon.color, AppColors.electricBlue);
    await tester.tap(find.textContaining('N8444V'));
    expect(tapped, isTrue);
  });

  testWidgets('no note shows No route', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: AircraftListTile(
          aircraft: const Aircraft(id: 'a2', identifier: 'N2', aircraftStatusCode: 0),
          crewCount: 0,
          note: null,
          onTap: () {},
        ),
      ),
    ));
    expect(find.textContaining('No route'), findsOneWidget);
  });
}
