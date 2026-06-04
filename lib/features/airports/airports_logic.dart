import '../../domain/models/aircraft.dart';
import '../../domain/models/airport.dart';
import '../../domain/models/fbo.dart';

enum AirportReason { fbo, grounded, destination }

class RelevantAirport {
  RelevantAirport({
    required this.icao,
    this.name,
    this.city,
    Set<AirportReason>? reasons,
    this.groundedCount = 0,
  }) : reasons = reasons ?? {};

  final String icao;
  String? name;
  String? city;
  final Set<AirportReason> reasons;
  int groundedCount;
}

List<RelevantAirport> relevantAirports({
  required List<Aircraft> fleet,
  required Map<String, Airport?> destinationsByAircraftId,
  required List<Fbo> fbos,
}) {
  final byIcao = <String, RelevantAirport>{};

  RelevantAirport entryFor(Airport ap) {
    final icao = ap.icao!;
    return byIcao.putIfAbsent(
        icao, () => RelevantAirport(icao: icao, name: ap.name, city: ap.city))
      ..name ??= ap.name
      ..city ??= ap.city;
  }

  for (final a in fleet) {
    if (!a.isFlying) {
      final ap = a.currentAirport;
      if (ap?.icao != null) {
        entryFor(ap!)
          ..reasons.add(AirportReason.grounded)
          ..groundedCount += 1;
      }
    } else {
      final dest = destinationsByAircraftId[a.id];
      if (dest?.icao != null) {
        entryFor(dest!).reasons.add(AirportReason.destination);
      }
    }
  }
  for (final f in fbos) {
    final ap = f.airport;
    if (ap?.icao != null) entryFor(ap!).reasons.add(AirportReason.fbo);
  }

  final list = byIcao.values.toList()..sort((a, b) => a.icao.compareTo(b.icao));
  return list;
}
