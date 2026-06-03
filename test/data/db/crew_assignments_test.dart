import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/data/db/app_database.dart';

void main() {
  late AppDatabase db;
  setUp(() => db = AppDatabase.forTesting(NativeDatabase.memory()));
  tearDown(() => db.close());

  test('assign upserts, read returns map, unassign deletes', () async {
    expect(await db.readCrewAssignments(), isEmpty);
    await db.assignCrew('e1', 'a1');
    await db.assignCrew('e2', 'a2');
    expect(await db.readCrewAssignments(), {'e1': 'a1', 'e2': 'a2'});

    await db.assignCrew('e1', 'a3'); // upsert
    expect((await db.readCrewAssignments())['e1'], 'a3');

    await db.unassignCrew('e1');
    expect(await db.readCrewAssignments(), {'e2': 'a2'});
  });
}
