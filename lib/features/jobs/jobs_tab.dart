import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/models/mission.dart';
import 'job_detail_screen.dart';
import 'job_list_tile.dart';
import 'jobs_logic.dart';
import 'jobs_providers.dart';

const _categoryChips = <(String, MissionCategory?)>[
  ('All', null),
  ('Cargo', MissionCategory.cargo),
  ('Charter', MissionCategory.charter),
  ('Sightseeing', MissionCategory.sightseeing),
];

class JobsTab extends ConsumerWidget {
  const JobsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final segment = ref.watch(jobSegmentProvider);
    final category = ref.watch(jobCategoryFilterProvider);
    final query = ref.watch(jobQueryProvider);
    final async = segment == JobSegment.pending
        ? ref.watch(pendingJobsProvider)
        : ref.watch(completedJobsProvider);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
          child: Column(
            children: [
              SegmentedButton<JobSegment>(
                segments: const [
                  ButtonSegment(value: JobSegment.pending, label: Text('Pending')),
                  ButtonSegment(value: JobSegment.completed, label: Text('Completed')),
                ],
                selected: {segment},
                onSelectionChanged: (s) =>
                    ref.read(jobSegmentProvider.notifier).state = s.first,
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: [
                  for (final (label, cat) in _categoryChips)
                    FilterChip(
                      label: Text(label),
                      selected: category == cat,
                      onSelected: (_) =>
                          ref.read(jobCategoryFilterProvider.notifier).state = cat,
                    ),
                ],
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search by airport / type',
                    border: OutlineInputBorder()),
                onChanged: (v) => ref.read(jobQueryProvider.notifier).state = v,
              ),
            ],
          ),
        ),
        Expanded(
          child: async.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(child: Text('Could not load jobs.\n$e')),
            data: (all) {
              final filtered = filterJobs(all, category: category, query: query);
              final sorted = segment == JobSegment.pending
                  ? sortPending(filtered)
                  : sortCompleted(filtered);
              if (sorted.isEmpty) {
                return Center(
                    child: Text(segment == JobSegment.pending
                        ? 'No pending jobs'
                        : 'No completed jobs'));
              }
              return ListView.separated(
                itemCount: sorted.length,
                separatorBuilder: (_, _) => const Divider(height: 1),
                itemBuilder: (context, i) => JobListTile(
                  mission: sorted[i],
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => JobDetailScreen(mission: sorted[i]))),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
