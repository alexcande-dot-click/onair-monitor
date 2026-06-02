import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import '../../domain/models/aircraft.dart';
import 'dead_reckoning.dart';

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

  /// Advance flying aircraft by [dt]; grounded stay put.
  void tick(Duration dt) {
    state = [
      for (final cur in state)
        cur.aircraft.isFlying
            ? AnimatedAircraft(
                cur.aircraft,
                deadReckon(cur.position, cur.aircraft.heading,
                    cur.aircraft.groundSpeed, dt),
              )
            : cur,
    ];
  }
}

final liveMapControllerProvider =
    NotifierProvider<LiveMapController, List<AnimatedAircraft>>(
        LiveMapController.new);
