import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/features/notifications/notification_category.dart';

void main() {
  test('known categories map to labels', () {
    expect(categoryLabel(0), 'Route');
    expect(categoryLabel(6), 'Job');
    expect(categoryLabel(7), 'Market');
    expect(categoryLabel(99), 'Update');
  });

  test('icons are non-null for known and unknown', () {
    expect(categoryIcon(0), isA<IconData>());
    expect(categoryIcon(123), isA<IconData>());
  });
}
