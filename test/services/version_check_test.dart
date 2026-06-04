import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/services/version_check.dart';

void main() {
  test('isNewerVersion compares semver parts', () {
    expect(isNewerVersion('1.0.1', '1.0.0'), isTrue);
    expect(isNewerVersion('1.1.0', '1.0.9'), isTrue);
    expect(isNewerVersion('2.0.0', '1.9.9'), isTrue);
    expect(isNewerVersion('1.0.0', '1.0.0'), isFalse);
    expect(isNewerVersion('0.9.9', '1.0.0'), isFalse);
    expect(isNewerVersion('1.0', '1.0.0'), isFalse); // equal padded
    expect(isNewerVersion('1.0.0.1', '1.0.0'), isTrue);
  });
}
