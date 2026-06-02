import 'dart:async';

/// Fires [onTick] every [interval] while running. Drives the 60s foreground refresh.
class ForegroundPoller {
  ForegroundPoller({required this.interval, required this.onTick});
  final Duration interval;
  final void Function() onTick;
  Timer? _timer;

  void start() {
    _timer?.cancel();
    _timer = Timer.periodic(interval, (_) => onTick());
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
  }
}
