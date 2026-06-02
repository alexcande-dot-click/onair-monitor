import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../domain/models/dashboard_kpis.dart';
import '../domain/models/onair_notification.dart';
import '../features/notifications/unread.dart';
import 'providers.dart';

/// Manual refresh tick (foreground poller + pull-to-refresh bump this).
final pollTickProvider = StateProvider<int>((ref) => 0);

final dashboardProvider = FutureProvider<DashboardKpis>((ref) async {
  ref.watch(pollTickProvider);
  ref.watch(activeAccountRevisionProvider);
  final mgr = ref.watch(accountManagerProvider);
  final id = mgr.activeCompanyId;
  if (id == null) throw StateError('No active company');
  return ref.watch(companyRepositoryProvider).fetchDashboard(id);
});

final notificationsProvider =
    FutureProvider<List<OnairNotification>>((ref) async {
  ref.watch(pollTickProvider);
  ref.watch(activeAccountRevisionProvider);
  final mgr = ref.watch(accountManagerProvider);
  final id = mgr.activeCompanyId;
  if (id == null) return const [];
  return ref.watch(notificationsRepositoryProvider).fetchNotifications(id);
});

/// Unread badge for the active company.
final unreadCountProvider = FutureProvider<int>((ref) async {
  final items = await ref.watch(notificationsProvider.future);
  final mgr = ref.watch(accountManagerProvider);
  final id = mgr.activeCompanyId;
  if (id == null) return 0;
  final viewed = await ref.watch(appDatabaseProvider).lastViewedEventTime(id);
  return unreadCount(items, viewed);
});
