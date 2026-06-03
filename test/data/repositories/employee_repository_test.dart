import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:onairmonitor/data/api/onair_api_client.dart';
import 'package:onairmonitor/data/repositories/employee_repository.dart';

void main() {
  test('fetchEmployees maps the list', () async {
    final dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    DioAdapter(dio: dio).onGet('/company/c1/employees',
        (s) => s.reply(200, {'Content': [
              {'Id': 'e1', 'Pseudo': 'A', 'Category': 1},
              {'Id': 'e2', 'Pseudo': 'B', 'Category': 2},
            ]}),
        queryParameters: {'oa-apikey': 'K'});
    final client = OnAirApiClient(dio, apiKeyResolver: () => 'K');
    final list = await EmployeeRepository(client).fetchEmployees('c1');
    expect(list.length, 2);
    expect(list.first.pseudo, 'A');
  });
}
