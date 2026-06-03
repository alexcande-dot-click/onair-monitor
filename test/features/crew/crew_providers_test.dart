import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/data/db/app_database.dart';
import 'package:onairmonitor/features/crew/crew_providers.dart';
import 'package:onairmonitor/providers/providers.dart';

void main() {
  test('crewAssignmentsProvider reflects the drift table', () async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    await db.assignCrew('e1', 'a1');
    final c = ProviderContainer(overrides: [
      appDatabaseProvider.overrideWithValue(db),
    ]);
    addTearDown(c.dispose);

    expect(await c.read(crewAssignmentsProvider.future), {'e1': 'a1'});

    await db.assignCrew('e2', 'a2');
    c.invalidate(crewAssignmentsProvider);
    expect(await c.read(crewAssignmentsProvider.future), {'e1': 'a1', 'e2': 'a2'});
  });
}
