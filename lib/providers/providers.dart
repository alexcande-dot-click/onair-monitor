import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../data/api/onair_api_client.dart';
import '../data/db/app_database.dart';
import '../data/repositories/company_repository.dart';
import '../data/repositories/fleet_repository.dart';
import '../data/repositories/flight_repository.dart';
import '../data/repositories/notifications_repository.dart';
import '../data/secure/key_store.dart';
import '../services/account_manager.dart';
import '../services/foreground_poller.dart';
import 'dashboard_providers.dart';

/// Overridable singletons.
final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
});

final keyStoreProvider = Provider<KeyStore>((ref) => SecureKeyStore());

final dioProvider = Provider<Dio>((ref) => Dio());

/// Leaf bridge for the active API key. Shared by the API client (reader) and
/// the AccountManager (writer) so neither depends on the other in the graph.
final activeKeyHolderProvider = Provider<ActiveKeyHolder>((ref) => ActiveKeyHolder());

final apiClientProvider = Provider<OnAirApiClient>((ref) {
  final dio = ref.watch(dioProvider);
  final holder = ref.watch(activeKeyHolderProvider);
  return OnAirApiClient(dio, apiKeyResolver: () => holder.key);
});

final companyRepositoryProvider = Provider<CompanyRepository>(
    (ref) => CompanyRepository(ref.watch(apiClientProvider)));

final notificationsRepositoryProvider = Provider<NotificationsRepository>(
    (ref) => NotificationsRepository(ref.watch(apiClientProvider)));

final fleetRepositoryProvider = Provider<FleetRepository>(
    (ref) => FleetRepository(ref.watch(apiClientProvider)));

final flightRepositoryProvider = Provider<FlightRepository>(
    (ref) => FlightRepository(ref.watch(apiClientProvider)));

final accountManagerProvider = Provider<AccountManager>((ref) => AccountManager(
      db: ref.watch(appDatabaseProvider),
      keys: ref.watch(keyStoreProvider),
      companyRepo: ref.watch(companyRepositoryProvider),
      keyHolder: ref.watch(activeKeyHolderProvider),
    ));

/// Bumped after add/switch/remove so dependent providers refetch.
final activeAccountRevisionProvider = StateProvider<int>((ref) => 0);

/// The active account row (re-reads when the revision changes).
final activeAccountProvider = FutureProvider((ref) {
  ref.watch(activeAccountRevisionProvider);
  return ref.watch(accountManagerProvider).activeAccount();
});

/// All accounts (for the switcher).
final allAccountsProvider = FutureProvider((ref) {
  ref.watch(activeAccountRevisionProvider);
  return ref.watch(accountManagerProvider).allAccounts();
});

/// Starts a 60s poller that bumps pollTick; auto-disposes with the app.
final foregroundPollerProvider = Provider<void>((ref) {
  final poller = ForegroundPoller(
    interval: const Duration(seconds: 60),
    onTick: () => ref.read(pollTickProvider.notifier).state++,
  )..start();
  ref.onDispose(poller.stop);
});
