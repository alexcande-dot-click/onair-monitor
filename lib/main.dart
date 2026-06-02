import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';
import 'providers/providers.dart';
import 'services/notification_background.dart';
import 'services/notification_service.dart';
import 'services/pending_notification_route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Foreground notification plugin (tap handling + cold-start payload).
  final service = await NotificationService.initialize(
    onTapPayload: (companyId) => PendingNotificationRoute.companyId = companyId,
  );
  PendingNotificationRoute.companyId = await service.launchPayload();

  // Background 15-min poll across all companies.
  await initBackgroundDaemon();

  final container = ProviderContainer();
  await container.read(accountManagerProvider).load();
  container.read(activeAccountRevisionProvider.notifier).state++;
  runApp(UncontrolledProviderScope(
    container: container,
    child: const OnAirMonitorApp(),
  ));
}
