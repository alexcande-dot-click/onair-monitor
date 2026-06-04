import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/airport.dart';
import 'package:onairmonitor/domain/models/mission.dart';
import 'package:onairmonitor/features/airports/icao_link.dart';
import 'package:onairmonitor/features/jobs/job_detail_screen.dart';

void main() {
  testWidgets('job detail renders IcaoLink for leg airports', (tester) async {
    await tester.pumpWidget(const ProviderScope(
      child: MaterialApp(
        home: JobDetailScreen(
          mission: Mission(id: 'm', categoryCode: 0, cargos: [
            CargoLeg(
              departureAirport: Airport(icao: 'EETN'),
              destinationAirport: Airport(icao: 'ENGM'),
            )
          ]),
        ),
      ),
    ));
    await tester.pumpAndSettle();
    expect(find.byType(IcaoLink), findsWidgets);
  });
}
