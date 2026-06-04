import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/format/formatters.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/finance_account.dart';
import 'economics_providers.dart';

class BalanceSheetTab extends ConsumerWidget {
  const BalanceSheetTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(balanceSheetProvider);
    return async.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Could not load balance sheet.\n$e')),
      data: (b) {
        final maxY =
            (b.assAmount > b.liaAmount ? b.assAmount : b.liaAmount) * 1.1 + 1;
        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            SizedBox(
              height: 180,
              child: BarChart(BarChartData(
                maxY: maxY,
                titlesData: FlTitlesData(
                  leftTitles: const AxisTitles(),
                  rightTitles: const AxisTitles(),
                  topTitles: const AxisTitles(),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (v, _) =>
                          Text(v == 0 ? 'Assets' : 'Liabilities'),
                    ),
                  ),
                ),
                barGroups: [
                  BarChartGroupData(x: 0, barRods: [
                    BarChartRodData(toY: b.assAmount, color: AppColors.electricGreen),
                  ]),
                  BarChartGroupData(x: 1, barRods: [
                    BarChartRodData(toY: b.liaAmount, color: AppColors.danger),
                  ]),
                ],
              )),
            ),
            const SizedBox(height: 16),
            _equityCard(b.equity),
            const Divider(height: 32),
            const Text('Assets', style: TextStyle(fontWeight: FontWeight.w700)),
            for (final a in b.assAccounts) _row(a),
            const Divider(height: 32),
            const Text('Liabilities', style: TextStyle(fontWeight: FontWeight.w700)),
            for (final a in b.liaAccounts) _row(a),
          ],
        );
      },
    );
  }

  Widget _equityCard(double equity) => Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text('Equity'),
            Text(formatMoney(equity),
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: equity >= 0 ? AppColors.electricGreen : AppColors.danger)),
          ]),
        ),
      );

  Widget _row(FinanceAccount a) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(a.name ?? '—', style: const TextStyle(color: AppColors.textMuted)),
          Text(formatMoney(a.amount)),
        ]),
      );
}
