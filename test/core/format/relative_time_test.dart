import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/core/format/formatters.dart';

void main() {
  final now = DateTime(2026, 6, 3, 12, 0, 0);

  test('buckets: now / minutes / hours / days', () {
    expect(relativeTime(now.subtract(const Duration(seconds: 20)), now: now), 'just now');
    expect(relativeTime(now.subtract(const Duration(minutes: 5)), now: now), '5 min ago');
    expect(relativeTime(now.subtract(const Duration(hours: 3)), now: now), '3 h ago');
    expect(relativeTime(now.subtract(const Duration(days: 2)), now: now), '2 d ago');
  });
}
