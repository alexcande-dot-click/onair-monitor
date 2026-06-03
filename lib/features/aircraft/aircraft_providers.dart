import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../domain/models/flight.dart';
import '../../providers/providers.dart';
import 'aircraft_logic.dart';

/// aircraftId -> note (device-only). Shared across tabs.
final aircraftNotesProvider = FutureProvider<Map<String, String>>((ref) {
  return ref.watch(appDatabaseProvider).readAircraftNotes();
});

/// Latest flight for a given aircraft (used to show origin→destination).
final aircraftLatestFlightProvider =
    FutureProvider.autoDispose.family<Flight?, String>((ref, aircraftId) {
  return ref.watch(flightRepositoryProvider).fetchLatestFlight(aircraftId);
});

final aircraftStatusFilterProvider =
    StateProvider<AircraftStatusFilter>((ref) => AircraftStatusFilter.all);
final aircraftQueryProvider = StateProvider<String>((ref) => '');
