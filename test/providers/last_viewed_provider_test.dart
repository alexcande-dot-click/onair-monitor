import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/data/db/app_database.dart';
import 'package:onairmonitor/data/secure/key_store.dart';
import 'package:onairmonitor/providers/providers.dart';
import 'package:onairmonitor/providers/dashboard_providers.dart';

void main() {
  test('lastViewedProvider reads the active company marker (epoch default)', () async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    await db.upsertAccount(const AccountRow(
        companyId: 'c1', name: 'A', airlineCode: 'A', worldId: 'w'));
    await db.setActiveAccount('c1');

    final container = ProviderContainer(overrides: [
      appDatabaseProvider.overrideWithValue(db),
      keyStoreProvider.overrideWithValue(InMemoryKeyStore()),
    ]);
    addTearDown(container.dispose);
    await container.read(accountManagerProvider).load();
    container.read(activeAccountRevisionProvider.notifier).state++;

    expect(await container.read(lastViewedProvider.future),
        DateTime.fromMillisecondsSinceEpoch(0));

    final t = DateTime.parse('2026-06-03T10:00:00');
    await db.setLastViewedEventTime('c1', t);
    container.invalidate(lastViewedProvider);
    expect(await container.read(lastViewedProvider.future), t);
  });
}
