import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';
import 'providers/providers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer();
  // Load any persisted active account + key before the first frame.
  await container.read(accountManagerProvider).load();
  container.read(activeAccountRevisionProvider.notifier).state++;
  runApp(UncontrolledProviderScope(
    container: container,
    child: const OnAirMonitorApp(),
  ));
}
