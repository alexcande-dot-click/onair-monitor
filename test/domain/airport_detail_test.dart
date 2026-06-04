import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/airport.dart';

void main() {
  test('Airport.fromJson maps extended detail fields + runways', () {
    final a = Airport.fromJson(const {
      'ICAO': 'EETN',
      'IATA': 'TLL',
      'Name': 'Tallinn',
      'City': 'Tallinn',
      'State': 'Harju',
      'CountryCode': 'EE',
      'CountryName': 'Estonia',
      'Latitude': 59.41,
      'Longitude': 24.83,
      'Elevation': 130.0,
      'Size': 5,
      'TransitionAltitude': 5000,
      'HasLandRunway': true,
      'IsClosed': false,
      'IsMilitary': false,
      'MagVar': 9.0,
      'HasLights': true,
      'LastMETARDate': '2026-06-04T10:00:00',
      'Runways': [
        {
          'Name': '08',
          'MagneticHeading': 81,
          'Length': 10042,
          'HasIls': true,
          'IlsFrequency': 108300000.0,
          'SurfaceType': 4,
          'ApproachLights': 'ALSF1',
        }
      ],
    });
    expect(a.icao, 'EETN');
    expect(a.countryName, 'Estonia');
    expect(a.elevation, 130.0);
    expect(a.size, 5);
    expect(a.hasLandRunway, isTrue);
    expect(a.magVar, 9.0);
    expect(a.lastMetarDate, DateTime.utc(2026, 6, 4, 10, 0, 0));
    expect(a.runways.single.name, '08');
    expect(a.runways.single.magneticHeading, 81);
    expect(a.runways.single.hasIls, isTrue);
  });

  test('embedded Airport without detail fields still parses (defaults)', () {
    final a = Airport.fromJson(const {'ICAO': 'X', 'Latitude': 1.0, 'Longitude': 2.0});
    expect(a.runways, isEmpty);
    expect(a.size, 0);
    expect(a.isClosed, isFalse);
  });
}
