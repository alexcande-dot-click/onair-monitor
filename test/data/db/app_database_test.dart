import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/data/db/app_database.dart';

void main() {
  late AppDatabase db;

  setUp(() => db = AppDatabase.forTesting(NativeDatabase.memory()));
  tearDown(() => db.close());

  test('insert + read accounts, single active', () async {
    await db.upsertAccount(const AccountRow(
        companyId: 'c1', name: 'Air Baltic', airlineCode: 'BTIC', worldId: 'w1'));
    await db.upsertAccount(const AccountRow(
        companyId: 'c2', name: 'Sky Co', airlineCode: 'SKY', worldId: 'w1'));
    await db.setActiveAccount('c2');

    final all = await db.allAccounts();
    expect(all.map((a) => a.companyId), containsAll(['c1', 'c2']));
    expect((await db.activeAccount())!.companyId, 'c2');

    await db.setActiveAccount('c1');
    expect((await db.activeAccount())!.companyId, 'c1');
  });

  test('notification markers default to epoch and round-trip', () async {
    expect(await db.lastViewedEventTime('c1'),
        DateTime.fromMillisecondsSinceEpoch(0));
    final t = DateTime.parse('2026-06-02T10:25:21.187');
    await db.setLastViewedEventTime('c1', t);
    expect(await db.lastViewedEventTime('c1'), t);
  });

  test('deleting an account clears active if it was active', () async {
    await db.upsertAccount(const AccountRow(
        companyId: 'c1', name: 'A', airlineCode: 'A', worldId: 'w'));
    await db.setActiveAccount('c1');
    await db.deleteAccount('c1');
    expect(await db.activeAccount(), isNull);
  });
}
