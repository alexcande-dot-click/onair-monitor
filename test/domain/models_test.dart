import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/domain/models/company.dart';
import 'package:onairmonitor/domain/models/dashboard_kpis.dart';
import 'package:onairmonitor/domain/models/onair_notification.dart';

void main() {
  test('Company.fromJson reads name + code', () {
    final c = Company.fromJson(const {
      'Id': 'b44',
      'Name': 'Air Baltic',
      'AirlineCode': 'BTIC',
      'WorldId': 'be6',
      'Level': 4,
    });
    expect(c.id, 'b44');
    expect(c.name, 'Air Baltic');
    expect(c.airlineCode, 'BTIC');
    expect(c.worldId, 'be6');
    expect(c.level, 4);
  });

  test('DashboardKpis.fromJson maps KPI fields', () {
    final k = DashboardKpis.fromJson(const {
      'Cash': 305653.63,
      'Value': 325653.63,
      'Assets': 335653.63,
      'NumberOfAircrafts': 13,
      'NumberOfActiveAircrafts': 4,
      'NumberOfActivesMissions': 5,
      'NumberOfCompletedMissions': 202,
      'NumberOfEmployees': 59,
      'NumberOfFBOs': 1,
      'Level': 4,
      'XP': 1600,
      'XPNeeded': 4000,
      'Incomes1week': 1702590.06,
      'Incomes2weeks': 2208783.34,
      'ReturnOnAssets': 3.2,
    });
    expect(k.cash, 305653.63);
    expect(k.aircraftTotal, 13);
    expect(k.aircraftFlying, 4);
    expect(k.xp, 1600);
    expect(k.xpNeeded, 4000);
  });

  test('OnairNotification.fromJson parses time + description', () {
    final n = OnairNotification.fromJson(const {
      'Id': '568',
      'Category': 6,
      'ZuluEventTime': '2026-06-02T10:25:21.187',
      'Description': 'Job finished. Pay: 394,068.11 Cr.',
      'IsRead': false,
    });
    expect(n.id, '568');
    expect(n.category, 6);
    expect(n.description, 'Job finished. Pay: 394,068.11 Cr.');
    expect(n.eventTime, DateTime.parse('2026-06-02T10:25:21.187'));
  });
}
