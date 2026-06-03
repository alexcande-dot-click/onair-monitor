import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/data/db/app_database.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/domain/models/employee.dart';
import 'package:onairmonitor/features/aircraft/aircraft_detail_screen.dart';
import 'package:onairmonitor/features/crew/crew_providers.dart';
import 'package:onairmonitor/providers/providers.dart';

void main() {
  testWidgets('shows assigned crew names and saves a route note', (tester) async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(db.close);
    await db.assignCrew('e1', 'a1');

    await tester.pumpWidget(ProviderScope(
      overrides: [
        appDatabaseProvider.overrideWithValue(db),
        crewAssignmentsProvider.overrideWith((ref) async => {'e1': 'a1'}),
        employeesProvider.overrideWith((ref) async => const [
              Employee(id: 'e1', pseudo: 'Anna'),
            ]),
      ],
      child: const MaterialApp(
        home: AircraftDetailScreen(
          aircraft: Aircraft(id: 'a1', identifier: 'N1', aircraftStatusCode: 0),
        ),
      ),
    ));
    await tester.pumpAndSettle();

    expect(find.text('Anna'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('noteField')), 'Route 941');
    await tester.tap(find.byKey(const Key('saveNote')));
    await tester.pumpAndSettle();
    expect((await db.readAircraftNotes())['a1'], 'Route 941');
  });
}
