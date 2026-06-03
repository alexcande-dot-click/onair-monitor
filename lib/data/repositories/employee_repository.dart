import '../../domain/models/employee.dart';
import '../api/onair_api_client.dart';

class EmployeeRepository {
  EmployeeRepository(this._client);
  final OnAirApiClient _client;

  Future<List<Employee>> fetchEmployees(String companyId) async {
    final json = await _client.getJson('/company/$companyId/employees');
    return (json! as List)
        .map((e) => Employee.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
