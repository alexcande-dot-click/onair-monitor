import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../domain/models/aircraft.dart';
import '../../domain/models/flight.dart';
import '../../providers/providers.dart';
import 'live_map_controller.dart';

/// Amber for flying, grey for grounded.
Color markerColor(Aircraft a) =>
    a.isFlying ? const Color(0xFFFFC42E) : const Color(0xFF8A97A6);

/// Filter the rendered set by the grounded toggle.
List<AnimatedAircraft> visibleAircraft(
  List<AnimatedAircraft> all, {
  required bool groundedVisible,
}) =>
    groundedVisible ? all : all.where((x) => x.aircraft.isFlying).toList();

/// Active company's fleet (re-fetched when invalidated by the 15s timer).
final fleetProvider = FutureProvider.autoDispose<List<Aircraft>>((ref) async {
  ref.watch(activeAccountRevisionProvider);
  final id = ref.watch(accountManagerProvider).activeCompanyId;
  if (id == null) return const [];
  return ref.watch(fleetRepositoryProvider).fetchFleet(id);
});

final selectedAircraftIdProvider = StateProvider<String?>((ref) => null);

final groundedVisibleProvider = StateProvider<bool>((ref) => true);

/// Seconds until the next fleet refresh (drives the on-map countdown badge).
final secondsUntilRefreshProvider = StateProvider<int>((ref) => 15);

/// The live (animated/refreshed) aircraft for the current selection. Reads from
/// the controller so altitude/speed update on each 15s reseed.
final selectedAircraftProvider = Provider.autoDispose<Aircraft?>((ref) {
  final id = ref.watch(selectedAircraftIdProvider);
  if (id == null) return null;
  for (final a in ref.watch(liveMapControllerProvider)) {
    if (a.aircraft.id == id) return a.aircraft;
  }
  return null;
});

/// Latest flight for the selected aircraft — only for flying aircraft
/// (grounded aircraft have no active route). Keyed on id + flying status so it
/// doesn't refetch on every altitude tick.
final selectedFlightProvider = FutureProvider.autoDispose<Flight?>((ref) async {
  final id = ref.watch(selectedAircraftIdProvider);
  if (id == null) return null;
  final flying =
      ref.watch(selectedAircraftProvider.select((a) => a?.isFlying ?? false));
  if (!flying) return null;
  return ref.watch(flightRepositoryProvider).fetchLatestFlight(id);
});
