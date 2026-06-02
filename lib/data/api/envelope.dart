import '../../core/error/api_failure.dart';

/// Unwraps the OnAir `{"Content": ...}` envelope.
/// Throws [ApiAuthFailure] for the `{"Error": ...}` body (returned as HTTP 200).
Object? unwrapEnvelope(Object? body) {
  if (body is Map) {
    if (body.containsKey('Error')) {
      throw ApiAuthFailure(body['Error']?.toString() ?? 'API error');
    }
    if (body.containsKey('Content')) {
      return body['Content'];
    }
  }
  throw const UnknownFailure('Unexpected API response shape');
}
