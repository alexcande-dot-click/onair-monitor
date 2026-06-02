import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/features/live_map/live_map_controller.dart';

Aircraft at(String id, double lat, double lon) =>
    Aircraft(id: id, aircraftStatusCode: 3, latitude: lat, longitude: lon);

void main() {
  late ProviderContainer c;
  setUp(() => c = ProviderContainer());
  tearDown(() => c.dispose());

  test('seed sets positions to real coordinates', () {
    c.read(liveMapControllerProvider.notifier).seed([at('a', 1, 2), at('b', 3, 4)]);
    final state = c.read(liveMapControllerProvider);
    expect(state.length, 2);
    expect(state.firstWhere((x) => x.aircraft.id == 'a').position, const LatLng(1, 2));
    expect(state.firstWhere((x) => x.aircraft.id == 'b').position, const LatLng(3, 4));
  });

  test('reseed replaces positions with the new real fix', () {
    final ctrl = c.read(liveMapControllerProvider.notifier);
    ctrl.seed([at('a', 0, 0)]);
    ctrl.seed([at('a', 10, 20)]);
    expect(c.read(liveMapControllerProvider).single.position, const LatLng(10, 20));
  });
}
