import 'package:dio/dio.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:onairmonitor/core/error/api_failure.dart';
import 'package:onairmonitor/data/api/onair_api_client.dart';
import 'package:onairmonitor/data/db/app_database.dart';
import 'package:onairmonitor/data/repositories/company_repository.dart';
import 'package:onairmonitor/data/secure/key_store.dart';
import 'package:onairmonitor/services/account_manager.dart';

void main() {
  late AppDatabase db;
  late InMemoryKeyStore keys;
  late DioAdapter adapter;
  late AccountManager mgr;

  setUp(() {
    db = AppDatabase.forTesting(NativeDatabase.memory());
    keys = InMemoryKeyStore();
    final dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    adapter = DioAdapter(dio: dio);
    final client = OnAirApiClient(dio, apiKeyResolver: () => mgr.activeApiKey);
    mgr = AccountManager(db: db, keys: keys, companyRepo: CompanyRepository(client));
  });
  tearDown(() => db.close());

  test('addAccount validates, persists, becomes active, resolves key', () async {
    adapter.onGet('/company/c1',
        (s) => s.reply(200, {'Content': {'Id': 'c1', 'Name': 'Air Baltic', 'AirlineCode': 'BTIC', 'WorldId': 'w'}}),
        queryParameters: {'oa-apikey': 'GOODKEY'});

    await mgr.addAccount(companyId: 'c1', apiKey: 'GOODKEY');

    expect(mgr.activeApiKey, 'GOODKEY');
    expect((await mgr.activeAccount())!.name, 'Air Baltic');
    expect(await keys.read('c1'), 'GOODKEY');
  });

  test('addAccount throws on invalid key and persists nothing', () async {
    adapter.onGet('/company/cBad',
        (s) => s.reply(200, {'Error': 'Please provide your OnAir API key oa-apikey.'}),
        queryParameters: {'oa-apikey': 'BAD'});

    await expectLater(
      mgr.addAccount(companyId: 'cBad', apiKey: 'BAD'),
      throwsA(isA<ApiAuthFailure>()),
    );
    expect(await db.allAccounts(), isEmpty);
    expect(await keys.read('cBad'), isNull);
  });

  test('switchTo changes active key', () async {
    adapter
      ..onGet('/company/c1',
          (s) => s.reply(200, {'Content': {'Id': 'c1', 'Name': 'A', 'WorldId': 'w'}}),
          queryParameters: {'oa-apikey': 'K1'})
      ..onGet('/company/c2',
          (s) => s.reply(200, {'Content': {'Id': 'c2', 'Name': 'B', 'WorldId': 'w'}}),
          queryParameters: {'oa-apikey': 'K2'});

    await mgr.addAccount(companyId: 'c1', apiKey: 'K1');
    await mgr.addAccount(companyId: 'c2', apiKey: 'K2');
    expect(mgr.activeApiKey, 'K2');

    await mgr.switchTo('c1');
    expect(mgr.activeApiKey, 'K1');
    expect(mgr.activeCompanyId, 'c1');
  });

  test('addAccount seeds notification markers to ~now (no backfill)', () async {
    adapter.onGet('/company/c1',
        (s) => s.reply(200, {'Content': {'Id': 'c1', 'Name': 'A', 'WorldId': 'w'}}),
        queryParameters: {'oa-apikey': 'K1'});

    final before = DateTime.now().subtract(const Duration(seconds: 2));
    await mgr.addAccount(companyId: 'c1', apiKey: 'K1');

    final pushed = await db.lastPushedEventTime('c1');
    final viewed = await db.lastViewedEventTime('c1');
    expect(pushed, isNotNull);
    expect(pushed!.isAfter(before), isTrue);
    expect(viewed.isAfter(before), isTrue);
  });
}
