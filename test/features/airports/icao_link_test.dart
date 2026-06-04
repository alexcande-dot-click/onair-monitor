import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/features/airports/airports_providers.dart';
import 'package:onairmonitor/features/airports/icao_link.dart';

void main() {
  testWidgets('tap pushes the airport detail', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        airportProvider('EETN').overrideWith((ref) async => null),
      ],
      child: const MaterialApp(
          home: Scaffold(body: Center(child: IcaoLink('EETN')))),
    ));
    expect(find.text('EETN'), findsOneWidget);
    await tester.tap(find.text('EETN'));
    await tester.pumpAndSettle();
    expect(find.textContaining('not found'), findsOneWidget);
  });

  testWidgets('empty ICAO renders plain dash, not tappable', (tester) async {
    await tester.pumpWidget(const ProviderScope(
      child: MaterialApp(home: Scaffold(body: IcaoLink(''))),
    ));
    expect(find.text('—'), findsOneWidget);
  });
}
