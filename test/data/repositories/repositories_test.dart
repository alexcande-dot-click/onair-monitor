import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:onairmonitor/data/api/onair_api_client.dart';
import 'package:onairmonitor/data/repositories/company_repository.dart';
import 'package:onairmonitor/data/repositories/notifications_repository.dart';

void main() {
  late DioAdapter adapter;
  late OnAirApiClient client;

  setUp(() {
    final dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    adapter = DioAdapter(dio: dio);
    client = OnAirApiClient(dio, apiKeyResolver: () => 'K');
  });

  test('fetchCompany returns a Company (used for validation)', () async {
    adapter.onGet('/company/c1',
        (s) => s.reply(200, {'Content': {'Id': 'c1', 'Name': 'Air Baltic', 'AirlineCode': 'BTIC'}}),
        queryParameters: {'oa-apikey': 'KX'});
    final repo = CompanyRepository(client);
    final c = await repo.fetchCompany('c1', keyOverride: 'KX');
    expect(c.name, 'Air Baltic');
  });

  test('fetchDashboard maps KPIs', () async {
    adapter.onGet('/company/c1/dashboard',
        (s) => s.reply(200, {'Content': {'Cash': 100.0, 'NumberOfAircrafts': 13}}),
        queryParameters: {'oa-apikey': 'K'});
    final repo = CompanyRepository(client);
    final k = await repo.fetchDashboard('c1');
    expect(k.cash, 100.0);
    expect(k.aircraftTotal, 13);
  });

  test('fetchNotifications returns newest-first list', () async {
    adapter.onGet('/company/c1/notifications',
        (s) => s.reply(200, {'Content': [
              {'Id': 'a', 'Category': 0, 'Description': 'old', 'ZuluEventTime': '2026-06-01T00:00:00'},
              {'Id': 'b', 'Category': 6, 'Description': 'new', 'ZuluEventTime': '2026-06-02T00:00:00'},
            ]}),
        queryParameters: {'oa-apikey': 'K'});
    final repo = NotificationsRepository(client);
    final list = await repo.fetchNotifications('c1');
    expect(list.first.id, 'b'); // newest first
    expect(list.length, 2);
  });
}
