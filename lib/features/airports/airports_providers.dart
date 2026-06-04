import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../domain/models/airport.dart';
import '../../providers/providers.dart';
import '../fbo/fbo_providers.dart';
import '../live_map/live_map_providers.dart';
import 'airports_logic.dart';

final airportProvider =
    FutureProvider.autoDispose.family<Airport?, String>((ref, icao) {
  return ref.watch(airportRepositoryProvider).fetchAirport(icao);
});

final airportSearchProvider = StateProvider<String>((ref) => '');

final relevantAirportsProvider =
    FutureProvider.autoDispose<List<RelevantAirport>>((ref) async {
  final fleet = await ref.watch(fleetProvider.future);
  final fbos = await ref.watch(fbosProvider.future);
  final flightRepo = ref.watch(flightRepositoryProvider);

  final dests = <String, Airport?>{};
  await Future.wait(fleet.where((a) => a.isFlying).map((a) async {
    try {
      final f = await flightRepo.fetchLatestFlight(a.id);
      dests[a.id] = f?.arrivalIntendedAirport;
    } catch (_) {
      dests[a.id] = null;
    }
  }));

  return relevantAirports(
      fleet: fleet, destinationsByAircraftId: dests, fbos: fbos);
});
