import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/format/formatters.dart';
import '../../providers/dashboard_providers.dart';
import '../dashboard/kpi_card.dart';
import 'economics_providers.dart';

class OverviewTab extends ConsumerWidget {
  const OverviewTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dash = ref.watch(dashboardProvider);
    final bal = ref.watch(balanceSheetProvider);
    return dash.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Could not load economics.\n$e')),
      data: (k) {
        final b = bal.asData?.value;
        final tiles = <Widget>[
          KpiCard(label: 'Cash', value: formatMoney(k.cash), icon: Icons.payments),
          KpiCard(label: 'Company Value', value: formatMoney(k.value), icon: Icons.account_balance),
          KpiCard(label: 'Assets', value: formatMoney(k.assets), icon: Icons.inventory),
          if (b != null)
            KpiCard(label: 'Liabilities', value: formatMoney(b.liaAmount), icon: Icons.money_off),
          if (b != null)
            KpiCard(label: 'Equity', value: formatMoney(b.equity), icon: Icons.savings),
          KpiCard(label: 'ROA', value: '${k.returnOnAssets.toStringAsFixed(1)}%', icon: Icons.percent),
          KpiCard(label: 'Income (1 week)', value: formatMoney(k.incomes1Week), icon: Icons.trending_up),
          KpiCard(label: 'Income (2 weeks)', value: formatMoney(k.incomes2Weeks), icon: Icons.timeline),
        ];
        return GridView.count(
          padding: const EdgeInsets.all(16),
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.3,
          children: tiles,
        );
      },
    );
  }
}
