import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/format/formatters.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/aircraft.dart';
import 'economics_providers.dart';

class AircraftEconomicsDetailScreen extends ConsumerWidget {
  const AircraftEconomicsDetailScreen({super.key, required this.aircraft});
  final Aircraft aircraft;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(aircraftEconomicsProvider(aircraft.id));
    return Scaffold(
      appBar: AppBar(title: Text('${aircraft.identifier} economics')),
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Could not load.\n$e')),
        data: (e) {
          if (e == null) {
            return const Center(child: Text('No economic data for this aircraft'));
          }
          String m(double? v) => v == null ? '—' : formatMoney(v);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _kv('Hourly profit', m(e.hourlyProfit)),
              const Divider(height: 32),
              const Text('Hourly costs', style: TextStyle(fontWeight: FontWeight.w700)),
              _kv('Fuel', m(e.costHourlyFuel)),
              _kv('Crew', m(e.costHourlyCrew)),
              _kv('Maintenance', m(e.costHourlyTotalMaintenance)),
              _kv('Rent', m(e.costHourlyRentTotal)),
              const Divider(height: 32),
              const Text('Weekly', style: TextStyle(fontWeight: FontWeight.w700)),
              _kv('Lease cost', m(e.costWeeklyLease)),
              _kv('Owning cost', m(e.costWeeklyOwning)),
              _kv('Profit (lease)/hr', m(e.profitHourlyLease)),
              _kv('Profit (owning)/hr', m(e.profitHourlyOwning)),
              const Divider(height: 32),
              _kv('Avg weekly hours',
                  e.averageWeeklyFlightHours?.toStringAsFixed(1) ?? '—'),
              _kv('Payload',
                  e.operationalPayloadLbs == null
                      ? '—'
                      : '${e.operationalPayloadLbs!.round()} lbs'),
              _kv('Cruise speed',
                  e.averageCruiseSpeedKts == null
                      ? '—'
                      : '${e.averageCruiseSpeedKts!.round()} kt'),
            ],
          );
        },
      ),
    );
  }

  Widget _kv(String k, String v) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(k, style: const TextStyle(color: AppColors.textMuted)),
          Text(v),
        ]),
      );
}
