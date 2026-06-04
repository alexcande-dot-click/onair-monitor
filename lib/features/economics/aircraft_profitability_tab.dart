import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/format/formatters.dart';
import '../../core/theme/app_colors.dart';
import 'aircraft_economics_detail_screen.dart';
import 'economics_providers.dart';

class AircraftProfitabilityTab extends ConsumerWidget {
  const AircraftProfitabilityTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(fleetProfitabilityProvider);
    return async.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Could not load profitability.\n$e')),
      data: (ranked) => ListView.separated(
        itemCount: ranked.length,
        separatorBuilder: (_, _) => const Divider(height: 1),
        itemBuilder: (context, i) {
          final (aircraft, econ) = ranked[i];
          final profit = econ?.hourlyProfit;
          return ListTile(
            leading: CircleAvatar(child: Text('${i + 1}')),
            title: Text(aircraft.identifier),
            subtitle: Text(aircraft.aircraftType?.displayName ?? ''),
            trailing: Text(
              profit == null ? '—' : '${formatMoney(profit)}/hr',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: profit == null
                      ? AppColors.textMuted
                      : (profit >= 0 ? AppColors.electricGreen : AppColors.danger)),
            ),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => AircraftEconomicsDetailScreen(aircraft: aircraft))),
          );
        },
      ),
    );
  }
}
