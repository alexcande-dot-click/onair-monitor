import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/aircraft.dart';
import '../../providers/providers.dart';
import '../airports/icao_link.dart';
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
            _routeRow(ref, a.id),
            _kv('Altitude', '${a.altitude.round()} ft'),
            _kv('Ground speed', '${a.groundSpeed.round()} kt'),
            _kv('Heading', '${a.heading.round()}°'),
          ] else
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text('Location', style: TextStyle(color: AppColors.textMuted)),
                IcaoLink(a.currentAirport?.icao),
              ]),
            ),
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
                final cleared = _noteCtrl.text.trim().isEmpty;
                await ref
                    .read(appDatabaseProvider)
                    .setAircraftNote(a.id, _noteCtrl.text);
                ref.invalidate(aircraftNotesProvider);
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(cleared ? 'Route note cleared' : 'Route note saved'),
                    duration: const Duration(seconds: 2),
                  ));
                }
              },
              child: const Text('Save'),
            ),
            const SizedBox(width: 8),
            OutlinedButton(
              onPressed: () async {
                _noteCtrl.clear();
                await ref.read(appDatabaseProvider).deleteAircraftNote(a.id);
                ref.invalidate(aircraftNotesProvider);
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Route note cleared'),
                    duration: Duration(seconds: 2),
                  ));
                }
              },
              child: const Text('Clear'),
            ),
          ]),
        ],
      ),
    );
  }

  /// Origin → destination from the aircraft's latest flight (flying only).
  Widget _routeRow(WidgetRef ref, String aircraftId) {
    final flight = ref.watch(aircraftLatestFlightProvider(aircraftId));
    final value = flight.when(
      loading: () => '…',
      error: (_, _) => '—',
      data: (f) {
        final dep = f?.departureAirport?.icao;
        final arr = f?.arrivalIntendedAirport?.icao;
        return (dep != null && arr != null) ? '$dep → $arr' : '—';
      },
    );
    return _kv('Route', value);
  }

  Widget _kv(String k, String v) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(k, style: const TextStyle(color: AppColors.textMuted)),
          Text(v),
        ]),
      );
}
