import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:onairmonitor/data/api/onair_api_client.dart';
import 'package:onairmonitor/data/repositories/jobs_repository.dart';
import 'package:onairmonitor/data/repositories/work_order_repository.dart';

void main() {
  late DioAdapter adapter;
  late OnAirApiClient client;
  setUp(() {
    final dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    adapter = DioAdapter(dio: dio);
    client = OnAirApiClient(dio, apiKeyResolver: () => 'K');
  });

  test('fetchPending / fetchCompleted map missions', () async {
    adapter
      ..onGet('/company/c1/jobs/pending',
          (s) => s.reply(200, {'Content': [{'Id': 'm1', 'Category': 0, 'State': 0}]}),
          queryParameters: {'oa-apikey': 'K'})
      ..onGet('/company/c1/jobs/completed',
          (s) => s.reply(200, {'Content': [{'Id': 'm2', 'Category': 1, 'State': 1}]}),
          queryParameters: {'oa-apikey': 'K'});
    final repo = JobsRepository(client);
    expect((await repo.fetchPending('c1')).single.id, 'm1');
    expect((await repo.fetchCompleted('c1')).single.id, 'm2');
  });

  test('fetchWorkOrders maps work orders', () async {
    adapter.onGet('/company/c1/workorders',
        (s) => s.reply(200, {'Content': [{'Id': 'w1', 'Status': 1}]}),
        queryParameters: {'oa-apikey': 'K'});
    expect((await WorkOrderRepository(client).fetchWorkOrders('c1')).single.id, 'w1');
  });
}
