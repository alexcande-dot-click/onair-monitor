import '../../domain/models/company.dart';
import '../../domain/models/dashboard_kpis.dart';
import '../api/onair_api_client.dart';

class CompanyRepository {
  CompanyRepository(this._client);
  final OnAirApiClient _client;

  /// Fetch a company. With [keyOverride], doubles as the setup validation call.
  Future<Company> fetchCompany(String companyId, {String? keyOverride}) async {
    final json =
        await _client.getJson('/company/$companyId', keyOverride: keyOverride);
    return Company.fromJson(json! as Map<String, dynamic>);
  }

  Future<DashboardKpis> fetchDashboard(String companyId) async {
    final json = await _client.getJson('/company/$companyId/dashboard');
    return DashboardKpis.fromJson(json! as Map<String, dynamic>);
  }
}
