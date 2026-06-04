import '../../domain/models/fbo.dart';

List<Fbo> filterFbos(List<Fbo> all, String query) {
  final q = query.trim().toLowerCase();
  if (q.isEmpty) return all;
  return all.where((f) {
    final icao = f.airport?.icao?.toLowerCase() ?? '';
    return f.name.toLowerCase().contains(q) || icao.contains(q);
  }).toList();
}

String fuelBadge(Fbo f) {
  if (f.sells100LL && f.sellsJet) return '100LL+Jet';
  if (f.sellsJet) return 'Jet';
  if (f.sells100LL) return '100LL';
  return '';
}
