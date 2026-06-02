import 'package:dio/dio.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:onairmonitor/data/api/onair_api_client.dart';
import 'package:onairmonitor/data/db/app_database.dart';
import 'package:onairmonitor/data/repositories/notifications_repository.dart';
import 'package:onairmonitor/data/secure/key_store.dart';
import 'package:onairmonitor/features/notifications/push_builder.dart';
import 'package:onairmonitor/services/notification_daemon.dart';

void main() {
  test('pushes only new items, advances marker, skips failing company', () async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(db.close);
    await db.upsertAccount(const AccountRow(
        companyId: 'c1', name: 'Air Baltic', airlineCode: 'A', worldId: 'w'));
    await db.upsertAccount(const AccountRow(
        companyId: 'c2', name: 'Sky', airlineCode: 'S', worldId: 'w'));
    await db.setLastPushedEventTime('c1', DateTime.parse('2026-06-03T10:30:00'));

    final keys = InMemoryKeyStore();
    await keys.write('c1', 'k1');
    await keys.write('c2', 'k2');

    final dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    final adapter = DioAdapter(dio: dio);
    adapter.onGet('/company/c1/notifications',
        (s) => s.reply(200, {'Content': [
              {'Id': 'old', 'Category': 0, 'Description': 'old', 'ZuluEventTime': '2026-06-03T10:00:00'},
              {'Id': 'new', 'Category': 6, 'Description': 'new', 'ZuluEventTime': '2026-06-03T11:00:00'},
            ]}),
        queryParameters: {'oa-apikey': 'k1'});
    adapter.onGet('/company/c2/notifications',
        (s) => s.reply(200, {'Error': 'bad key'}),
        queryParameters: {'oa-apikey': 'k2'});

    final posted = <PushItem>[];
    await NotificationDaemon.run(
      db: db,
      keys: keys,
      repoFor: (apiKey) =>
          NotificationsRepository(OnAirApiClient(dio, apiKeyResolver: () => apiKey)),
      post: (p) async => posted.add(p),
    );

    expect(posted.length, 1);
    expect(posted.single.body, 'new');
    expect(posted.single.companyId, 'c1');
    expect(await db.lastPushedEventTime('c1'), DateTime.parse('2026-06-03T11:00:00'));
    expect(await db.lastPushedEventTime('c2'), isNull);
  });
}
