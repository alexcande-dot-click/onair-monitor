import 'package:flutter/material.dart';
import 'jobs_tab.dart';
import 'work_orders_tab.dart';

class JobsWorkOrdersScreen extends StatelessWidget {
  const JobsWorkOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(tabs: [Tab(text: 'Jobs'), Tab(text: 'Work Orders')]),
          Expanded(
            child: TabBarView(children: [JobsTab(), WorkOrdersTab()]),
          ),
        ],
      ),
    );
  }
}
