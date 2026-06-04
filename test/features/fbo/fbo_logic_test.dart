import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/airport.dart';
import 'package:onairmonitor/domain/models/fbo.dart';
import 'package:onairmonitor/features/fbo/fbo_logic.dart';

Fbo fbo(String id, String name, String icao, {bool ll = false, bool jet = false}) =>
    Fbo(
      id: id,
      name: name,
      airport: Airport(icao: icao),
      allowFuel100LLSelling: ll,
      allowFuelJetSelling: jet,
    );

void main() {
  test('filterFbos by name or ICAO (case-insensitive)', () {
    final all = [fbo('1', 'airBaltic 01', 'EETN'), fbo('2', 'Riga Base', 'EVRA')];
    expect(filterFbos(all, 'baltic').single.id, '1');
    expect(filterFbos(all, 'evra').single.id, '2');
    expect(filterFbos(all, '').length, 2);
  });

  test('fuelBadge reflects what is sold', () {
    expect(fuelBadge(fbo('1', 'a', 'X', ll: true, jet: true)), '100LL+Jet');
    expect(fuelBadge(fbo('2', 'b', 'X', jet: true)), 'Jet');
    expect(fuelBadge(fbo('3', 'c', 'X', ll: true)), '100LL');
    expect(fuelBadge(fbo('4', 'd', 'X')), '');
  });
}
