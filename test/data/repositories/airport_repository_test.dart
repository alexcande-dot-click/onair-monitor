import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:onairmonitor/data/api/onair_api_client.dart';
import 'package:onairmonitor/data/repositories/airport_repository.dart';

void main() {
  late DioAdapter adapter;
  late OnAirApiClient client;
  setUp(() {
    final dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    adapter = DioAdapter(dio: dio);
    client = OnAirApiClient(dio, apiKeyResolver: () => 'K');
  });

  test('fetchAirport upper-cases ICAO + maps', () async {
    adapter.onGet('/airports/EETN',
        (s) => s.reply(200, {'Content': {'ICAO': 'EETN', 'Name': 'Tallinn'}}),
        queryParameters: {'oa-apikey': 'K'});
    final a = await AirportRepository(client).fetchAirport('eetn');
    expect(a?.icao, 'EETN');
  });

  test('unknown ICAO returns empty {} body -> null', () async {
    adapter.onGet('/airports/QQQQ',
        (s) => s.reply(200, <String, dynamic>{}),
        queryParameters: {'oa-apikey': 'K'});
    expect(await AirportRepository(client).fetchAirport('QQQQ'), isNull);
  });
}
