import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/core/error/api_failure.dart';
import 'package:onairmonitor/data/api/envelope.dart';

void main() {
  test('unwraps Content object', () {
    final out = unwrapEnvelope({'Content': {'Name': 'Air Baltic'}});
    expect(out, {'Name': 'Air Baltic'});
  });

  test('unwraps Content list', () {
    final out = unwrapEnvelope({'Content': [1, 2, 3]});
    expect(out, [1, 2, 3]);
  });

  test('throws ApiAuthFailure on Error envelope', () {
    expect(
      () => unwrapEnvelope({'Error': 'Please provide your OnAir API key oa-apikey.'}),
      throwsA(isA<ApiAuthFailure>()),
    );
  });

  test('throws UnknownFailure when neither Content nor Error present', () {
    expect(() => unwrapEnvelope({'foo': 'bar'}), throwsA(isA<UnknownFailure>()));
  });
}
