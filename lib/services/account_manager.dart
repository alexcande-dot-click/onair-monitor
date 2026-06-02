import '../data/db/app_database.dart';
import '../data/repositories/company_repository.dart';
import '../data/secure/key_store.dart';

/// Owns the set of monitored companies, the active selection, and api-key cache.
class AccountManager {
  AccountManager({
    required AppDatabase db,
    required KeyStore keys,
    required CompanyRepository companyRepo,
  })  : _db = db,
        _keys = keys,
        _companyRepo = companyRepo;

  final AppDatabase _db;
  final KeyStore _keys;
  final CompanyRepository _companyRepo;

  String? _activeCompanyId;
  String? _activeApiKey;

  String? get activeCompanyId => _activeCompanyId;
  String? get activeApiKey => _activeApiKey;

  /// Load persisted active account + its key into memory (call at startup).
  Future<void> load() async {
    final active = await _db.activeAccount();
    if (active != null) {
      _activeCompanyId = active.companyId;
      _activeApiKey = await _keys.read(active.companyId);
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
    _activeApiKey = apiKey;
  }

  Future<void> switchTo(String companyId) async {
    await _db.setActiveAccount(companyId);
    _activeCompanyId = companyId;
    _activeApiKey = await _keys.read(companyId);
  }

  Future<void> removeAccount(String companyId) async {
    await _db.deleteAccount(companyId);
    await _keys.delete(companyId);
    if (_activeCompanyId == companyId) {
      final next = await _db.allAccounts();
      if (next.isEmpty) {
        _activeCompanyId = null;
        _activeApiKey = null;
      } else {
        await switchTo(next.first.companyId);
      }
    }
  }
}
