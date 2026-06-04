import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:onairmonitor/data/api/onair_api_client.dart';
import 'package:onairmonitor/features/airports/airports_providers.dart';
import 'package:onairmonitor/providers/providers.dart';

void main() {
  test('airportProvider fetches by ICAO', () async {
    final dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    DioAdapter(dio: dio).onGet('/airports/EETN',
        (s) => s.reply(200, {'Content': {'ICAO': 'EETN', 'Name': 'Tallinn'}}),
        queryParameters: {'oa-apikey': 'K'});
    final c = ProviderContainer(overrides: [dioProvider.overrideWithValue(dio)]);
    addTearDown(c.dispose);
    c.read(activeKeyHolderProvider).key = 'K';

    final a = await c.read(airportProvider('EETN').future);
    expect(a?.icao, 'EETN');
  });
}
