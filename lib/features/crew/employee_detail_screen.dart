import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/format/formatters.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/aircraft.dart';
import '../../domain/models/employee.dart';
import '../../providers/providers.dart';
import '../live_map/live_map_providers.dart';
import 'crew_logic.dart';
import 'crew_providers.dart';

Aircraft? _findAircraft(List<Aircraft> fleet, String? id) {
  if (id == null) return null;
  for (final a in fleet) {
    if (a.id == id) return a;
  }
  return null;
}

class EmployeeDetailScreen extends ConsumerWidget {
  const EmployeeDetailScreen({super.key, required this.employee});
  final Employee employee;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final assignments = ref.watch(crewAssignmentsProvider).asData?.value ?? const {};
    final fleet = ref.watch(fleetProvider).asData?.value ?? const <Aircraft>[];
    final assignedId = assignments[employee.id];
    final assignedTail = _findAircraft(fleet, assignedId)?.identifier;

    return Scaffold(
      appBar: AppBar(title: Text(employee.pseudo)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(employee.category.name,
              style: const TextStyle(color: AppColors.textMuted)),
          Text(crewStatusLabel(employee)),
          const SizedBox(height: 16),
          _bar('Fatigue', employee.fatiguePercent),
          _bar('Punctuality', employee.punctualityPercent),
          _bar('Comfort', employee.comfortPercent),
          _bar('Happiness', employee.happinessPercent),
          const SizedBox(height: 16),
          if (employee.certificationShortNames.isNotEmpty)
            Wrap(
              spacing: 6,
              children: [
                for (final c in employee.certificationShortNames) Chip(label: Text(c)),
              ],
            ),
          const SizedBox(height: 16),
          _kv('Flight hours (company)', employee.flightHoursInCompany.toStringAsFixed(1)),
          _kv('Per-hour wage', formatMoney(employee.perFlightHourWages)),
          _kv('Weekly guaranteed', formatMoney(employee.weeklyGuaranteedSalary)),
          _kv('Home airport', employee.homeAirport?.icao ?? '—'),
          const Divider(height: 32),
          if (employee.isAssignable) ...[
            Text('Planning assignment',
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(assignedTail != null ? 'Assigned: ✈ $assignedTail' : 'Unassigned'),
            const SizedBox(height: 8),
            Row(children: [
              FilledButton.icon(
                key: const Key('assignButton'),
                icon: const Icon(Icons.add),
                label: const Text('Assign to aircraft'),
                onPressed: () => _pickAircraft(context, ref, fleet),
              ),
              const SizedBox(width: 8),
              if (assignedId != null)
                OutlinedButton(
                  onPressed: () async {
                    await ref.read(appDatabaseProvider).unassignCrew(employee.id);
                    ref.invalidate(crewAssignmentsProvider);
                  },
                  child: const Text('Unassign'),
                ),
            ]),
            const SizedBox(height: 8),
            Text(
              employee.currentAircraftId != null
                  ? 'In-game: ✈ ${_findAircraft(fleet, employee.currentAircraftId)?.identifier ?? '—'}'
                  : 'In-game: none',
              style: const TextStyle(color: AppColors.textMuted),
            ),
          ],
        ],
      ),
    );
  }

  Future<void> _pickAircraft(
      BuildContext context, WidgetRef ref, List<Aircraft> fleet) async {
    final chosen = await showModalBottomSheet<String>(
      context: context,
      builder: (ctx) => ListView(
        children: [
          for (final a in fleet)
            ListTile(
              leading: const Icon(Icons.flight),
              title: Text(a.identifier),
              subtitle: Text(a.aircraftType?.displayName ?? ''),
              onTap: () => Navigator.of(ctx).pop(a.id),
            ),
        ],
      ),
    );
    if (chosen == null) return;
    await ref.read(appDatabaseProvider).assignCrew(employee.id, chosen);
    ref.invalidate(crewAssignmentsProvider);
  }

  Widget _bar(String label, double percent) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(label),
              Text('${percent.round()}%'),
            ]),
            const SizedBox(height: 4),
            LinearProgressIndicator(value: (percent / 100).clamp(0, 1)),
          ],
        ),
      );

  Widget _kv(String k, String v) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(k, style: const TextStyle(color: AppColors.textMuted)),
          Text(v),
        ]),
      );
}
