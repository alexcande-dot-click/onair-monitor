import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_colors.dart';
import 'airports_providers.dart';

class AirportDetailScreen extends ConsumerWidget {
  const AirportDetailScreen({super.key, required this.icao});
  final String icao;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(airportProvider(icao));
    return Scaffold(
      appBar: AppBar(title: Text(icao.toUpperCase())),
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Could not load airport.\n$e')),
        data: (a) {
          if (a == null) {
            return Center(child: Text('Airport ${icao.toUpperCase()} not found'));
          }
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text('${a.icao ?? ''}${a.iata != null ? ' · ${a.iata}' : ''}',
                  style: Theme.of(context).textTheme.headlineSmall),
              if (a.name != null)
                Text(a.name!, style: const TextStyle(color: AppColors.textMuted)),
              const Divider(height: 32),
              const Text('Location', style: TextStyle(fontWeight: FontWeight.w700)),
              _kv('City', a.city ?? '—'),
              _kv('Country', a.countryName ?? a.countryCode ?? '—'),
              _kv('Coordinates',
                  '${a.latitude.toStringAsFixed(3)}, ${a.longitude.toStringAsFixed(3)}'),
              _kv('Elevation', '${a.elevation.round()} ft'),
              _kv('Size', '${a.size}'),
              _kv('Transition alt', '${a.transitionAltitude} ft'),
              _kv('MagVar', '${a.magVar}°'),
              if (a.lastMetarDate != null)
                _kv('METAR updated', a.lastMetarDate!.toString().split('.').first),
              const Divider(height: 32),
              Wrap(spacing: 6, children: [
                if (a.isClosed) const Chip(label: Text('Closed')),
                if (a.isMilitary) const Chip(label: Text('Military')),
                if (a.hasLights) const Chip(label: Text('Lights')),
                if (a.hasLandRunway) const Chip(label: Text('Land')),
                if (a.hasWaterRunway) const Chip(label: Text('Water')),
                if (a.hasHelipad) const Chip(label: Text('Helipad')),
              ]),
              const Divider(height: 32),
              Text('Runways (${a.runways.length})',
                  style: const TextStyle(fontWeight: FontWeight.w700)),
              if (a.runways.isEmpty)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text('No runway data',
                      style: TextStyle(color: AppColors.textMuted)),
                )
              else
                for (final r in a.runways)
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(Icons.horizontal_rule),
                    title: Text('${r.name ?? '?'} · ${r.magneticHeading}°'),
                    subtitle: Text([
                      '${r.length} ft',
                      if (r.hasIls)
                        'ILS ${(r.ilsFrequency / 1000000).toStringAsFixed(2)}',
                    ].join(' · ')),
                  ),
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
