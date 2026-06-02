import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/core/theme/app_theme.dart';

void main() {
  test('theme is dark and uses the electric accent', () {
    final t = buildAppTheme();
    expect(t.brightness, Brightness.dark);
    expect(t.useMaterial3, isTrue);
    expect(t.colorScheme.primary, isNotNull);
  });
}
