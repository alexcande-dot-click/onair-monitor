import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_colors.dart';
import '../crew/crew_providers.dart';
import '../live_map/live_map_providers.dart';
import 'aircraft_detail_screen.dart';
import 'aircraft_list_tile.dart';
import 'aircraft_logic.dart';
import 'aircraft_providers.dart';

const _chips = <(String, AircraftStatusFilter)>[
  ('All', AircraftStatusFilter.all),
  ('Flying', AircraftStatusFilter.flying),
  ('Grounded', AircraftStatusFilter.grounded),
];

class AircraftScreen extends ConsumerWidget {
  const AircraftScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(aircraftStatusFilterProvider);
    final query = ref.watch(aircraftQueryProvider);
    final fleetAsync = ref.watch(fleetProvider);
    final notes = ref.watch(aircraftNotesProvider).asData?.value ?? const {};
    final assignments = ref.watch(crewAssignmentsProvider).asData?.value ?? const {};
    final counts = crewCountByAircraft(assignments);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
          child: Column(
            children: [
              Wrap(
                spacing: 8,
                children: [
                  for (final (label, f) in _chips)
                    FilterChip(
                      label: Text(label),
                      selected: filter == f,
                      onSelected: (_) =>
                          ref.read(aircraftStatusFilterProvider.notifier).state = f,
                    ),
                ],
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search by tail',
                    border: OutlineInputBorder()),
                onChanged: (v) => ref.read(aircraftQueryProvider.notifier).state = v,
              ),
            ],
          ),
        ),
        Expanded(
          child: fleetAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(child: Text('Could not load aircraft.\n$e')),
            data: (all) {
              final filtered = filterAircraft(all, filter: filter, query: query);
              final notedIds = notes.keys.toSet();
              final sorted = sortAircraft(filtered, notedIds);
              final boundary = firstUnnotedIndex(sorted, notedIds);
              return RefreshIndicator(
                onRefresh: () async {
                  ref.invalidate(fleetProvider);
                  await ref.read(fleetProvider.future);
                },
                child: ListView.builder(
                  itemCount: sorted.length,
                  itemBuilder: (context, i) {
                    final a = sorted[i];
                    final tile = AircraftListTile(
                      aircraft: a,
                      crewCount: counts[a.id] ?? 0,
                      note: notes[a.id],
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => AircraftDetailScreen(aircraft: a))),
                    );
                    if (i == boundary) {
                      return Column(children: [
                        const _SectionHeader('No route'),
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
