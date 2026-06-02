import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/format/formatters.dart';
import '../../providers/dashboard_providers.dart';
import 'kpi_card.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(dashboardProvider);
    return RefreshIndicator(
      onRefresh: () async {
        ref.read(pollTickProvider.notifier).state++;
        await ref.read(dashboardProvider.future);
      },
      child: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => ListView(
          key: const Key('dashboardError'),
          children: [
            const SizedBox(height: 120),
            const Icon(Icons.cloud_off, size: 48),
            const SizedBox(height: 12),
            Center(
                child: Text('Could not load dashboard.\n$e',
                    textAlign: TextAlign.center)),
          ],
        ),
        data: (k) {
          final tiles = <Widget>[
            KpiCard(label: 'Cash', value: formatMoney(k.cash), icon: Icons.payments),
            KpiCard(label: 'Company Value', value: formatMoney(k.value), icon: Icons.account_balance),
            KpiCard(label: 'Aircraft', value: '${k.aircraftTotal}', icon: Icons.flight),
            KpiCard(label: 'Flying now', value: '${k.aircraftFlying}', icon: Icons.flight_takeoff),
            KpiCard(label: 'Active missions', value: '${k.missionsActive}', icon: Icons.assignment),
            KpiCard(label: 'Employees', value: '${k.employees}', icon: Icons.people),
            KpiCard(label: 'FBOs', value: '${k.fbos}', icon: Icons.warehouse),
            KpiCard(label: 'Level ${k.level}', value: '${k.xp}/${k.xpNeeded} XP', icon: Icons.star),
            KpiCard(label: 'Income (1 week)', value: formatMoney(k.incomes1Week), icon: Icons.trending_up),
          ];
          return LayoutBuilder(builder: (context, c) {
            final cols = c.maxWidth >= 900 ? 4 : (c.maxWidth >= 600 ? 3 : 2);
            return GridView.count(
              padding: const EdgeInsets.all(16),
              crossAxisCount: cols,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 1.25,
              children: tiles,
            );
          });
        },
      ),
    );
  }
}
