import 'package:latlong2/latlong.dart';

/// Advance [from] along [headingDeg] at [groundSpeedKts] for [dt].
/// Returns the new position (unchanged if speed <= 0).
LatLng deadReckon(
  LatLng from,
  double headingDeg,
  double groundSpeedKts,
  Duration dt,
) {
  if (groundSpeedKts <= 0) return from;
  final metres = groundSpeedKts * 1852 / 3600 * dt.inMilliseconds / 1000;
  return const Distance().offset(from, metres, headingDeg);
}
