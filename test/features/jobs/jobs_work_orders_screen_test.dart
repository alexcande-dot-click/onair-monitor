import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/domain/models/mission.dart';
import 'package:onairmonitor/domain/models/work_order.dart';
import 'package:onairmonitor/features/jobs/jobs_providers.dart';
import 'package:onairmonitor/features/jobs/jobs_work_orders_screen.dart';
import 'package:onairmonitor/features/live_map/live_map_providers.dart';

void main() {
  testWidgets('has Jobs and Work Orders tabs; can switch', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        pendingJobsProvider.overrideWith((ref) async => const <Mission>[]),
        completedJobsProvider.overrideWith((ref) async => const <Mission>[]),
        workOrdersProvider.overrideWith((ref) async => const <WorkOrder>[]),
        fleetProvider.overrideWith((ref) async => const <Aircraft>[]),
      ],
      child: const MaterialApp(home: Scaffold(body: JobsWorkOrdersScreen())),
    ));
    await tester.pumpAndSettle();

    expect(find.text('Jobs'), findsOneWidget);
    expect(find.text('Work Orders'), findsOneWidget);

    await tester.tap(find.text('Work Orders'));
    await tester.pumpAndSettle();
    expect(find.text('No work orders'), findsOneWidget);
  });
}
