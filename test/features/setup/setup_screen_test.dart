import 'package:dio/dio.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:onairmonitor/data/api/onair_api_client.dart';
import 'package:onairmonitor/data/db/app_database.dart';
import 'package:onairmonitor/data/secure/key_store.dart';
import 'package:onairmonitor/features/setup/setup_screen.dart';
import 'package:onairmonitor/providers/providers.dart';

Widget _wrap(Dio dio, {VoidCallback? onDone}) => ProviderScope(
      overrides: [
        appDatabaseProvider
            .overrideWithValue(AppDatabase.forTesting(NativeDatabase.memory())),
        keyStoreProvider.overrideWithValue(InMemoryKeyStore()),
        dioProvider.overrideWithValue(dio),
      ],
      child: MaterialApp(home: SetupScreen(onAccountAdded: onDone ?? () {})),
    );

void main() {
  testWidgets('valid credentials call onAccountAdded', (tester) async {
    final dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    DioAdapter(dio: dio).onGet('/company/c1',
        (s) => s.reply(200, {'Content': {'Id': 'c1', 'Name': 'Air Baltic', 'WorldId': 'w'}}),
        queryParameters: {'oa-apikey': 'GOOD'});
    var done = false;
    await tester.pumpWidget(_wrap(dio, onDone: () => done = true));

    await tester.enterText(find.byKey(const Key('companyIdField')), 'c1');
    await tester.enterText(find.byKey(const Key('apiKeyField')), 'GOOD');
    await tester.tap(find.byKey(const Key('connectButton')));
    await tester.pumpAndSettle();

    expect(done, isTrue);
  });

  testWidgets('invalid credentials show an error and do not finish', (tester) async {
    final dio = Dio(BaseOptions(baseUrl: OnAirApiClient.baseUrl));
    DioAdapter(dio: dio).onGet('/company/cBad',
        (s) => s.reply(200, {'Error': 'Please provide your OnAir API key oa-apikey.'}),
        queryParameters: {'oa-apikey': 'BAD'});
    var done = false;
    await tester.pumpWidget(_wrap(dio, onDone: () => done = true));

    await tester.enterText(find.byKey(const Key('companyIdField')), 'cBad');
    await tester.enterText(find.byKey(const Key('apiKeyField')), 'BAD');
    await tester.tap(find.byKey(const Key('connectButton')));
    await tester.pumpAndSettle();

    expect(done, isFalse);
    expect(find.textContaining('OnAir API key'), findsOneWidget);
  });
}
