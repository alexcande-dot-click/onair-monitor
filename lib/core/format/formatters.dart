String formatMoney(num value) {
  final rounded = value.round();
  return '${_thousands(rounded)} Cr';
}

String formatCompact(num value) {
  final v = value.abs();
  if (v >= 1000000) return '${(value / 1000000).toStringAsFixed(1)}M';
  if (v >= 1000) return '${(value / 1000).toStringAsFixed(1)}K';
  return value.round().toString();
}

String _thousands(int n) {
  final s = n.abs().toString();
  final buf = StringBuffer(n < 0 ? '-' : '');
  for (var i = 0; i < s.length; i++) {
    if (i != 0 && (s.length - i) % 3 == 0) buf.write(',');
    buf.write(s[i]);
  }
  return buf.toString();
}

String relativeTime(DateTime t, {DateTime? now}) {
  final ref = now ?? DateTime.now();
  final d = ref.difference(t);
  if (d.inSeconds < 45) return 'just now';
  if (d.inMinutes < 60) return '${d.inMinutes} min ago';
  if (d.inHours < 24) return '${d.inHours} h ago';
  return '${d.inDays} d ago';
}

/// Time remaining until [t] (future), e.g. "2h 10m", "45m", "<1m", "0m".
String relativeUntil(DateTime t, {DateTime? now}) {
  final ref = now ?? DateTime.now();
  final d = t.difference(ref);
  if (d.inSeconds <= 0) return '0m';
  if (d.inSeconds < 60) return '<1m';
  final h = d.inHours;
  final m = d.inMinutes % 60;
  return h > 0 ? '${h}h ${m}m' : '${m}m';
}
