import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/employee.dart';

Map<String, dynamic> json(Map<String, dynamic> over) => {
      'Id': 'e1',
      'Pseudo': 'Philipp Muller',
      'Category': 2,
      'Status': 1,
      'Fatigue': 0.0,
      'Punctuality': 0.76,
      'Comfort': 0.9,
      'Happiness': 100.0,
      'FlightHoursInCompany': 12.5,
      'PerFlightHourWages': 30.0,
      'WeeklyGarantedSalary': 100.0,
      'Weight': 80.0,
      'IsOnline': false,
      'BusyUntil': '2026-06-03T04:04:36.253',
      'HomeAirport': {'ICAO': 'EETN', 'Latitude': 59.4, 'Longitude': 24.8},
      'ClassCertifications': [
        {'AircraftClass': {'ShortName': 'JET'}},
        {'AircraftClass': {'ShortName': 'SEPL'}},
      ],
      ...over,
    };

void main() {
  test('maps category enum, incl. mechanic(3) and unknown', () {
    expect(Employee.fromJson(json({'Category': 1})).category, CrewCategory.pilot);
    expect(Employee.fromJson(json({'Category': 2})).category, CrewCategory.cabinCrew);
    expect(Employee.fromJson(json({'Category': 3})).category, CrewCategory.mechanic);
    expect(Employee.fromJson(json({'Category': 9})).category, CrewCategory.other);
  });

  test('isAssignable only for pilot/cabin crew', () {
    expect(Employee.fromJson(json({'Category': 1})).isAssignable, isTrue);
    expect(Employee.fromJson(json({'Category': 2})).isAssignable, isTrue);
    expect(Employee.fromJson(json({'Category': 3})).isAssignable, isFalse);
  });

  test('mixed mood scale: 0-1 metrics x100, happiness as-is', () {
    final e = Employee.fromJson(json({}));
    expect(e.punctualityPercent.round(), 76);
    expect(e.comfortPercent.round(), 90);
    expect(e.fatiguePercent.round(), 0);
    expect(e.happinessPercent.round(), 100);
  });

  test('certifications, home airport, busyUntil, nullable currentAircraftId', () {
    final e = Employee.fromJson(json({}));
    expect(e.certificationShortNames, ['JET', 'SEPL']);
    expect(e.homeAirport?.icao, 'EETN');
    expect(e.busyUntil, DateTime.utc(2026, 6, 3, 4, 4, 36, 253));
    expect(e.currentAircraftId, isNull);
    expect(Employee.fromJson(json({'CurrentAircraftId': 'a1'})).currentAircraftId, 'a1');
  });
}
