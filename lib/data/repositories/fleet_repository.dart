import '../../domain/models/aircraft.dart';
import '../api/onair_api_client.dart';

class FleetRepository {
  FleetRepository(this._client);
  final OnAirApiClient _client;

  Future<List<Aircraft>> fetchFleet(String companyId) async {
    final json = await _client.getJson('/company/$companyId/fleet');
    return (json! as List)
        .map((e) => Aircraft.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
