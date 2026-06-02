import 'package:dio/dio.dart';
import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:onairmonitor/data/api/onair_api_client.dart';
import 'package:onairmonitor/data/db/app_database.dart';
import 'package:onairmonitor/data/secure/key_store.dart';
import 'package:onairmonitor/providers/providers.dart';
import 'package:onairmonitor/providers/dashboard_providers.dart';

void main() {
  test('accountManager resolves active key into api client; dashboard loads',
      () async {
    final dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    final adapter = DioAdapter(dio: dio);
    adapter
      ..onGet('/company/c1',
          (s) => s.reply(200, {'Content': {'Id': 'c1', 'Name': 'Air Baltic', 'WorldId': 'w'}}),
          queryParameters: {'oa-apikey': 'K1'})
      ..onGet('/company/c1/dashboard',
          (s) => s.reply(200, {'Content': {'Cash': 100.0, 'NumberOfAircrafts': 13}}),
          queryParameters: {'oa-apikey': 'K1'});

    final container = ProviderContainer(overrides: [
      appDatabaseProvider.overrideWithValue(
          AppDatabase.forTesting(NativeDatabase.memory())),
      keyStoreProvider.overrideWithValue(InMemoryKeyStore()),
      dioProvider.overrideWithValue(dio),
    ]);
    addTearDown(container.dispose);

    final mgr = container.read(accountManagerProvider);
    await mgr.addAccount(companyId: 'c1', apiKey: 'K1');

    final kpis = await container.read(dashboardProvider.future);
    expect(kpis.cash, 100.0);
    expect(kpis.aircraftTotal, 13);
  });
}
