import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../features/dashboard/dashboard_screen.dart';
import '../../features/live_map/live_map_screen.dart';
import '../../features/notifications/notifications_screen.dart';
import '../../features/setup/setup_screen.dart';
import '../../features/shell/app_shell.dart';
import '../../providers/providers.dart';
import 'routes.dart';

/// Pure redirect decision (unit-tested).
String? redirectFor({required bool hasAccount, required String location}) {
  if (!hasAccount) return location == Routes.setup ? null : Routes.setup;
  if (location == Routes.setup) return Routes.dashboard;
  return null;
}

/// The app's router, built with a proper provider [Ref] (supports ref.listen).
final routerProvider = Provider<GoRouter>((ref) => buildRouter(ref));

GoRouter buildRouter(Ref ref) {
  return GoRouter(
    initialLocation: Routes.dashboard,
    redirect: (context, state) {
      final hasAccount =
          ref.read(accountManagerProvider).activeCompanyId != null;
      return redirectFor(
          hasAccount: hasAccount, location: state.matchedLocation);
    },
    refreshListenable: _RevisionListenable(ref),
    routes: [
      GoRoute(
        path: Routes.setup,
        builder: (context, state) => SetupScreen(
          onAccountAdded: () => context.go(Routes.dashboard),
        ),
      ),
      GoRoute(
        path: Routes.dashboard,
        builder: (context, state) => AppShell(
          title: 'Dashboard',
          onOpenNotifications: () => context.go(Routes.notifications),
          onAddAccount: () => context.go(Routes.setup),
          body: const DashboardScreen(),
        ),
      ),
      GoRoute(
        path: Routes.liveMap,
        builder: (context, state) => AppShell(
          title: 'Live Map',
          onOpenNotifications: () => context.go(Routes.notifications),
          onAddAccount: () => context.go(Routes.setup),
          body: const LiveMapScreen(),
        ),
      ),
      GoRoute(
        path: Routes.notifications,
        builder: (context, state) => AppShell(
          title: 'Notifications',
          onOpenNotifications: () {},
          onAddAccount: () => context.go(Routes.setup),
          body: const NotificationsScreen(),
        ),
      ),
    ],
  );
}

/// Rebuilds routing when the active-account revision changes.
class _RevisionListenable extends ChangeNotifier {
  _RevisionListenable(Ref ref) {
    _sub = ref.listen(activeAccountRevisionProvider, (_, _) => notifyListeners());
  }
  late final ProviderSubscription _sub;
  @override
  void dispose() {
    _sub.close();
    super.dispose();
  }
}
