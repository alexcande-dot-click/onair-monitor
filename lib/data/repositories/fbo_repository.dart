import '../../domain/models/fbo.dart';
import '../api/onair_api_client.dart';

class FboRepository {
  FboRepository(this._client);
  final OnAirApiClient _client;

  Future<List<Fbo>> fetchFbos(String companyId) async {
    final json = await _client.getJson('/company/$companyId/fbos');
    return (json! as List)
        .map((e) => Fbo.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
