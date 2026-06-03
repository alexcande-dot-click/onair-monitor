import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/aircraft.dart';
import '../../domain/models/employee.dart';
import '../live_map/live_map_providers.dart';
import 'crew_list_tile.dart';
import 'crew_logic.dart';
import 'crew_providers.dart';
import 'employee_detail_screen.dart';

const _chips = <(String, CrewCategory?)>[
  ('All', null),
  ('Pilots', CrewCategory.pilot),
  ('Cabin Crew', CrewCategory.cabinCrew),
  ('Mechanics', CrewCategory.mechanic),
];

class CrewScreen extends ConsumerWidget {
  const CrewScreen({super.key});

  String? _tailFor(
      String employeeId, Map<String, String> assignments, List<Aircraft> fleet) {
    final aircraftId = assignments[employeeId];
    if (aircraftId == null) return null;
    for (final a in fleet) {
      if (a.id == aircraftId) return a.identifier;
    }
    return '—';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(crewCategoryFilterProvider);
    final query = ref.watch(crewQueryProvider);
    final employeesAsync = ref.watch(employeesProvider);
    final assignments = ref.watch(crewAssignmentsProvider).asData?.value ?? const {};
    final fleet = ref.watch(fleetProvider).asData?.value ?? const <Aircraft>[];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
          child: Column(
            children: [
              Wrap(
                spacing: 8,
                children: [
                  for (final (label, cat) in _chips)
                    FilterChip(
                      label: Text(label),
                      selected: selected == cat,
                      onSelected: (_) =>
                          ref.read(crewCategoryFilterProvider.notifier).state = cat,
                    ),
                ],
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search by name',
                    border: OutlineInputBorder()),
                onChanged: (v) => ref.read(crewQueryProvider.notifier).state = v,
              ),
            ],
          ),
        ),
        Expanded(
          child: employeesAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(child: Text('Could not load crew.\n$e')),
            data: (all) {
              final filtered = filterCrew(all, category: selected, query: query);
              final assignedIds = assignments.keys.toSet();
              final sorted = sortCrew(filtered, assignedIds);
              final boundary = firstUnassignedIndex(sorted, assignedIds);
              return RefreshIndicator(
                onRefresh: () async {
                  ref.invalidate(employeesProvider);
                  await ref.read(employeesProvider.future);
                },
                child: ListView.builder(
                  itemCount: sorted.length,
                  itemBuilder: (context, i) {
                    final e = sorted[i];
                    final flagged = isUnassignedFlag(e, assignedIds);
                    final tile = CrewListTile(
                      employee: e,
                      tail: _tailFor(e.id, assignments, fleet),
                      flagged: flagged,
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => EmployeeDetailScreen(employee: e))),
                    );
                    if (i == boundary) {
                      return Column(children: [
                        const _SectionHeader('Unassigned'),
                        tile,
                      ]);
                    }
                    return tile;
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader(this.label);
  final String label;
  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
        child: Text(label.toUpperCase(),
            style: const TextStyle(
                color: AppColors.electricBlue,
                fontSize: 12,
                fontWeight: FontWeight.w700)),
      );
}
