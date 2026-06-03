import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/work_order.dart';
import 'jobs_logic.dart';

class WorkOrderDetailScreen extends StatelessWidget {
  const WorkOrderDetailScreen(
      {super.key, required this.workOrder, required this.tail});
  final WorkOrder workOrder;
  final String? tail;

  @override
  Widget build(BuildContext context) {
    final w = workOrder;
    return Scaffold(
      appBar: AppBar(title: Text(w.name.isEmpty ? 'Work order' : w.name)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _kv('Aircraft', tail ?? '—'),
          _kv('Status', workOrderStatusLabel(w)),
          _kv('Started', w.startDate?.toString().split('.').first ?? '—'),
          _kv('Crew', '${w.crewCount}'),
          const Divider(height: 32),
          Text('Actions (${w.actions.length})',
              style: Theme.of(context).textTheme.titleMedium),
          if (w.actions.isEmpty)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text('No actions', style: TextStyle(color: AppColors.textMuted)),
            )
          else
            for (final a in w.actions)
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.task_alt, size: 18),
                title: Text(a.name ?? 'Action'),
              ),
        ],
      ),
    );
  }

  Widget _kv(String k, String v) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(k, style: const TextStyle(color: AppColors.textMuted)),
          Flexible(child: Text(v, textAlign: TextAlign.right)),
        ]),
      );
}
