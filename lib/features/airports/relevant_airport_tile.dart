import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import 'airports_logic.dart';

class RelevantAirportTile extends StatelessWidget {
  const RelevantAirportTile({super.key, required this.airport, required this.onTap});
  final RelevantAirport airport;
  final VoidCallback onTap;

  String _reasonLabel(AirportReason r) => switch (r) {
        AirportReason.fbo => 'FBO',
        AirportReason.grounded => 'Grounded ×${airport.groundedCount}',
        AirportReason.destination => 'Dest',
      };

  @override
  Widget build(BuildContext context) {
    final subtitle = [airport.name, airport.city]
        .where((s) => s != null && s.isNotEmpty)
        .join(' · ');
    return ListTile(
      leading: const Icon(Icons.location_on),
      title:
          Text(airport.icao, style: const TextStyle(fontWeight: FontWeight.w700)),
      subtitle: subtitle.isEmpty ? null : Text(subtitle),
      trailing: Wrap(
        spacing: 4,
        children: [
          for (final r in airport.reasons)
            Chip(
              label: Text(_reasonLabel(r), style: const TextStyle(fontSize: 10)),
              visualDensity: VisualDensity.compact,
              backgroundColor: AppColors.surfaceAlt,
            ),
        ],
      ),
      onTap: onTap,
    );
  }
}
