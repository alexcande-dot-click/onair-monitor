import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/models/aircraft.dart';
import '../../domain/models/work_order.dart';
import '../live_map/live_map_providers.dart';
import 'jobs_logic.dart';
import 'jobs_providers.dart';
import 'work_order_detail_screen.dart';
import 'work_order_list_tile.dart';

const _statusChips = <(String, WorkOrderStatus?)>[
  ('All', null),
  ('Pending', WorkOrderStatus.pending),
  ('In progress', WorkOrderStatus.inProgress),
  ('Completed', WorkOrderStatus.completed),
];

class WorkOrdersTab extends ConsumerWidget {
  const WorkOrdersTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(workOrderStatusFilterProvider);
    final query = ref.watch(workOrderQueryProvider);
    final async = ref.watch(workOrdersProvider);
    final fleet = ref.watch(fleetProvider).asData?.value ?? const <Aircraft>[];
    final tails = {for (final a in fleet) a.id: a.identifier};

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
          child: Column(
            children: [
              Wrap(
                spacing: 8,
                children: [
                  for (final (label, s) in _statusChips)
                    FilterChip(
                      label: Text(label),
                      selected: status == s,
                      onSelected: (_) =>
                          ref.read(workOrderStatusFilterProvider.notifier).state = s,
                    ),
                ],
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search by name / tail',
                    border: OutlineInputBorder()),
                onChanged: (v) =>
                    ref.read(workOrderQueryProvider.notifier).state = v,
              ),
            ],
          ),
        ),
        Expanded(
          child: async.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(child: Text('Could not load work orders.\n$e')),
            data: (all) {
              final filtered = filterWorkOrders(all,
                  status: status, query: query, tailsById: tails);
              if (filtered.isEmpty) {
                return const Center(child: Text('No work orders'));
              }
              return ListView.separated(
                itemCount: filtered.length,
                separatorBuilder: (_, _) => const Divider(height: 1),
                itemBuilder: (context, i) {
                  final w = filtered[i];
                  final tail = tails[w.aircraftId];
                  return WorkOrderListTile(
                    workOrder: w,
                    tail: tail,
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) =>
                            WorkOrderDetailScreen(workOrder: w, tail: tail))),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
