import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:onairmonitor/domain/enums.dart';
import 'package:onairmonitor/domain/models/aircraft.dart';
import 'package:onairmonitor/domain/models/flight.dart';

void main() {
  Map<String, dynamic> flyingJson() => {
        'Id': 'a1',
        'Identifier': 'N8444V',
        'AircraftStatus': 3,
        'Latitude': 55.3,
        'Longitude': 30.8,
        'Heading': 263.5,
        'Altitude': 35000.0,
        'IndicatedSpeed': 250.0,
        'GroundSpeed': 450.0,
        'fuelTotalGallons': 3849.0,
        'airframeCondition': 0.9636,
        'MustDoMaintenance': false,
        'AircraftType': {
          'DisplayName': 'DHC Q400',
          'FuelTotalCapacityInGallons': 7700.0,
          'AircraftClass': {'ShortName': 'METL', 'Name': 'Multi Turboprop'},
        },
      };

  test('Aircraft.fromJson maps fields + getters', () {
    final a = Aircraft.fromJson(flyingJson());
    expect(a.identifier, 'N8444V');
    expect(a.status, AircraftStatus.flying);
    expect(a.isFlying, isTrue);
    expect(a.position, const LatLng(55.3, 30.8));
    expect(a.heading, 263.5);
    expect(a.aircraftType?.displayName, 'DHC Q400');
    expect(a.conditionPercent.round(), 96);
    expect(a.fuelPercent.round(), 50);
  });

  test('grounded aircraft (status 0) is not flying', () {
    final a = Aircraft.fromJson({...flyingJson(), 'AircraftStatus': 0});
    expect(a.isFlying, isFalse);
  });

  test('fuelPercent guards divide-by-zero', () {
    final j = flyingJson();
    (j['AircraftType'] as Map)['FuelTotalCapacityInGallons'] = 0.0;
    expect(Aircraft.fromJson(j).fuelPercent, 0);
  });

  test('Flight.fromJson maps departure/arrival airports', () {
    final f = Flight.fromJson(const {
      'Id': 'f1',
      'DepartureAirport': {'Id': 'd', 'ICAO': 'EETN', 'Latitude': 59.4, 'Longitude': 24.8},
      'ArrivalIntendedAirport': {'Id': 'r', 'ICAO': 'ENGM', 'Latitude': 60.2, 'Longitude': 11.1},
      'PAXCount': 70,
      'IsAI': true,
    });
    expect(f.departureAirport?.icao, 'EETN');
    expect(f.arrivalIntendedAirport?.icao, 'ENGM');
    expect(f.departureAirport?.position, const LatLng(59.4, 24.8));
    expect(f.paxCount, 70);
    expect(f.isAI, isTrue);
  });
}
