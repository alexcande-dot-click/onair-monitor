import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/aircraft.dart';
import '../../providers/providers.dart';
import '../crew/crew_providers.dart';
import 'aircraft_logic.dart';
import 'aircraft_providers.dart';

class AircraftDetailScreen extends ConsumerStatefulWidget {
  const AircraftDetailScreen({super.key, required this.aircraft});
  final Aircraft aircraft;
  @override
  ConsumerState<AircraftDetailScreen> createState() =>
      _AircraftDetailScreenState();
}

class _AircraftDetailScreenState extends ConsumerState<AircraftDetailScreen> {
  late final _noteCtrl = TextEditingController();
  bool _initialized = false;

  @override
  void dispose() {
    _noteCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final a = widget.aircraft;
    final notes = ref.watch(aircraftNotesProvider).asData?.value ?? const {};
    if (!_initialized) {
      _noteCtrl.text = notes[a.id] ?? '';
      _initialized = true;
    }
    final assignments = ref.watch(crewAssignmentsProvider).asData?.value ?? const {};
    final employees = ref.watch(employeesProvider).asData?.value ?? const [];
    final crewNames = crewNamesFor(a.id, assignments, employees);

    return Scaffold(
      appBar: AppBar(title: Text(a.identifier)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(a.aircraftType?.displayName ?? 'Unknown type',
              style: Theme.of(context).textTheme.titleMedium),
          Text(a.aircraftType?.aircraftClass?.shortName ?? '',
              style: const TextStyle(color: AppColors.textMuted)),
          const SizedBox(height: 12),
          _kv('Status', aircraftStatusLabel(a)),
          _kv('Condition', '${a.conditionPercent.round()}%'),
          _kv('Fuel', '${a.fuelPercent.round()}%'),
          if (a.isFlying) ...[
            _kv('Altitude', '${a.altitude.round()} ft'),
            _kv('Ground speed', '${a.groundSpeed.round()} kt'),
            _kv('Heading', '${a.heading.round()}°'),
          ] else
            _kv('Location', a.currentAirport?.icao ?? '—'),
          _kv('Seats', '${a.aircraftType?.seats ?? 0}'),
          if (a.mustDoMaintenance || a.mustDoMaintenanceSoon)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Wrap(spacing: 6, children: [
                if (a.mustDoMaintenance)
                  const Chip(
                      label: Text('Maintenance due'),
                      backgroundColor: AppColors.danger),
                if (a.mustDoMaintenanceSoon)
                  const Chip(label: Text('Maintenance soon')),
              ]),
            ),
          const Divider(height: 32),
          Text('Assigned crew (${crewNames.length})',
              style: Theme.of(context).textTheme.titleMedium),
          if (crewNames.isEmpty)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text('No crew assigned',
                  style: TextStyle(color: AppColors.textMuted)),
            )
          else
            for (final n in crewNames)
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.person, size: 18),
                title: Text(n),
              ),
          const Divider(height: 32),
          Text('Route note', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          TextField(
            key: const Key('noteField'),
            controller: _noteCtrl,
            decoration: const InputDecoration(
                hintText: 'e.g. Route 941', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 8),
          Row(children: [
            FilledButton(
              key: const Key('saveNote'),
              onPressed: () async {
                await ref
                    .read(appDatabaseProvider)
                    .setAircraftNote(a.id, _noteCtrl.text);
                ref.invalidate(aircraftNotesProvider);
              },
              child: const Text('Save'),
            ),
            const SizedBox(width: 8),
            OutlinedButton(
              onPressed: () async {
                _noteCtrl.clear();
                await ref.read(appDatabaseProvider).deleteAircraftNote(a.id);
                ref.invalidate(aircraftNotesProvider);
              },
              child: const Text('Clear'),
            ),
          ]),
        ],
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
