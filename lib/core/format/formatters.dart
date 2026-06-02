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
