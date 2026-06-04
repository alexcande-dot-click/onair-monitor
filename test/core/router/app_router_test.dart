import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/core/router/app_router.dart';
import 'package:onairmonitor/core/router/routes.dart';

void main() {
  test('no consent → force consent', () {
    expect(
        redirectFor(
            consentAccepted: false,
            hasAccount: false,
            location: Routes.dashboard),
        Routes.consent);
  });
  test('no consent, already on consent → no redirect', () {
    expect(
        redirectFor(
            consentAccepted: false, hasAccount: false, location: Routes.consent),
        isNull);
  });
  test('consent + no account → force setup', () {
    expect(
        redirectFor(
            consentAccepted: true,
            hasAccount: false,
            location: Routes.dashboard),
        Routes.setup);
  });
  test('consent + has account on setup → dashboard', () {
    expect(
        redirectFor(
            consentAccepted: true, hasAccount: true, location: Routes.setup),
        Routes.dashboard);
  });
  test('consent + has account elsewhere → no redirect', () {
    expect(
        redirectFor(
            consentAccepted: true,
            hasAccount: true,
            location: Routes.dashboard),
        isNull);
  });
}
