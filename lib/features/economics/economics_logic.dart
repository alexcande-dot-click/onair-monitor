import '../../domain/models/aircraft.dart';
import '../../domain/models/aircraft_economics.dart';
import '../../domain/models/finance_account.dart';

double accountShare(FinanceAccount a, double total) =>
    total <= 0 ? 0 : a.amount / total;

List<FinanceAccount> sortAccountsByAmountDesc(List<FinanceAccount> accounts) =>
    accounts.where((a) => a.amount != 0).toList()
      ..sort((a, b) => b.amount.compareTo(a.amount));

List<(Aircraft, AircraftEconomics?)> rankByHourlyProfit(
  List<(Aircraft, AircraftEconomics?)> items,
) {
  final list = [...items];
  list.sort((a, b) {
    final pa = a.$2?.hourlyProfit;
    final pb = b.$2?.hourlyProfit;
    if (pa == null && pb == null) return 0;
    if (pa == null) return 1; // nulls last
    if (pb == null) return -1;
    return pb.compareTo(pa); // desc
  });
  return list;
}
