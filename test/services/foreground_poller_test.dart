import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onairmonitor/services/foreground_poller.dart';

void main() {
  test('ticks on the configured interval until stopped', () {
    fakeAsync((async) {
      var ticks = 0;
      final poller = ForegroundPoller(
        interval: const Duration(seconds: 60),
        onTick: () => ticks++,
      )..start();

      async.elapse(const Duration(seconds: 60));
      expect(ticks, 1);
      async.elapse(const Duration(seconds: 120));
      expect(ticks, 3);

      poller.stop();
      async.elapse(const Duration(seconds: 120));
      expect(ticks, 3); // no more ticks after stop
    });
  });
}
