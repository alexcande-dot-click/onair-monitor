// Private fields are assigned from named params; initializing formals can't be
// private named params, so this lint doesn't apply here.
// ignore_for_file: prefer_initializing_formals

import '../data/db/app_database.dart';
import '../data/repositories/company_repository.dart';
import '../data/secure/key_store.dart';

/// Tiny mutable bridge holding the active API key. Decouples the API client
/// from the AccountManager so they don't form a Riverpod dependency cycle.
class ActiveKeyHolder {
  String? key;
}

/// Owns the set of monitored companies, the active selection, and api-key cache.
class AccountManager {
  AccountManager({
    required AppDatabase db,
    required KeyStore keys,
    required CompanyRepository companyRepo,
    ActiveKeyHolder? keyHolder,
  })  : _db = db,
        _keys = keys,
        _companyRepo = companyRepo,
        _keyHolder = keyHolder ?? ActiveKeyHolder();

  final AppDatabase _db;
  final KeyStore _keys;
  final CompanyRepository _companyRepo;
  final ActiveKeyHolder _keyHolder;

  String? _activeCompanyId;

  String? get activeCompanyId => _activeCompanyId;
  String? get activeApiKey => _keyHolder.key;

  /// Load persisted active account + its key into memory (call at startup).
  Future<void> load() async {
    final active = await _db.activeAccount();
    if (active != null) {
      _activeCompanyId = active.companyId;
      _keyHolder.key = await _keys.read(active.companyId);
    }
  }

  Future<List<AccountRow>> allAccounts() => _db.allAccounts();
  Future<AccountRow?> activeAccount() => _db.activeAccount();

  /// Validate the credentials against `/company/{id}`, then persist + activate.
  /// Throws [ApiFailure] (e.g. ApiAuthFailure) and persists nothing on failure.
  Future<void> addAccount({
    required String companyId,
    required String apiKey,
  }) async {
    final company =
        await _companyRepo.fetchCompany(companyId, keyOverride: apiKey);
    await _keys.write(companyId, apiKey);
    await _db.upsertAccount(AccountRow(
      companyId: company.id,
      name: company.name,
      airlineCode: company.airlineCode,
      worldId: company.worldId,
    ));
    await _db.setActiveAccount(companyId);
    _activeCompanyId = companyId;
    _keyHolder.key = apiKey;
  }

  Future<void> switchTo(String companyId) async {
    await _db.setActiveAccount(companyId);
    _activeCompanyId = companyId;
    _keyHolder.key = await _keys.read(companyId);
  }

  Future<void> removeAccount(String companyId) async {
    await _db.deleteAccount(companyId);
    await _keys.delete(companyId);
    if (_activeCompanyId == companyId) {
      final next = await _db.allAccounts();
      if (next.isEmpty) {
        _activeCompanyId = null;
        _keyHolder.key = null;
      } else {
        await switchTo(next.first.companyId);
      }
    }
  }
}
