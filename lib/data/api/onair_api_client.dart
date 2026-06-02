import 'package:dio/dio.dart';
import '../../core/error/api_failure.dart';
import 'envelope.dart';

/// Resolves the API key for the company the call targets (multi-account).
typedef ApiKeyResolver = String? Function();

class OnAirApiClient {
  OnAirApiClient(this._dio, {required ApiKeyResolver apiKeyResolver})
      : _resolveKey = apiKeyResolver {
    _dio.options
      ..baseUrl = baseUrl
      ..connectTimeout = const Duration(seconds: 15)
      ..receiveTimeout = const Duration(seconds: 20);
  }

  static const String baseUrl = 'https://server1.onair.company/api/v1';

  final Dio _dio;
  final ApiKeyResolver _resolveKey;

  /// GET [path], inject the api key, unwrap the envelope, map errors.
  /// [keyOverride] lets setup validate a not-yet-saved key.
  Future<Object?> getJson(String path, {String? keyOverride}) async {
    final key = keyOverride ?? _resolveKey();
    try {
      final res = await _dio.get<Object?>(
        path,
        queryParameters: {'oa-apikey': key},
      );
      return unwrapEnvelope(res.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw const NotFoundFailure('Resource not found');
      }
      if (e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw const NetworkFailure('Network unavailable');
      }
      throw UnknownFailure(e.message ?? 'Request failed');
    }
  }
}
