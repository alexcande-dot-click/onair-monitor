import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/format/formatters.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/finance_account.dart';
import 'economics_logic.dart';
import 'economics_providers.dart';

const _presets = <(String, int)>[('7d', 7), ('14d', 14), ('30d', 30)];

const _palette = <Color>[
  AppColors.electricBlue,
  AppColors.electricGreen,
  Color(0xFFFFC42E),
  Color(0xFFB388FF),
  Color(0xFFFF8A65),
  Color(0xFF4DD0E1),
];

class IncomeStatementTab extends ConsumerWidget {
  const IncomeStatementTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(incomeStatementProvider);
    final range = ref.watch(incomeRangeProvider);
    final activeDays = range.end.difference(range.start).inDays;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
          child: Wrap(
            spacing: 8,
            children: [
              for (final (label, days) in _presets)
                ChoiceChip(
                  label: Text(label),
                  selected: activeDays == days,
                  onSelected: (_) {
                    final now = DateTime.now();
                    ref.read(incomeRangeProvider.notifier).state =
                        (start: now.subtract(Duration(days: days)), end: now);
                  },
                ),
            ],
          ),
        ),
        Expanded(
          child: async.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(child: Text('Could not load P&L.\n$e')),
            data: (s) {
              final rev = sortAccountsByAmountDesc(s.revAccounts);
              final exp = sortAccountsByAmountDesc(s.expAccounts);
              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Center(
                    child: Column(children: [
                      const Text('Net income',
                          style: TextStyle(color: AppColors.textMuted)),
                      Text(formatMoney(s.netIncomeAmount),
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w800,
                              color: s.netIncomeAmount >= 0
                                  ? AppColors.electricGreen
                                  : AppColors.danger)),
                    ]),
                  ),
                  const SizedBox(height: 16),
                  _section('Revenue', rev, s.revAmount),
                  const SizedBox(height: 16),
                  _section('Expenses', exp, s.expAmount),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _section(String title, List<FinanceAccount> accounts, double total) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$title · ${formatMoney(total)}',
            style: const TextStyle(fontWeight: FontWeight.w700)),
        const SizedBox(height: 8),
        if (accounts.isNotEmpty)
          SizedBox(
            height: 160,
            child: PieChart(PieChartData(
              sectionsSpace: 2,
              centerSpaceRadius: 36,
              sections: [
                for (var i = 0; i < accounts.length; i++)
                  PieChartSectionData(
                    value: accounts[i].amount.abs(),
                    color: _palette[i % _palette.length],
                    radius: 36,
                    showTitle: false,
                  ),
              ],
            )),
          ),
        const SizedBox(height: 8),
        for (var i = 0; i < accounts.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Row(children: [
              Container(width: 10, height: 10, color: _palette[i % _palette.length]),
              const SizedBox(width: 8),
              Expanded(child: Text(accounts[i].name ?? '—')),
              Text(formatMoney(accounts[i].amount)),
              const SizedBox(width: 8),
              Text('${(accountShare(accounts[i], total) * 100).round()}%',
                  style: const TextStyle(color: AppColors.textMuted)),
            ]),
          ),
      ],
    );
  }
}
