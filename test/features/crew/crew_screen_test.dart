import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/domain/models/employee.dart';
import 'package:onairmonitor/features/crew/crew_providers.dart';
import 'package:onairmonitor/features/crew/crew_screen.dart';
import 'package:onairmonitor/features/live_map/live_map_providers.dart';

void main() {
  testWidgets('lists crew and filters by Pilots chip', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        employeesProvider.overrideWith((ref) async => const [
              Employee(id: '1', pseudo: 'Zoe', categoryCode: 1),
              Employee(id: '2', pseudo: 'Anna', categoryCode: 2),
            ]),
        crewAssignmentsProvider.overrideWith((ref) async => <String, String>{}),
        fleetProvider.overrideWith((ref) async => <Aircraft>[]),
      ],
      child: const MaterialApp(home: Scaffold(body: CrewScreen())),
    ));
    await tester.pumpAndSettle();

    expect(find.text('Zoe'), findsOneWidget);
    expect(find.text('Anna'), findsOneWidget);
    expect(find.text('UNASSIGNED'), findsOneWidget); // section header

    await tester.tap(find.widgetWithText(FilterChip, 'Pilots'));
    await tester.pumpAndSettle();
    expect(find.text('Zoe'), findsOneWidget);
    expect(find.text('Anna'), findsNothing);
  });
}
