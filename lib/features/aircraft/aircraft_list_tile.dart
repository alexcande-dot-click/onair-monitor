import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/aircraft.dart';
import 'aircraft_logic.dart';

class AircraftListTile extends StatelessWidget {
  const AircraftListTile({
    super.key,
    required this.aircraft,
    required this.crewCount,
    required this.note,
    required this.onTap,
  });

  final Aircraft aircraft;
  final int crewCount;
  final String? note;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final flagged = note == null;
    final type = aircraft.aircraftType?.displayName;
    final subtitle = [
      aircraftStatusLabel(aircraft),
      '👥 $crewCount',
      note ?? 'No route',
    ].join(' · ');

    return ListTile(
      tileColor: flagged ? AppColors.surfaceAlt : null,
      leading: Icon(Icons.flight, color: aircraftStatusColor(aircraft)),
      title: Text([aircraft.identifier, if (type != null) '· $type'].join(' ')),
      subtitle: Text(subtitle),
      onTap: onTap,
    );
  }
}
