import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract interface class KeyStore {
  Future<void> write(String companyId, String apiKey);
  Future<String?> read(String companyId);
  Future<void> delete(String companyId);
}

String _k(String companyId) => 'apikey:$companyId';

class SecureKeyStore implements KeyStore {
  SecureKeyStore([FlutterSecureStorage? storage])
      : _storage = storage ?? const FlutterSecureStorage();
  final FlutterSecureStorage _storage;

  @override
  Future<void> write(String companyId, String apiKey) =>
      _storage.write(key: _k(companyId), value: apiKey);

  @override
  Future<String?> read(String companyId) => _storage.read(key: _k(companyId));

  @override
  Future<void> delete(String companyId) => _storage.delete(key: _k(companyId));
}

/// Test/double implementation.
class InMemoryKeyStore implements KeyStore {
  final Map<String, String> _m = {};
  @override
  Future<void> write(String companyId, String apiKey) async =>
      _m[companyId] = apiKey;
  @override
  Future<String?> read(String companyId) async => _m[companyId];
  @override
  Future<void> delete(String companyId) async => _m.remove(companyId);
}
