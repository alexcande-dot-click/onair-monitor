import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:onairmonitor/data/api/onair_api_client.dart';
import 'package:onairmonitor/data/repositories/fleet_repository.dart';
import 'package:onairmonitor/data/repositories/flight_repository.dart';

void main() {
  late DioAdapter adapter;
  late OnAirApiClient client;

  setUp(() {
    final dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    adapter = DioAdapter(dio: dio);
    client = OnAirApiClient(dio, apiKeyResolver: () => 'K');
  });

  test('fetchFleet maps a list of aircraft', () async {
    adapter.onGet('/company/c1/fleet',
        (s) => s.reply(200, {'Content': [
              {'Id': 'a1', 'Identifier': 'N1', 'AircraftStatus': 3, 'Latitude': 1.0, 'Longitude': 2.0},
              {'Id': 'a2', 'Identifier': 'N2', 'AircraftStatus': 0},
            ]}),
        queryParameters: {'oa-apikey': 'K'});
    final fleet = await FleetRepository(client).fetchFleet('c1');
    expect(fleet.length, 2);
    expect(fleet.first.identifier, 'N1');
    expect(fleet.first.isFlying, isTrue);
  });

  test('fetchLatestFlight returns the flight or null', () async {
    adapter.onGet('/aircraft/a1/flights',
        (s) => s.reply(200, {'Content': [
              {'Id': 'f1', 'DepartureAirport': {'ICAO': 'EETN', 'Latitude': 59.4, 'Longitude': 24.8}},
            ]}),
        queryParameters: {'oa-apikey': 'K', 'limit': 1});
    final f = await FlightRepository(client).fetchLatestFlight('a1');
    expect(f?.departureAirport?.icao, 'EETN');

    adapter.onGet('/aircraft/a2/flights',
        (s) => s.reply(200, {'Content': []}),
        queryParameters: {'oa-apikey': 'K', 'limit': 1});
    expect(await FlightRepository(client).fetchLatestFlight('a2'), isNull);
  });
}
