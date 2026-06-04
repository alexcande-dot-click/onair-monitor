import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/airport.dart';
import 'package:onairmonitor/domain/models/fbo.dart';
import 'package:onairmonitor/features/fbo/fbo_providers.dart';
import 'package:onairmonitor/features/fbo/fbo_screen.dart';

void main() {
  testWidgets('lists FBOs and filters by query', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        fbosProvider.overrideWith((ref) async => const [
              Fbo(id: '1', name: 'airBaltic 01', airport: Airport(icao: 'EETN', city: 'Tallinn')),
              Fbo(id: '2', name: 'Riga Base', airport: Airport(icao: 'EVRA', city: 'Riga')),
            ]),
      ],
      child: const MaterialApp(home: Scaffold(body: FboScreen())),
    ));
    await tester.pumpAndSettle();

    expect(find.text('airBaltic 01'), findsOneWidget);
    expect(find.text('Riga Base'), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'riga');
    await tester.pumpAndSettle();
    expect(find.text('airBaltic 01'), findsNothing);
    expect(find.text('Riga Base'), findsOneWidget);
  });
}
