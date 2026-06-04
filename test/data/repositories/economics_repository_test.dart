import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:onairmonitor/data/api/onair_api_client.dart';
import 'package:onairmonitor/data/repositories/economics_repository.dart';

void main() {
  late DioAdapter adapter;
  late OnAirApiClient client;
  setUp(() {
    final dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    adapter = DioAdapter(dio: dio);
    client = OnAirApiClient(dio, apiKeyResolver: () => 'K');
  });

  test('fetchIncomeStatement sends start/end and maps', () async {
    adapter.onGet('/company/c1/incomestatement',
        (s) => s.reply(200, {'Content': {'REVAmount': 100.0, 'NetIncomeAmount': 20.0}}),
        queryParameters: {
          'oa-apikey': 'K',
          'startDate': '2026-05-21T00:00:00.000',
          'endDate': '2026-06-04T00:00:00.000'
        });
    final repo = EconomicsRepository(client);
    final s = await repo.fetchIncomeStatement('c1',
        DateTime.parse('2026-05-21T00:00:00.000'), DateTime.parse('2026-06-04T00:00:00.000'));
    expect(s.revAmount, 100.0);
    expect(s.netIncomeAmount, 20.0);
  });

  test('fetchBalanceSheet maps', () async {
    adapter.onGet('/company/c1/balancesheet',
        (s) => s.reply(200, {'Content': {'ASSAmount': 50.0, 'LIAAmount': 10.0}}),
        queryParameters: {'oa-apikey': 'K'});
    final b = await EconomicsRepository(client).fetchBalanceSheet('c1');
    expect(b.equity, 40.0);
  });

  test('fetchAircraftEconomics unwraps double Content; null inner -> null', () async {
    adapter
      ..onGet('/aircraft/a1/economic_details',
          (s) => s.reply(200, {'Content': {'Content': {'HourlyProfit': 1234.5}}}),
          queryParameters: {'oa-apikey': 'K'})
      ..onGet('/aircraft/a2/economic_details',
          (s) => s.reply(200, {'Content': {'Content': null}}),
          queryParameters: {'oa-apikey': 'K'});
    final repo = EconomicsRepository(client);
    expect((await repo.fetchAircraftEconomics('a1'))!.hourlyProfit, 1234.5);
    expect(await repo.fetchAircraftEconomics('a2'), isNull);
  });
}
