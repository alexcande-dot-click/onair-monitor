/// AircraftStatus per verified API_MEMORY.md (3 == Flying).
enum AircraftStatus {
  idle, // 0 — parked, has CurrentAirportId
  flying, // 3 — live lat/lon/heading/speed
  other; // any other transitional value

  static AircraftStatus fromCode(int? code) => switch (code) {
        0 => AircraftStatus.idle,
        3 => AircraftStatus.flying,
        _ => AircraftStatus.other,
      };
}
