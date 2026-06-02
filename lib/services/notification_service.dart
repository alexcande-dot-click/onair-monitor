import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../features/notifications/push_builder.dart';

const _channelId = 'onair_monitor';
const _channelName = 'OnAir Monitor';

class NotificationService {
  NotificationService(this._plugin);
  final FlutterLocalNotificationsPlugin _plugin;

  static final FlutterLocalNotificationsPlugin pluginInstance =
      FlutterLocalNotificationsPlugin();

  /// Initialize plugin + channel. [onTapPayload] receives the companyId on tap.
  static Future<NotificationService> initialize(
      {void Function(String companyId)? onTapPayload}) async {
    final plugin = pluginInstance;
    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    await plugin.initialize(
      const InitializationSettings(android: android),
      onDidReceiveNotificationResponse: (resp) {
        final id = resp.payload;
        if (id != null && id.isNotEmpty) onTapPayload?.call(id);
      },
    );
    await plugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(const AndroidNotificationChannel(
            _channelId, _channelName,
            importance: Importance.high));
    return NotificationService(plugin);
  }

  Future<void> requestPermission() async {
    await _plugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
  }

  /// If launched by tapping a push, return its companyId payload.
  Future<String?> launchPayload() async {
    final details = await _plugin.getNotificationAppLaunchDetails();
    if (details?.didNotificationLaunchApp ?? false) {
      return details!.notificationResponse?.payload;
    }
    return null;
  }

  Future<void> show(PushItem p) async {
    await _plugin.show(
      p.dedupKey.hashCode,
      p.title,
      p.body,
      const NotificationDetails(
          android: AndroidNotificationDetails(_channelId, _channelName,
              importance: Importance.high, priority: Priority.high)),
      payload: p.companyId,
    );
  }
}
