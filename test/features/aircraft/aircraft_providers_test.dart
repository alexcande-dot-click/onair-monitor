import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/data/db/app_database.dart';
import 'package:onairmonitor/features/aircraft/aircraft_providers.dart';
import 'package:onairmonitor/providers/providers.dart';

void main() {
  test('aircraftNotesProvider reflects the drift table', () async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    await db.setAircraftNote('a1', 'Route 1');
    final c = ProviderContainer(overrides: [
      appDatabaseProvider.overrideWithValue(db),
    ]);
    addTearDown(c.dispose);

    expect(await c.read(aircraftNotesProvider.future), {'a1': 'Route 1'});

    await db.setAircraftNote('a2', 'Route 2');
    c.invalidate(aircraftNotesProvider);
    expect(await c.read(aircraftNotesProvider.future), {'a1': 'Route 1', 'a2': 'Route 2'});
  });
}
