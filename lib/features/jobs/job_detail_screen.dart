import 'package:flutter/material.dart';
import '../../core/format/formatters.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/mission.dart';
import 'jobs_logic.dart';

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen({super.key, required this.mission});
  final Mission mission;

  @override
  Widget build(BuildContext context) {
    final m = mission;
    final exp = m.expirationDate;
    return Scaffold(
      appBar: AppBar(title: Text(missionCategoryLabel(m.category))),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _kv('State', m.state == 1 ? 'Completed' : 'Pending'),
          _kv('Pay', formatMoney(m.effectivePay)),
          if (m.payLastMinuteBonus > 0)
            _kv('Last-minute bonus', formatMoney(m.payLastMinuteBonus)),
          if (m.payCompanyBonus > 0)
            _kv('Company bonus', formatMoney(m.payCompanyBonus)),
          _kv('Penalty', formatMoney(m.penality)),
          _kv('Reputation', m.reputationImpact.toStringAsFixed(2)),
          _kv('XP', '${m.xp}'),
          if (exp != null)
            _kv('Expires',
                exp.isAfter(DateTime.now()) ? 'in ${relativeUntil(exp)}' : 'expired'),
          _kv('Total distance', '${m.totalDistance.round()} NM'),
          const Divider(height: 32),
          Text('Legs', style: Theme.of(context).textTheme.titleMedium),
          for (final c in m.cargos)
            _legTile(
                Icons.inventory_2,
                '${c.departureAirport?.icao ?? '—'} → ${c.destinationAirport?.icao ?? '—'}',
                '${c.weight.round()} lbs ${c.cargoType?.name ?? ''} · ${c.distance.round()} NM'),
          for (final c in m.charters)
            _legTile(
                Icons.people,
                '${c.departureAirport?.icao ?? '—'} → ${c.destinationAirport?.icao ?? '—'}',
                '${c.passengersNumber} pax · ${c.distance.round()} NM'),
          if (m.cargos.isEmpty && m.charters.isEmpty)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text('No legs', style: TextStyle(color: AppColors.textMuted)),
            ),
        ],
      ),
    );
  }

  Widget _legTile(IconData icon, String title, String sub) => ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Icon(icon, size: 20),
        title: Text(title),
        subtitle: Text(sub),
      );

  Widget _kv(String k, String v) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(k, style: const TextStyle(color: AppColors.textMuted)),
          Text(v),
        ]),
      );
}
