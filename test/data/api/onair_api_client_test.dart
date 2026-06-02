import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:onairmonitor/core/error/api_failure.dart';
import 'package:onairmonitor/data/api/onair_api_client.dart';

void main() {
  late Dio dio;
  late DioAdapter adapter;
  late OnAirApiClient client;

  setUp(() {
    dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    adapter = DioAdapter(dio: dio);
    client = OnAirApiClient(dio, apiKeyResolver: () => 'KEY123');
  });

  test('GET returns unwrapped Content and sends the api key', () async {
    adapter.onGet(
      '/company/abc',
      (s) => s.reply(200, {'Content': {'Name': 'Air Baltic'}}),
      queryParameters: {'oa-apikey': 'KEY123'},
    );

    final out = await client.getJson('/company/abc');
    expect(out, {'Name': 'Air Baltic'});
  });

  test('Error envelope becomes ApiAuthFailure', () async {
    adapter.onGet(
      '/company/abc',
      (s) => s.reply(200, {'Error': 'Please provide your OnAir API key oa-apikey.'}),
      queryParameters: {'oa-apikey': 'KEY123'},
    );

    expect(() => client.getJson('/company/abc'), throwsA(isA<ApiAuthFailure>()));
  });

  test('HTTP 404 becomes NotFoundFailure', () async {
    adapter.onGet(
      '/airports/EXXX',
      (s) => s.reply(404, {'Content': null}),
      queryParameters: {'oa-apikey': 'KEY123'},
    );

    expect(() => client.getJson('/airports/EXXX'), throwsA(isA<NotFoundFailure>()));
  });
}
