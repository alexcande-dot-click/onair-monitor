import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/domain/models/aircraft_economics.dart';
import 'package:onairmonitor/domain/models/finance_account.dart';
import 'package:onairmonitor/features/economics/economics_logic.dart';

void main() {
  test('accountShare guards divide-by-zero', () {
    expect(accountShare(const FinanceAccount(amount: 25), 100), 0.25);
    expect(accountShare(const FinanceAccount(amount: 25), 0), 0);
  });

  test('sortAccountsByAmountDesc sorts desc and drops zeros', () {
    final out = sortAccountsByAmountDesc(const [
      FinanceAccount(name: 'a', amount: 10),
      FinanceAccount(name: 'b', amount: 0),
      FinanceAccount(name: 'c', amount: 30),
    ]);
    expect(out.map((a) => a.name), ['c', 'a']);
  });

  test('rankByHourlyProfit: desc, nulls last', () {
    const a1 = Aircraft(id: '1', identifier: 'N1');
    const a2 = Aircraft(id: '2', identifier: 'N2');
    const a3 = Aircraft(id: '3', identifier: 'N3');
    final ranked = rankByHourlyProfit([
      (a1, const AircraftEconomics(hourlyProfit: 100)),
      (a2, null),
      (a3, const AircraftEconomics(hourlyProfit: 500)),
    ]);
    expect(ranked.map((e) => e.$1.identifier), ['N3', 'N1', 'N2']);
  });
}
