import '../../domain/models/flight.dart';
import '../api/onair_api_client.dart';

class FlightRepository {
  FlightRepository(this._client);
  final OnAirApiClient _client;

  /// Latest flight for an aircraft (for the trajectory). Null if none.
  Future<Flight?> fetchLatestFlight(String aircraftId) async {
    final json = await _client
        .getJson('/aircraft/$aircraftId/flights', query: {'limit': 1});
    final list = json! as List;
    if (list.isEmpty) return null;
    return Flight.fromJson(list.first as Map<String, dynamic>);
  }
}
