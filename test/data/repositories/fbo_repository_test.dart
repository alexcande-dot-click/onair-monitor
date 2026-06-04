import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:onairmonitor/data/api/onair_api_client.dart';
import 'package:onairmonitor/data/repositories/fbo_repository.dart';

void main() {
  test('fetchFbos maps the list', () async {
    final dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    DioAdapter(dio: dio).onGet('/company/c1/fbos',
        (s) => s.reply(200, {'Content': [
              {'Id': 'f1', 'Name': 'airBaltic 01', 'Airport': {'ICAO': 'EETN'}},
            ]}),
        queryParameters: {'oa-apikey': 'K'});
    final client = OnAirApiClient(dio, apiKeyResolver: () => 'K');
    final list = await FboRepository(client).fetchFbos('c1');
    expect(list.single.name, 'airBaltic 01');
    expect(list.single.airport?.icao, 'EETN');
  });
}
