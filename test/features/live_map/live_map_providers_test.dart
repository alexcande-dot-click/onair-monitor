import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/features/live_map/live_map_controller.dart';
import 'package:onairmonitor/features/live_map/live_map_providers.dart';

AnimatedAircraft anim(String id, int status) => AnimatedAircraft(
    Aircraft(id: id, aircraftStatusCode: status), const LatLng(0, 0));

void main() {
  test('visibleAircraft hides grounded when toggle off', () {
    final list = [anim('a', 3), anim('b', 0)];
    expect(visibleAircraft(list, groundedVisible: true).length, 2);
    final flyingOnly = visibleAircraft(list, groundedVisible: false);
    expect(flyingOnly.length, 1);
    expect(flyingOnly.single.aircraft.id, 'a');
  });

  test('markerColor: flying = amber, grounded = grey', () {
    expect(markerColor(const Aircraft(id: 'a', aircraftStatusCode: 3)), const Color(0xFFFFC42E));
    expect(markerColor(const Aircraft(id: 'b', aircraftStatusCode: 0)), const Color(0xFF8A97A6));
  });
}
