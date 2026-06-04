/// Parse a "x.y.z" version string into a comparable list of ints.
List<int> _parts(String v) =>
    v.trim().split('.').map((p) => int.tryParse(p.trim()) ?? 0).toList();

/// True if [remote] is a strictly newer version than [current] (semver-ish).
bool isNewerVersion(String remote, String current) {
  final r = _parts(remote);
  final c = _parts(current);
  final len = r.length > c.length ? r.length : c.length;
  for (var i = 0; i < len; i++) {
    final rv = i < r.length ? r[i] : 0;
    final cv = i < c.length ? c[i] : 0;
    if (rv != cv) return rv > cv;
  }
  return false;
}
