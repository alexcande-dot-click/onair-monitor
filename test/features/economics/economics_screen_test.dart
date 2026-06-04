import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/domain/models/aircraft_economics.dart';
import 'package:onairmonitor/domain/models/balance_sheet.dart';
import 'package:onairmonitor/domain/models/dashboard_kpis.dart';
import 'package:onairmonitor/domain/models/income_statement.dart';
import 'package:onairmonitor/features/economics/economics_providers.dart';
import 'package:onairmonitor/features/economics/economics_screen.dart';
import 'package:onairmonitor/providers/dashboard_providers.dart';

void main() {
  testWidgets('has four sub-tabs', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        dashboardProvider.overrideWith((ref) async => const DashboardKpis(cash: 1)),
        balanceSheetProvider.overrideWith((ref) async => const BalanceSheet()),
        incomeStatementProvider.overrideWith((ref) async => const IncomeStatement()),
        fleetProfitabilityProvider
            .overrideWith((ref) async => const <(Aircraft, AircraftEconomics?)>[]),
      ],
      child: const MaterialApp(home: Scaffold(body: EconomicsScreen())),
    ));
    await tester.pumpAndSettle();
    expect(find.text('Overview'), findsOneWidget);
    expect(find.text('Income'), findsOneWidget);
    expect(find.text('Balance'), findsOneWidget);
    expect(find.text('Aircraft'), findsOneWidget);
  });
}
