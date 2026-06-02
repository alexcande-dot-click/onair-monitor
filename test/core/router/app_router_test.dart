import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/core/router/app_router.dart';
import 'package:onairmonitor/core/router/routes.dart';

void main() {
  test('no account → force setup', () {
    expect(redirectFor(hasAccount: false, location: Routes.dashboard), Routes.setup);
  });
  test('no account already on setup → no redirect', () {
    expect(redirectFor(hasAccount: false, location: Routes.setup), isNull);
  });
  test('has account on setup → go to dashboard', () {
    expect(redirectFor(hasAccount: true, location: Routes.setup), Routes.dashboard);
  });
  test('has account elsewhere → no redirect', () {
    expect(redirectFor(hasAccount: true, location: Routes.dashboard), isNull);
  });
}
