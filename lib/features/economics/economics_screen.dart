import 'package:flutter/material.dart';
import 'aircraft_profitability_tab.dart';
import 'balance_sheet_tab.dart';
import 'income_statement_tab.dart';
import 'overview_tab.dart';

class EconomicsScreen extends StatelessWidget {
  const EconomicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(isScrollable: true, tabs: [
            Tab(text: 'Overview'),
            Tab(text: 'Income'),
            Tab(text: 'Balance'),
            Tab(text: 'Aircraft'),
          ]),
          Expanded(
            child: TabBarView(children: [
              OverviewTab(),
              IncomeStatementTab(),
              BalanceSheetTab(),
              AircraftProfitabilityTab(),
            ]),
          ),
        ],
      ),
    );
  }
}
