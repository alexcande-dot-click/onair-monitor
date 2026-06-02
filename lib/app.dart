import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/router/app_router.dart';
import 'core/router/routes.dart';
import 'core/theme/app_theme.dart';
import 'providers/providers.dart';
import 'services/pending_notification_route.dart';

class OnAirMonitorApp extends ConsumerStatefulWidget {
  const OnAirMonitorApp({super.key});
  @override
  ConsumerState<OnAirMonitorApp> createState() => _OnAirMonitorAppState();
}

class _OnAirMonitorAppState extends ConsumerState<OnAirMonitorApp>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) => _consumePending());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) _consumePending();
  }

  /// If a push was tapped, switch to that company and open Notifications.
  Future<void> _consumePending() async {
    final id = PendingNotificationRoute.companyId;
    if (id == null) return;
    PendingNotificationRoute.companyId = null;
    final mgr = ref.read(accountManagerProvider);
    final exists = (await mgr.allAccounts()).any((a) => a.companyId == id);
    if (!exists) return;
    await mgr.switchTo(id);
    ref.read(activeAccountRevisionProvider.notifier).state++;
    ref.read(routerProvider).go(Routes.notifications);
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(foregroundPollerProvider); // keep the 60s poller alive
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'OnAir Monitor',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      routerConfig: router,
    );
  }
}
