import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/mission.dart';

void main() {
  Map<String, dynamic> json() => {
        'Id': 'm1',
        'Category': 0,
        'State': 0,
        'MainAirport': {'ICAO': 'EETN', 'Latitude': 59.4, 'Longitude': 24.8},
        'Pay': 1000.0,
        'RealPay': 1200.0,
        'PayLastMinuteBonus': 100.0,
        'PayCompanyBonus': 50.0,
        'Penality': 300.0,
        'ReputationImpact': 0.5,
        'XP': 10,
        'ExpirationDate': '2026-06-04T10:00:00',
        'TotalDistance': 250.0,
        'Cargos': [
          {
            'Weight': 16535.0,
            'CargoType': {'Name': 'Electronics'},
            'DepartureAirport': {'ICAO': 'EETN'},
            'DestinationAirport': {'ICAO': 'ENGM'},
            'Distance': 250.0,
          }
        ],
        'Charters': [
          {
            'PassengersNumber': 103,
            'DepartureAirport': {'ICAO': 'EETN'},
            'DestinationAirport': {'ICAO': 'ENGM'},
            'Distance': 250.0,
          }
        ],
      };

  test('maps category, state, pay, legs', () {
    final m = Mission.fromJson(json());
    expect(m.category, MissionCategory.cargo);
    expect(m.state, 0);
    expect(m.mainAirport?.icao, 'EETN');
    expect(m.effectivePay, 1200.0);
    expect(m.expirationDate, DateTime.parse('2026-06-04T10:00:00'));
    expect(m.cargos.single.weight, 16535.0);
    expect(m.cargos.single.cargoType?.name, 'Electronics');
    expect(m.cargos.single.destinationAirport?.icao, 'ENGM');
    expect(m.charters.single.passengersNumber, 103);
  });

  test('category fromCode + effectivePay falls back to Pay', () {
    expect(MissionCategory.fromCode(1), MissionCategory.charter);
    expect(MissionCategory.fromCode(99), MissionCategory.other);
    final m = Mission.fromJson({...json(), 'RealPay': 0.0});
    expect(m.effectivePay, 1000.0);
  });
}
