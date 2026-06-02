import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/core/error/api_failure.dart';

void main() {
  test('ApiFailure exposes a human message', () {
    expect(const ApiAuthFailure('bad key').message, 'bad key');
    expect(const NotFoundFailure('EXXX not found').message, 'EXXX not found');
    expect(const NetworkFailure('offline').message, 'offline');
    expect(const UnknownFailure('boom').message, 'boom');
  });

  test('failures are equatable by message and type', () {
    expect(const ApiAuthFailure('x'), const ApiAuthFailure('x'));
    expect(const ApiAuthFailure('x') == const NetworkFailure('x'), isFalse);
  });
}
