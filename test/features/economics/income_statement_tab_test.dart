import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/finance_account.dart';
import 'package:onairmonitor/domain/models/income_statement.dart';
import 'package:onairmonitor/features/economics/economics_providers.dart';
import 'package:onairmonitor/features/economics/income_statement_tab.dart';

void main() {
  testWidgets('renders net income + revenue/expense rows', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        incomeStatementProvider.overrideWith((ref) async => const IncomeStatement(
              revAccounts: [FinanceAccount(name: 'Passenger Services', amount: 1000)],
              revAmount: 1000,
              expAccounts: [FinanceAccount(name: 'Fuel', amount: 400)],
              expAmount: 400,
              netIncomeAmount: 600,
            )),
      ],
      child: const MaterialApp(home: Scaffold(body: IncomeStatementTab())),
    ));
    await tester.pumpAndSettle();

    expect(find.textContaining('Passenger Services'), findsOneWidget);
    expect(find.textContaining('Fuel'), findsOneWidget);
    expect(find.textContaining('600'), findsWidgets);
  });
}
