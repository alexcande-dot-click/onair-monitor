import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:workmanager/workmanager.dart';
import '../data/api/onair_api_client.dart';
import '../data/db/app_database.dart';
import '../data/repositories/notifications_repository.dart';
import '../data/secure/key_store.dart';
import 'notification_daemon.dart';
import 'notification_service.dart';

const taskName = 'pollNotifications';
const _uniqueName = 'onair-notif-poll';

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    WidgetsFlutterBinding.ensureInitialized();
    final db = AppDatabase();
    final keys = SecureKeyStore();
    final service = await NotificationService.initialize();
    try {
      await NotificationDaemon.run(
        db: db,
        keys: keys,
        repoFor: (apiKey) => NotificationsRepository(
            OnAirApiClient(Dio(), apiKeyResolver: () => apiKey)),
        post: service.show,
      );
    } finally {
      await db.close();
    }
    return true;
  });
}

Future<void> initBackgroundDaemon() async {
  await Workmanager().initialize(callbackDispatcher);
  await Workmanager().registerPeriodicTask(
    _uniqueName,
    taskName,
    frequency: const Duration(minutes: 15),
    constraints: Constraints(networkType: NetworkType.connected),
    existingWorkPolicy: ExistingPeriodicWorkPolicy.keep,
  );
}
