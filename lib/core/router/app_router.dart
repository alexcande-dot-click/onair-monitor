import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../features/about/about_screen.dart';
import '../../features/aircraft/aircraft_screen.dart';
import '../../features/consent/consent_screen.dart';
import '../../features/airports/airports_screen.dart';
import '../../features/crew/crew_screen.dart';
import '../../features/dashboard/dashboard_screen.dart';
import '../../features/economics/economics_screen.dart';
import '../../features/fbo/fbo_screen.dart';
import '../../features/live_map/live_map_screen.dart';
import '../../features/notifications/notifications_screen.dart';
import '../../features/setup/setup_screen.dart';
import '../../features/shell/app_shell.dart';
import '../../providers/app_providers.dart';
import '../../providers/providers.dart';
import 'routes.dart';

/// Pure redirect decision (unit-tested).
String? redirectFor({
  required bool consentAccepted,
  required bool hasAccount,
  required String location,
}) {
  if (!consentAccepted) {
    return location == Routes.consent ? null : Routes.consent;
  }
  // Consent accepted: never stay on the consent screen.
  if (location == Routes.consent) return Routes.dashboard;
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
      final consentAccepted = ref.read(consentAcceptedProvider);
      final hasAccount =
          ref.read(accountManagerProvider).activeCompanyId != null;
      return redirectFor(
          consentAccepted: consentAccepted,
          hasAccount: hasAccount,
          location: state.matchedLocation);
    },
    refreshListenable: _RevisionListenable(ref),
    routes: [
      GoRoute(
        path: Routes.consent,
        builder: (context, state) => ConsentScreen(
          onAccepted: () => context.go(Routes.dashboard),
        ),
      ),
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
          body: const DashboardScreen(),
        ),
      ),
      GoRoute(
        path: Routes.liveMap,
        builder: (context, state) => AppShell(
          title: 'Live Map',
          onOpenNotifications: () => context.go(Routes.notifications),
          body: const LiveMapScreen(),
        ),
      ),
      GoRoute(
        path: Routes.crew,
        builder: (context, state) => AppShell(
          title: 'Crew',
          onOpenNotifications: () => context.go(Routes.notifications),
          body: const CrewScreen(),
        ),
      ),
      GoRoute(
        path: Routes.aircraft,
        builder: (context, state) => AppShell(
          title: 'Aircraft',
          onOpenNotifications: () => context.go(Routes.notifications),
          body: const AircraftScreen(),
        ),
      ),
      GoRoute(
        path: Routes.economics,
        builder: (context, state) => AppShell(
          title: 'Economics',
          onOpenNotifications: () => context.go(Routes.notifications),
          body: const EconomicsScreen(),
        ),
      ),
      GoRoute(
        path: Routes.fbo,
        builder: (context, state) => AppShell(
          title: 'FBO',
          onOpenNotifications: () => context.go(Routes.notifications),
          body: const FboScreen(),
        ),
      ),
      GoRoute(
        path: Routes.airports,
        builder: (context, state) => AppShell(
          title: 'Airports',
          onOpenNotifications: () => context.go(Routes.notifications),
          body: const AirportsScreen(),
        ),
      ),
      GoRoute(
        path: Routes.about,
        builder: (context, state) => AppShell(
          title: 'About',
          onOpenNotifications: () => context.go(Routes.notifications),
          body: const AboutScreen(),
        ),
      ),
      GoRoute(
        path: Routes.notifications,
        builder: (context, state) => AppShell(
          title: 'Notifications',
          onOpenNotifications: () {},
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
