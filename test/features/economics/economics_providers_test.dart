import 'package:dio/dio.dart';
import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:onairmonitor/data/api/onair_api_client.dart';
import 'package:onairmonitor/data/db/app_database.dart';
import 'package:onairmonitor/data/secure/key_store.dart';
import 'package:onairmonitor/features/economics/economics_providers.dart';
import 'package:onairmonitor/providers/providers.dart';

void main() {
  test('balanceSheetProvider loads for the active company', () async {
    final dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    DioAdapter(dio: dio)
      ..onGet('/company/c1',
          (s) => s.reply(200, {'Content': {'Id': 'c1', 'Name': 'A', 'WorldId': 'w'}}),
          queryParameters: {'oa-apikey': 'K'})
      ..onGet('/company/c1/balancesheet',
          (s) => s.reply(200, {'Content': {'ASSAmount': 50.0, 'LIAAmount': 10.0}}),
          queryParameters: {'oa-apikey': 'K'});

    final c = ProviderContainer(overrides: [
      appDatabaseProvider.overrideWithValue(AppDatabase.forTesting(NativeDatabase.memory())),
      keyStoreProvider.overrideWithValue(InMemoryKeyStore()),
      dioProvider.overrideWithValue(dio),
    ]);
    addTearDown(c.dispose);
    await c.read(accountManagerProvider).addAccount(companyId: 'c1', apiKey: 'K');
    c.read(activeAccountRevisionProvider.notifier).state++;

    final b = await c.read(balanceSheetProvider.future);
    expect(b.equity, 40.0);
  });
}
