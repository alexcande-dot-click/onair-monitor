import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/airport.dart';
import 'package:onairmonitor/domain/models/employee.dart';
import 'package:onairmonitor/features/crew/crew_list_tile.dart';

void main() {
  testWidgets('assignable unassigned shows Unassigned; tap fires', (tester) async {
    var tapped = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CrewListTile(
          employee: const Employee(id: 'e1', pseudo: 'Anna', categoryCode: 2),
          tail: null,
          flagged: true,
          onTap: () => tapped = true,
        ),
      ),
    ));
    expect(find.text('Anna'), findsOneWidget);
    expect(find.textContaining('Unassigned'), findsOneWidget);
    await tester.tap(find.text('Anna'));
    expect(tapped, isTrue);
  });

  testWidgets('mechanic shows home airport, no Unassigned', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CrewListTile(
          employee: const Employee(
              id: 'm', pseudo: 'Stefan', categoryCode: 3,
              homeAirport: Airport(icao: 'EETN')),
          tail: null,
          flagged: false,
          onTap: () {},
        ),
      ),
    ));
    expect(find.textContaining('EETN'), findsOneWidget);
    expect(find.textContaining('Unassigned'), findsNothing);
  });
}
