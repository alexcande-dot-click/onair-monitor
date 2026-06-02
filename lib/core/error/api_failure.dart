sealed class ApiFailure implements Exception {
  const ApiFailure(this.message);
  final String message;

  @override
  bool operator ==(Object other) =>
      other is ApiFailure &&
      other.runtimeType == runtimeType &&
      other.message == message;

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() => '$runtimeType: $message';
}

/// API returned the `{"Error": ...}` envelope (missing/invalid key, etc.).
class ApiAuthFailure extends ApiFailure {
  const ApiAuthFailure(super.message);
}

/// HTTP 404 — unknown ICAO/UUID.
class NotFoundFailure extends ApiFailure {
  const NotFoundFailure(super.message);
}

/// Connectivity/timeout problem.
class NetworkFailure extends ApiFailure {
  const NetworkFailure(super.message);
}

/// Anything else.
class UnknownFailure extends ApiFailure {
  const UnknownFailure(super.message);
}
