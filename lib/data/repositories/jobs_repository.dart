import '../../domain/models/mission.dart';
import '../api/onair_api_client.dart';

class JobsRepository {
  JobsRepository(this._client);
  final OnAirApiClient _client;

  Future<List<Mission>> fetchPending(String companyId) =>
      _fetch('/company/$companyId/jobs/pending');
  Future<List<Mission>> fetchCompleted(String companyId) =>
      _fetch('/company/$companyId/jobs/completed');

  Future<List<Mission>> _fetch(String path) async {
    final json = await _client.getJson(path);
    return (json! as List)
        .map((e) => Mission.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
