import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/core/format/formatters.dart';

void main() {
  final now = DateTime(2026, 6, 3, 12, 0, 0);
  test('future durations', () {
    expect(relativeUntil(now.add(const Duration(hours: 2, minutes: 10)), now: now), '2h 10m');
    expect(relativeUntil(now.add(const Duration(minutes: 45)), now: now), '45m');
    expect(relativeUntil(now.add(const Duration(seconds: 30)), now: now), '<1m');
  });
  test('past or now clamps to 0m', () {
    expect(relativeUntil(now.subtract(const Duration(minutes: 5)), now: now), '0m');
  });
}
