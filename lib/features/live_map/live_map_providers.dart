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

/// Latest flight for the selected aircraft (trajectory endpoints).
final selectedFlightProvider = FutureProvider.autoDispose<Flight?>((ref) async {
  final id = ref.watch(selectedAircraftIdProvider);
  if (id == null) return null;
  return ref.watch(flightRepositoryProvider).fetchLatestFlight(id);
});
