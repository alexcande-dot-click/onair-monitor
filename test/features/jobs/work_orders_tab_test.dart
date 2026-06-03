import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/domain/models/work_order.dart';
import 'package:onairmonitor/features/jobs/jobs_providers.dart';
import 'package:onairmonitor/features/jobs/work_orders_tab.dart';
import 'package:onairmonitor/features/live_map/live_map_providers.dart';

void main() {
  testWidgets('shows work orders; Ongoing for ticking in-progress', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        workOrdersProvider.overrideWith((ref) async => const [
              WorkOrder(id: 'w1', name: 'Annual', statusCode: 1, isTicking: true, aircraftId: 'a1'),
            ]),
        fleetProvider.overrideWith((ref) async => const [
              Aircraft(id: 'a1', identifier: 'N1'),
            ]),
      ],
      child: const MaterialApp(home: Scaffold(body: WorkOrdersTab())),
    ));
    await tester.pumpAndSettle();
    expect(find.text('Annual'), findsOneWidget);
    expect(find.textContaining('Ongoing'), findsOneWidget);
    expect(find.textContaining('N1'), findsOneWidget);
  });
}
