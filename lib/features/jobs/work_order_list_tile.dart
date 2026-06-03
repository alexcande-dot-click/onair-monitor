import 'package:flutter/material.dart';
import '../../domain/models/work_order.dart';
import 'jobs_logic.dart';

class WorkOrderListTile extends StatelessWidget {
  const WorkOrderListTile({
    super.key,
    required this.workOrder,
    required this.tail,
    required this.onTap,
  });
  final WorkOrder workOrder;
  final String? tail;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.build, color: workOrderStatusColor(workOrder)),
      title: Text(workOrder.name.isEmpty ? 'Work order' : workOrder.name),
      subtitle: Text([
        if (tail != null) '✈ $tail',
        workOrderStatusLabel(workOrder),
      ].join(' · ')),
      onTap: onTap,
    );
  }
}
