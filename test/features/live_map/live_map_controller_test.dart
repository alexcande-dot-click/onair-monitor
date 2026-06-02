import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/features/live_map/live_map_controller.dart';

Aircraft flying(String id, double lat, double lon) => Aircraft(
      id: id,
      aircraftStatusCode: 3,
      latitude: lat,
      longitude: lon,
      heading: 90,
      groundSpeed: 360,
    );
Aircraft grounded(String id, double lat, double lon) =>
    Aircraft(id: id, aircraftStatusCode: 0, latitude: lat, longitude: lon);

void main() {
  late ProviderContainer c;
  setUp(() => c = ProviderContainer());
  tearDown(() => c.dispose());

  test('seed sets positions to real coordinates', () {
    c.read(liveMapControllerProvider.notifier)
        .seed([flying('a', 1, 2), grounded('b', 3, 4)]);
    final state = c.read(liveMapControllerProvider);
    expect(state.length, 2);
    expect(state.firstWhere((x) => x.aircraft.id == 'a').position, const LatLng(1, 2));
    expect(state.firstWhere((x) => x.aircraft.id == 'b').position, const LatLng(3, 4));
  });

  test('tick advances flying, leaves grounded', () {
    final ctrl = c.read(liveMapControllerProvider.notifier);
    ctrl.seed([flying('a', 0, 0), grounded('b', 3, 4)]);
    ctrl.tick(const Duration(seconds: 10));
    final state = c.read(liveMapControllerProvider);
    final a = state.firstWhere((x) => x.aircraft.id == 'a').position;
    final b = state.firstWhere((x) => x.aircraft.id == 'b').position;
    expect(a.longitude, greaterThan(0));
    expect(b, const LatLng(3, 4));
  });

  test('reseed snaps back to real positions', () {
    final ctrl = c.read(liveMapControllerProvider.notifier);
    ctrl.seed([flying('a', 0, 0)]);
    ctrl.tick(const Duration(seconds: 30));
    ctrl.seed([flying('a', 10, 20)]);
    expect(c.read(liveMapControllerProvider).single.position, const LatLng(10, 20));
  });
}
