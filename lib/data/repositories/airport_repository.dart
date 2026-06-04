import '../../core/error/api_failure.dart';
import '../../domain/models/airport.dart';
import '../api/onair_api_client.dart';

class AirportRepository {
  AirportRepository(this._client);
  final OnAirApiClient _client;

  /// Fetch an airport by ICAO. Unknown ICAOs return an empty `{}` body (HTTP 200,
  /// no `Content`) which the envelope surfaces as UnknownFailure → we map to null.
  Future<Airport?> fetchAirport(String icao) async {
    final code = icao.trim().toUpperCase();
    if (code.isEmpty) return null;
    try {
      final json = await _client.getJson('/airports/$code');
      return Airport.fromJson(json! as Map<String, dynamic>);
    } on UnknownFailure {
      return null;
    } on NotFoundFailure {
      return null;
    }
  }
}
