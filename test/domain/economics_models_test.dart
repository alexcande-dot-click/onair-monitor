import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/aircraft_economics.dart';
import 'package:onairmonitor/domain/models/balance_sheet.dart';
import 'package:onairmonitor/domain/models/income_statement.dart';

void main() {
  test('IncomeStatement.fromJson maps accounts + totals', () {
    final s = IncomeStatement.fromJson(const {
      'REVAccounts': [{'Name': 'Passenger Services', 'Amount': 33281037.53, 'Order': 0}],
      'REVAmount': 33378762.74,
      'EXPAccounts': [{'Name': 'Fuel', 'Amount': 1974224.79, 'Order': 4}],
      'EXPAmount': 37651944.57,
      'NetIncomeAmount': -4273181.83,
    });
    expect(s.revAccounts.single.name, 'Passenger Services');
    expect(s.revAmount, 33378762.74);
    expect(s.expAccounts.single.amount, 1974224.79);
    expect(s.netIncomeAmount, -4273181.83);
  });

  test('BalanceSheet.fromJson + equity getter', () {
    final b = BalanceSheet.fromJson(const {
      'ASSAccounts': [{'Name': 'FBOs', 'Amount': 30000.0}],
      'ASSAmount': 1730102.09,
      'LIAAccounts': [{'Name': 'Loans', 'Amount': 8190000.0}],
      'LIAAmount': 8190000.0,
      'DeltaBalance': -6459897.91,
    });
    expect(b.assAccounts.single.name, 'FBOs');
    expect(b.equity, closeTo(1730102.09 - 8190000.0, 0.01));
  });

  test('AircraftEconomics.fromJson keeps nullable fields', () {
    final e = AircraftEconomics.fromJson(const {
      'HourlyProfit': 1234.5,
      'CostHourlyFuel': 300.0,
      'CostWeeklyOwning': null,
    });
    expect(e.hourlyProfit, 1234.5);
    expect(e.costHourlyFuel, 300.0);
    expect(e.costWeeklyOwning, isNull);
    expect(AircraftEconomics.fromJson(const {}).hourlyProfit, isNull);
  });
}
