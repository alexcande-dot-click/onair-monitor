import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:onairmonitor/features/live_map/dead_reckoning.dart';

void main() {
  const from = LatLng(0, 0);

  test('zero speed does not move', () {
    expect(deadReckon(from, 90, 0, const Duration(seconds: 10)), from);
  });

  test('advances the geodesic distance for the elapsed time', () {
    final out = deadReckon(from, 0, 360, const Duration(seconds: 10));
    final moved = const Distance().distance(from, out);
    expect(moved, closeTo(1852, 2));
    expect(out.latitude, greaterThan(from.latitude));
  });
}
