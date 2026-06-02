import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/core/format/formatters.dart';

void main() {
  test('money formats with thousands separators and Cr suffix', () {
    expect(formatMoney(305653.63), '305,654 Cr');
    expect(formatMoney(0), '0 Cr');
  });
  test('compact large numbers', () {
    expect(formatCompact(1702590), '1.7M');
    expect(formatCompact(950), '950');
  });
}
