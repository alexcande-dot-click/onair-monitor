import '../../domain/models/aircraft_economics.dart';
import '../../domain/models/balance_sheet.dart';
import '../../domain/models/income_statement.dart';
import '../api/onair_api_client.dart';

class EconomicsRepository {
  EconomicsRepository(this._client);
  final OnAirApiClient _client;

  Future<IncomeStatement> fetchIncomeStatement(
      String companyId, DateTime start, DateTime end) async {
    final json = await _client.getJson(
      '/company/$companyId/incomestatement',
      query: {
        'startDate': start.toIso8601String(),
        'endDate': end.toIso8601String(),
      },
    );
    return IncomeStatement.fromJson(json! as Map<String, dynamic>);
  }

  Future<BalanceSheet> fetchBalanceSheet(String companyId) async {
    final json = await _client.getJson('/company/$companyId/balancesheet');
    return BalanceSheet.fromJson(json! as Map<String, dynamic>);
  }

  /// economic_details is double-wrapped: the unwrapped Content is itself
  /// `{ "Content": {...} }`. Returns null when the inner object is absent/null.
  Future<AircraftEconomics?> fetchAircraftEconomics(String aircraftId) async {
    final json = await _client.getJson('/aircraft/$aircraftId/economic_details');
    final inner = (json is Map) ? json['Content'] : null;
    if (inner is! Map) return null;
    return AircraftEconomics.fromJson(Map<String, dynamic>.from(inner));
  }
}
