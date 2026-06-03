import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/data/db/app_database.dart';

void main() {
  late AppDatabase db;
  setUp(() => db = AppDatabase.forTesting(NativeDatabase.memory()));
  tearDown(() => db.close());

  test('set/upsert, empty clears, delete, read map', () async {
    expect(await db.readAircraftNotes(), isEmpty);
    await db.setAircraftNote('a1', 'Route 941');
    await db.setAircraftNote('a2', 'Cargo run');
    expect(await db.readAircraftNotes(), {'a1': 'Route 941', 'a2': 'Cargo run'});

    await db.setAircraftNote('a1', 'Route 942'); // upsert
    expect((await db.readAircraftNotes())['a1'], 'Route 942');

    await db.setAircraftNote('a1', '   '); // whitespace clears
    expect((await db.readAircraftNotes()).containsKey('a1'), isFalse);

    await db.deleteAircraftNote('a2');
    expect(await db.readAircraftNotes(), isEmpty);
  });
}
