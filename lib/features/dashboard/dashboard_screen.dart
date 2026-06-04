import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/format/formatters.dart';
import '../../core/router/routes.dart';
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
          void go(String route) => context.go(route);
          final tiles = <Widget>[
            KpiCard(label: 'Cash', value: formatMoney(k.cash), icon: Icons.payments, onTap: () => go(Routes.economics)),
            KpiCard(label: 'Company Value', value: formatMoney(k.value), icon: Icons.account_balance, onTap: () => go(Routes.economics)),
            KpiCard(label: 'Aircraft', value: '${k.aircraftTotal}', icon: Icons.flight, onTap: () => go(Routes.aircraft)),
            KpiCard(label: 'Flying now', value: '${k.aircraftFlying}', icon: Icons.flight_takeoff, onTap: () => go(Routes.liveMap)),
            KpiCard(label: 'Employees', value: '${k.employees}', icon: Icons.people, onTap: () => go(Routes.crew)),
            KpiCard(label: 'FBOs', value: '${k.fbos}', icon: Icons.warehouse, onTap: () => go(Routes.fbo)),
            KpiCard(label: 'Level ${k.level}', value: '${k.xp}/${k.xpNeeded} XP', icon: Icons.star),
            KpiCard(label: 'Income (1 week)', value: formatMoney(k.incomes1Week), icon: Icons.trending_up, onTap: () => go(Routes.economics)),
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
