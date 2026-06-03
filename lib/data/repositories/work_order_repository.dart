import '../../domain/models/work_order.dart';
import '../api/onair_api_client.dart';

class WorkOrderRepository {
  WorkOrderRepository(this._client);
  final OnAirApiClient _client;

  Future<List<WorkOrder>> fetchWorkOrders(String companyId) async {
    final json = await _client.getJson('/company/$companyId/workorders');
    return (json! as List)
        .map((e) => WorkOrder.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
