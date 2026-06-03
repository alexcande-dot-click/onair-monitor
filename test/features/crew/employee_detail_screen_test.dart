import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/data/db/app_database.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/domain/models/employee.dart';
import 'package:onairmonitor/features/crew/employee_detail_screen.dart';
import 'package:onairmonitor/features/live_map/live_map_providers.dart';
import 'package:onairmonitor/providers/providers.dart';

void main() {
  testWidgets('assignable shows assign control; mechanic does not', (tester) async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(db.close);

    Widget host(Employee e) => ProviderScope(
          overrides: [
            appDatabaseProvider.overrideWithValue(db),
            fleetProvider.overrideWith((ref) async => const [
                  Aircraft(id: 'a1', identifier: 'N1'),
                ]),
          ],
          child: MaterialApp(home: EmployeeDetailScreen(employee: e)),
        );

    await tester.pumpWidget(host(const Employee(id: 'e1', pseudo: 'Anna', categoryCode: 2)));
    await tester.pumpAndSettle();
    expect(find.text('Anna'), findsOneWidget);
    expect(find.byKey(const Key('assignButton')), findsOneWidget);

    await tester.pumpWidget(host(const Employee(id: 'm', pseudo: 'Stefan', categoryCode: 3)));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('assignButton')), findsNothing);
  });
}
