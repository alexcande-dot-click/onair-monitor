import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/fbo.dart';

void main() {
  Map<String, dynamic> json(Map<String, dynamic> over) => {
        'Id': 'f1',
        'Name': 'airBaltic 01',
        'AirportId': 'a1',
        'Airport': {'ICAO': 'EETN', 'Name': 'Tallinn', 'City': 'Tallinn'},
        'Fuel100LLCapacity': 1000.0,
        'Fuel100LLQuantity': 250.0,
        'Fuel100LLSellPrice': 6.5,
        'AllowFuel100LLSelling': true,
        'FuelJetCapacity': 2000.0,
        'AllowFuelJetSelling': false,
        'AircraftHangarCapacity': 3,
        'AircraftTieDownCapacity': 5,
        'SleepingCapacity': 4.0,
        'WorkshopSEP': true,
        'WorkshopJet': true,
        'WorkshopUnderConstruction': true,
        ...over,
      };

  test('maps embedded airport + fuel + parking + workshops', () {
    final f = Fbo.fromJson(json({}));
    expect(f.name, 'airBaltic 01');
    expect(f.airport?.icao, 'EETN');
    expect(f.airport?.city, 'Tallinn');
    expect(f.fuel100LLQuantity, 250.0);
    expect(f.allowFuel100LLSelling, isTrue);
    expect(f.aircraftHangarCapacity, 3);
    expect(f.workshopUnderConstruction, isTrue);
  });

  test('getters: sellsFuel, workshopNames, hasWorkshop', () {
    final f = Fbo.fromJson(json({}));
    expect(f.sells100LL, isTrue);
    expect(f.sellsJet, isFalse);
    expect(f.sellsFuel, isTrue);
    expect(f.workshopNames, ['SEP', 'Jet']);
    expect(f.hasWorkshop, isTrue);

    final none = Fbo.fromJson(json({'WorkshopSEP': false, 'WorkshopJet': false}));
    expect(none.workshopNames, isEmpty);
    expect(none.hasWorkshop, isFalse);
  });
}
