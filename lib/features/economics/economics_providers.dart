import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../domain/models/aircraft.dart';
import '../../domain/models/aircraft_economics.dart';
import '../../domain/models/balance_sheet.dart';
import '../../domain/models/income_statement.dart';
import '../../providers/providers.dart';
import '../live_map/live_map_providers.dart';
import 'economics_logic.dart';

typedef DateRange = ({DateTime start, DateTime end});

DateRange _defaultRange() {
  final now = DateTime.now();
  return (start: now.subtract(const Duration(days: 14)), end: now);
}

final incomeRangeProvider = StateProvider<DateRange>((ref) => _defaultRange());

final incomeStatementProvider =
    FutureProvider.autoDispose<IncomeStatement>((ref) async {
  ref.watch(activeAccountRevisionProvider);
  final range = ref.watch(incomeRangeProvider);
  final id = ref.watch(accountManagerProvider).activeCompanyId;
  if (id == null) return const IncomeStatement();
  return ref
      .watch(economicsRepositoryProvider)
      .fetchIncomeStatement(id, range.start, range.end);
});

final balanceSheetProvider =
    FutureProvider.autoDispose<BalanceSheet>((ref) async {
  ref.watch(activeAccountRevisionProvider);
  final id = ref.watch(accountManagerProvider).activeCompanyId;
  if (id == null) return const BalanceSheet();
  return ref.watch(economicsRepositoryProvider).fetchBalanceSheet(id);
});

final aircraftEconomicsProvider = FutureProvider.autoDispose
    .family<AircraftEconomics?, String>((ref, aircraftId) {
  return ref.watch(economicsRepositoryProvider).fetchAircraftEconomics(aircraftId);
});

/// Fleet ranked by HourlyProfit (fans out one economic_details call per aircraft).
final fleetProfitabilityProvider =
    FutureProvider.autoDispose<List<(Aircraft, AircraftEconomics?)>>((ref) async {
  final fleet = await ref.watch(fleetProvider.future);
  final repo = ref.watch(economicsRepositoryProvider);
  final results = await Future.wait(fleet.map((a) async {
    try {
      return (a, await repo.fetchAircraftEconomics(a.id));
    } catch (_) {
      return (a, null);
    }
  }));
  return rankByHourlyProfit(results);
});
