import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import '../../domain/models/aircraft.dart';

class AnimatedAircraft {
  const AnimatedAircraft(this.aircraft, this.position);
  final Aircraft aircraft;
  final LatLng position;
}

class LiveMapController extends Notifier<List<AnimatedAircraft>> {
  @override
  List<AnimatedAircraft> build() => const [];

  /// Replace state with real fleet positions (called on each 15s poll).
  void seed(List<Aircraft> fleet) {
    state = [for (final a in fleet) AnimatedAircraft(a, a.position)];
  }
}

final liveMapControllerProvider =
    NotifierProvider<LiveMapController, List<AnimatedAircraft>>(
        LiveMapController.new);
