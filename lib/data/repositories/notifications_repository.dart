import '../../domain/models/onair_notification.dart';
import '../api/onair_api_client.dart';

class NotificationsRepository {
  NotificationsRepository(this._client);
  final OnAirApiClient _client;

  /// Returns notifications sorted newest-first by event time.
  Future<List<OnairNotification>> fetchNotifications(String companyId) async {
    final json = await _client.getJson('/company/$companyId/notifications');
    final list = (json! as List)
        .map((e) => OnairNotification.fromJson(e as Map<String, dynamic>))
        .toList()
      ..sort((a, b) => b.eventTime.compareTo(a.eventTime));
    return list;
  }
}
