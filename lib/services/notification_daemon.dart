import '../data/db/app_database.dart';
import '../data/repositories/notifications_repository.dart';
import '../data/secure/key_store.dart';
import '../features/notifications/notification_logic.dart';
import '../features/notifications/push_builder.dart';

class NotificationDaemon {
  /// Poll every account, push new notifications, advance the high-water marker.
  /// One company's failure is isolated (caught) so the rest still run.
  static Future<void> run({
    required AppDatabase db,
    required KeyStore keys,
    required NotificationsRepository Function(String apiKey) repoFor,
    required Future<void> Function(PushItem) post,
  }) async {
    final epoch = DateTime.fromMillisecondsSinceEpoch(0);
    for (final acc in await db.allAccounts()) {
      try {
        final key = await keys.read(acc.companyId);
        if (key == null) continue;
        final all = await repoFor(key).fetchNotifications(acc.companyId);
        final lastPushed = await db.lastPushedEventTime(acc.companyId) ?? epoch;
        final newItems = selectNewNotifications(all, lastPushed);
        for (final p in buildPushes(newItems,
            companyId: acc.companyId, companyName: acc.name)) {
          await post(p);
        }
        await db.setLastPushedEventTime(acc.companyId, latestEventTime(all));
      } catch (_) {
        // Skip this company; retried next cycle.
      }
    }
  }
}
