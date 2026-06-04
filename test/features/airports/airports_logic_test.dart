import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/domain/models/airport.dart';
import 'package:onairmonitor/domain/models/fbo.dart';
import 'package:onairmonitor/features/airports/airports_logic.dart';

void main() {
  test('relevantAirports dedups + tags reasons + counts grounded', () {
    final fleet = [
      const Aircraft(id: 'g1', aircraftStatusCode: 0, currentAirport: Airport(icao: 'EETN', name: 'Tallinn')),
      const Aircraft(id: 'g2', aircraftStatusCode: 0, currentAirport: Airport(icao: 'EETN')),
      const Aircraft(id: 'f1', aircraftStatusCode: 3),
    ];
    final dests = {'f1': const Airport(icao: 'ENGM', name: 'Oslo')};
    final fbos = [const Fbo(id: 'fbo1', name: 'Base', airport: Airport(icao: 'EETN'))];

    final out = relevantAirports(
        fleet: fleet, destinationsByAircraftId: dests, fbos: fbos);

    final eetn = out.firstWhere((r) => r.icao == 'EETN');
    expect(eetn.reasons, containsAll({AirportReason.grounded, AirportReason.fbo}));
    expect(eetn.groundedCount, 2);
    final engm = out.firstWhere((r) => r.icao == 'ENGM');
    expect(engm.reasons, {AirportReason.destination});
    expect(out.map((r) => r.icao), ['EETN', 'ENGM']);
  });

  test('skips entries without ICAO', () {
    final fleet = [const Aircraft(id: 'g', aircraftStatusCode: 0)];
    final out = relevantAirports(
        fleet: fleet, destinationsByAircraftId: const {}, fbos: const []);
    expect(out, isEmpty);
  });
}
