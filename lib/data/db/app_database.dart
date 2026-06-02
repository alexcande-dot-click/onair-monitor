import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

/// Plain value object returned to callers (keeps drift types out of services).
class AccountRow {
  const AccountRow({
    required this.companyId,
    required this.name,
    required this.airlineCode,
    required this.worldId,
  });
  final String companyId;
  final String name;
  final String? airlineCode;
  final String? worldId;
}

class Accounts extends Table {
  TextColumn get companyId => text()();
  TextColumn get name => text()();
  TextColumn get airlineCode => text().nullable()();
  TextColumn get worldId => text().nullable()();
  BoolColumn get isActive => boolean().withDefault(const Constant(false))();
  DateTimeColumn get addedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {companyId};
}

class NotificationMarkers extends Table {
  TextColumn get companyId => text()();
  DateTimeColumn get lastViewedEventTime => dateTime().nullable()();
  DateTimeColumn get lastPushedEventTime => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {companyId};
}

@DriftDatabase(tables: [Accounts, NotificationMarkers])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());
  AppDatabase.forTesting(super.executor);

  @override
  int get schemaVersion => 1;

  static final _epoch = DateTime.fromMillisecondsSinceEpoch(0);

  // --- accounts ---
  Future<void> upsertAccount(AccountRow a) =>
      into(accounts).insertOnConflictUpdate(AccountsCompanion.insert(
        companyId: a.companyId,
        name: a.name,
        airlineCode: Value(a.airlineCode),
        worldId: Value(a.worldId),
      ));

  Future<List<AccountRow>> allAccounts() async {
    final rows = await select(accounts).get();
    return rows.map(_toRow).toList();
  }

  Future<AccountRow?> activeAccount() async {
    final row = await (select(accounts)..where((t) => t.isActive.equals(true)))
        .getSingleOrNull();
    return row == null ? null : _toRow(row);
  }

  Future<void> setActiveAccount(String companyId) => transaction(() async {
        await update(accounts).write(const AccountsCompanion(
          isActive: Value(false),
        ));
        await (update(accounts)..where((t) => t.companyId.equals(companyId)))
            .write(const AccountsCompanion(isActive: Value(true)));
      });

  Future<void> deleteAccount(String companyId) =>
      (delete(accounts)..where((t) => t.companyId.equals(companyId))).go();

  AccountRow _toRow(Account a) => AccountRow(
        companyId: a.companyId,
        name: a.name,
        airlineCode: a.airlineCode,
        worldId: a.worldId,
      );

  // --- notification markers ---
  Future<DateTime> lastViewedEventTime(String companyId) async {
    final row = await (select(notificationMarkers)
          ..where((t) => t.companyId.equals(companyId)))
        .getSingleOrNull();
    return row?.lastViewedEventTime ?? _epoch;
  }

  Future<void> setLastViewedEventTime(String companyId, DateTime t) =>
      into(notificationMarkers).insertOnConflictUpdate(
        NotificationMarkersCompanion.insert(
          companyId: companyId,
          lastViewedEventTime: Value(t),
        ),
      );

  Future<DateTime?> lastPushedEventTime(String companyId) async {
    final row = await (select(notificationMarkers)
          ..where((t) => t.companyId.equals(companyId)))
        .getSingleOrNull();
    return row?.lastPushedEventTime;
  }

  Future<void> setLastPushedEventTime(String companyId, DateTime t) =>
      into(notificationMarkers).insertOnConflictUpdate(
        NotificationMarkersCompanion.insert(
          companyId: companyId,
          lastPushedEventTime: Value(t),
        ),
      );
}

LazyDatabase _openConnection() => LazyDatabase(() async {
      final dir = await getApplicationDocumentsDirectory();
      final file = File(p.join(dir.path, 'onair_monitor.sqlite'));
      return NativeDatabase.createInBackground(file);
    });
