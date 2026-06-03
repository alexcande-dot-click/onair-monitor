// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $AccountsTable extends Accounts with TableInfo<$AccountsTable, Account> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _airlineCodeMeta = const VerificationMeta(
    'airlineCode',
  );
  @override
  late final GeneratedColumn<String> airlineCode = GeneratedColumn<String>(
    'airline_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _worldIdMeta = const VerificationMeta(
    'worldId',
  );
  @override
  late final GeneratedColumn<String> worldId = GeneratedColumn<String>(
    'world_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _addedAtMeta = const VerificationMeta(
    'addedAt',
  );
  @override
  late final GeneratedColumn<DateTime> addedAt = GeneratedColumn<DateTime>(
    'added_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    companyId,
    name,
    airlineCode,
    worldId,
    isActive,
    addedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'accounts';
  @override
  VerificationContext validateIntegrity(
    Insertable<Account> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('airline_code')) {
      context.handle(
        _airlineCodeMeta,
        airlineCode.isAcceptableOrUnknown(
          data['airline_code']!,
          _airlineCodeMeta,
        ),
      );
    }
    if (data.containsKey('world_id')) {
      context.handle(
        _worldIdMeta,
        worldId.isAcceptableOrUnknown(data['world_id']!, _worldIdMeta),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('added_at')) {
      context.handle(
        _addedAtMeta,
        addedAt.isAcceptableOrUnknown(data['added_at']!, _addedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {companyId};
  @override
  Account map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Account(
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      airlineCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}airline_code'],
      ),
      worldId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}world_id'],
      ),
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      addedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}added_at'],
      )!,
    );
  }

  @override
  $AccountsTable createAlias(String alias) {
    return $AccountsTable(attachedDatabase, alias);
  }
}

class Account extends DataClass implements Insertable<Account> {
  final String companyId;
  final String name;
  final String? airlineCode;
  final String? worldId;
  final bool isActive;
  final DateTime addedAt;
  const Account({
    required this.companyId,
    required this.name,
    this.airlineCode,
    this.worldId,
    required this.isActive,
    required this.addedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['company_id'] = Variable<String>(companyId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || airlineCode != null) {
      map['airline_code'] = Variable<String>(airlineCode);
    }
    if (!nullToAbsent || worldId != null) {
      map['world_id'] = Variable<String>(worldId);
    }
    map['is_active'] = Variable<bool>(isActive);
    map['added_at'] = Variable<DateTime>(addedAt);
    return map;
  }

  AccountsCompanion toCompanion(bool nullToAbsent) {
    return AccountsCompanion(
      companyId: Value(companyId),
      name: Value(name),
      airlineCode: airlineCode == null && nullToAbsent
          ? const Value.absent()
          : Value(airlineCode),
      worldId: worldId == null && nullToAbsent
          ? const Value.absent()
          : Value(worldId),
      isActive: Value(isActive),
      addedAt: Value(addedAt),
    );
  }

  factory Account.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Account(
      companyId: serializer.fromJson<String>(json['companyId']),
      name: serializer.fromJson<String>(json['name']),
      airlineCode: serializer.fromJson<String?>(json['airlineCode']),
      worldId: serializer.fromJson<String?>(json['worldId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      addedAt: serializer.fromJson<DateTime>(json['addedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'companyId': serializer.toJson<String>(companyId),
      'name': serializer.toJson<String>(name),
      'airlineCode': serializer.toJson<String?>(airlineCode),
      'worldId': serializer.toJson<String?>(worldId),
      'isActive': serializer.toJson<bool>(isActive),
      'addedAt': serializer.toJson<DateTime>(addedAt),
    };
  }

  Account copyWith({
    String? companyId,
    String? name,
    Value<String?> airlineCode = const Value.absent(),
    Value<String?> worldId = const Value.absent(),
    bool? isActive,
    DateTime? addedAt,
  }) => Account(
    companyId: companyId ?? this.companyId,
    name: name ?? this.name,
    airlineCode: airlineCode.present ? airlineCode.value : this.airlineCode,
    worldId: worldId.present ? worldId.value : this.worldId,
    isActive: isActive ?? this.isActive,
    addedAt: addedAt ?? this.addedAt,
  );
  Account copyWithCompanion(AccountsCompanion data) {
    return Account(
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      name: data.name.present ? data.name.value : this.name,
      airlineCode: data.airlineCode.present
          ? data.airlineCode.value
          : this.airlineCode,
      worldId: data.worldId.present ? data.worldId.value : this.worldId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      addedAt: data.addedAt.present ? data.addedAt.value : this.addedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Account(')
          ..write('companyId: $companyId, ')
          ..write('name: $name, ')
          ..write('airlineCode: $airlineCode, ')
          ..write('worldId: $worldId, ')
          ..write('isActive: $isActive, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(companyId, name, airlineCode, worldId, isActive, addedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Account &&
          other.companyId == this.companyId &&
          other.name == this.name &&
          other.airlineCode == this.airlineCode &&
          other.worldId == this.worldId &&
          other.isActive == this.isActive &&
          other.addedAt == this.addedAt);
}

class AccountsCompanion extends UpdateCompanion<Account> {
  final Value<String> companyId;
  final Value<String> name;
  final Value<String?> airlineCode;
  final Value<String?> worldId;
  final Value<bool> isActive;
  final Value<DateTime> addedAt;
  final Value<int> rowid;
  const AccountsCompanion({
    this.companyId = const Value.absent(),
    this.name = const Value.absent(),
    this.airlineCode = const Value.absent(),
    this.worldId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.addedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AccountsCompanion.insert({
    required String companyId,
    required String name,
    this.airlineCode = const Value.absent(),
    this.worldId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.addedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : companyId = Value(companyId),
       name = Value(name);
  static Insertable<Account> custom({
    Expression<String>? companyId,
    Expression<String>? name,
    Expression<String>? airlineCode,
    Expression<String>? worldId,
    Expression<bool>? isActive,
    Expression<DateTime>? addedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (companyId != null) 'company_id': companyId,
      if (name != null) 'name': name,
      if (airlineCode != null) 'airline_code': airlineCode,
      if (worldId != null) 'world_id': worldId,
      if (isActive != null) 'is_active': isActive,
      if (addedAt != null) 'added_at': addedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AccountsCompanion copyWith({
    Value<String>? companyId,
    Value<String>? name,
    Value<String?>? airlineCode,
    Value<String?>? worldId,
    Value<bool>? isActive,
    Value<DateTime>? addedAt,
    Value<int>? rowid,
  }) {
    return AccountsCompanion(
      companyId: companyId ?? this.companyId,
      name: name ?? this.name,
      airlineCode: airlineCode ?? this.airlineCode,
      worldId: worldId ?? this.worldId,
      isActive: isActive ?? this.isActive,
      addedAt: addedAt ?? this.addedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (airlineCode.present) {
      map['airline_code'] = Variable<String>(airlineCode.value);
    }
    if (worldId.present) {
      map['world_id'] = Variable<String>(worldId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (addedAt.present) {
      map['added_at'] = Variable<DateTime>(addedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountsCompanion(')
          ..write('companyId: $companyId, ')
          ..write('name: $name, ')
          ..write('airlineCode: $airlineCode, ')
          ..write('worldId: $worldId, ')
          ..write('isActive: $isActive, ')
          ..write('addedAt: $addedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NotificationMarkersTable extends NotificationMarkers
    with TableInfo<$NotificationMarkersTable, NotificationMarker> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NotificationMarkersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _companyIdMeta = const VerificationMeta(
    'companyId',
  );
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastViewedEventTimeMeta =
      const VerificationMeta('lastViewedEventTime');
  @override
  late final GeneratedColumn<DateTime> lastViewedEventTime =
      GeneratedColumn<DateTime>(
        'last_viewed_event_time',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _lastPushedEventTimeMeta =
      const VerificationMeta('lastPushedEventTime');
  @override
  late final GeneratedColumn<DateTime> lastPushedEventTime =
      GeneratedColumn<DateTime>(
        'last_pushed_event_time',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  @override
  List<GeneratedColumn> get $columns => [
    companyId,
    lastViewedEventTime,
    lastPushedEventTime,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'notification_markers';
  @override
  VerificationContext validateIntegrity(
    Insertable<NotificationMarker> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('company_id')) {
      context.handle(
        _companyIdMeta,
        companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('last_viewed_event_time')) {
      context.handle(
        _lastViewedEventTimeMeta,
        lastViewedEventTime.isAcceptableOrUnknown(
          data['last_viewed_event_time']!,
          _lastViewedEventTimeMeta,
        ),
      );
    }
    if (data.containsKey('last_pushed_event_time')) {
      context.handle(
        _lastPushedEventTimeMeta,
        lastPushedEventTime.isAcceptableOrUnknown(
          data['last_pushed_event_time']!,
          _lastPushedEventTimeMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {companyId};
  @override
  NotificationMarker map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NotificationMarker(
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_id'],
      )!,
      lastViewedEventTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_viewed_event_time'],
      ),
      lastPushedEventTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_pushed_event_time'],
      ),
    );
  }

  @override
  $NotificationMarkersTable createAlias(String alias) {
    return $NotificationMarkersTable(attachedDatabase, alias);
  }
}

class NotificationMarker extends DataClass
    implements Insertable<NotificationMarker> {
  final String companyId;
  final DateTime? lastViewedEventTime;
  final DateTime? lastPushedEventTime;
  const NotificationMarker({
    required this.companyId,
    this.lastViewedEventTime,
    this.lastPushedEventTime,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['company_id'] = Variable<String>(companyId);
    if (!nullToAbsent || lastViewedEventTime != null) {
      map['last_viewed_event_time'] = Variable<DateTime>(lastViewedEventTime);
    }
    if (!nullToAbsent || lastPushedEventTime != null) {
      map['last_pushed_event_time'] = Variable<DateTime>(lastPushedEventTime);
    }
    return map;
  }

  NotificationMarkersCompanion toCompanion(bool nullToAbsent) {
    return NotificationMarkersCompanion(
      companyId: Value(companyId),
      lastViewedEventTime: lastViewedEventTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lastViewedEventTime),
      lastPushedEventTime: lastPushedEventTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lastPushedEventTime),
    );
  }

  factory NotificationMarker.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NotificationMarker(
      companyId: serializer.fromJson<String>(json['companyId']),
      lastViewedEventTime: serializer.fromJson<DateTime?>(
        json['lastViewedEventTime'],
      ),
      lastPushedEventTime: serializer.fromJson<DateTime?>(
        json['lastPushedEventTime'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'companyId': serializer.toJson<String>(companyId),
      'lastViewedEventTime': serializer.toJson<DateTime?>(lastViewedEventTime),
      'lastPushedEventTime': serializer.toJson<DateTime?>(lastPushedEventTime),
    };
  }

  NotificationMarker copyWith({
    String? companyId,
    Value<DateTime?> lastViewedEventTime = const Value.absent(),
    Value<DateTime?> lastPushedEventTime = const Value.absent(),
  }) => NotificationMarker(
    companyId: companyId ?? this.companyId,
    lastViewedEventTime: lastViewedEventTime.present
        ? lastViewedEventTime.value
        : this.lastViewedEventTime,
    lastPushedEventTime: lastPushedEventTime.present
        ? lastPushedEventTime.value
        : this.lastPushedEventTime,
  );
  NotificationMarker copyWithCompanion(NotificationMarkersCompanion data) {
    return NotificationMarker(
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      lastViewedEventTime: data.lastViewedEventTime.present
          ? data.lastViewedEventTime.value
          : this.lastViewedEventTime,
      lastPushedEventTime: data.lastPushedEventTime.present
          ? data.lastPushedEventTime.value
          : this.lastPushedEventTime,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NotificationMarker(')
          ..write('companyId: $companyId, ')
          ..write('lastViewedEventTime: $lastViewedEventTime, ')
          ..write('lastPushedEventTime: $lastPushedEventTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(companyId, lastViewedEventTime, lastPushedEventTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NotificationMarker &&
          other.companyId == this.companyId &&
          other.lastViewedEventTime == this.lastViewedEventTime &&
          other.lastPushedEventTime == this.lastPushedEventTime);
}

class NotificationMarkersCompanion extends UpdateCompanion<NotificationMarker> {
  final Value<String> companyId;
  final Value<DateTime?> lastViewedEventTime;
  final Value<DateTime?> lastPushedEventTime;
  final Value<int> rowid;
  const NotificationMarkersCompanion({
    this.companyId = const Value.absent(),
    this.lastViewedEventTime = const Value.absent(),
    this.lastPushedEventTime = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NotificationMarkersCompanion.insert({
    required String companyId,
    this.lastViewedEventTime = const Value.absent(),
    this.lastPushedEventTime = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : companyId = Value(companyId);
  static Insertable<NotificationMarker> custom({
    Expression<String>? companyId,
    Expression<DateTime>? lastViewedEventTime,
    Expression<DateTime>? lastPushedEventTime,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (companyId != null) 'company_id': companyId,
      if (lastViewedEventTime != null)
        'last_viewed_event_time': lastViewedEventTime,
      if (lastPushedEventTime != null)
        'last_pushed_event_time': lastPushedEventTime,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NotificationMarkersCompanion copyWith({
    Value<String>? companyId,
    Value<DateTime?>? lastViewedEventTime,
    Value<DateTime?>? lastPushedEventTime,
    Value<int>? rowid,
  }) {
    return NotificationMarkersCompanion(
      companyId: companyId ?? this.companyId,
      lastViewedEventTime: lastViewedEventTime ?? this.lastViewedEventTime,
      lastPushedEventTime: lastPushedEventTime ?? this.lastPushedEventTime,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (lastViewedEventTime.present) {
      map['last_viewed_event_time'] = Variable<DateTime>(
        lastViewedEventTime.value,
      );
    }
    if (lastPushedEventTime.present) {
      map['last_pushed_event_time'] = Variable<DateTime>(
        lastPushedEventTime.value,
      );
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotificationMarkersCompanion(')
          ..write('companyId: $companyId, ')
          ..write('lastViewedEventTime: $lastViewedEventTime, ')
          ..write('lastPushedEventTime: $lastPushedEventTime, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CrewAssignmentsTable extends CrewAssignments
    with TableInfo<$CrewAssignmentsTable, CrewAssignment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CrewAssignmentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _employeeIdMeta = const VerificationMeta(
    'employeeId',
  );
  @override
  late final GeneratedColumn<String> employeeId = GeneratedColumn<String>(
    'employee_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _aircraftIdMeta = const VerificationMeta(
    'aircraftId',
  );
  @override
  late final GeneratedColumn<String> aircraftId = GeneratedColumn<String>(
    'aircraft_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [employeeId, aircraftId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'crew_assignments';
  @override
  VerificationContext validateIntegrity(
    Insertable<CrewAssignment> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('employee_id')) {
      context.handle(
        _employeeIdMeta,
        employeeId.isAcceptableOrUnknown(data['employee_id']!, _employeeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_employeeIdMeta);
    }
    if (data.containsKey('aircraft_id')) {
      context.handle(
        _aircraftIdMeta,
        aircraftId.isAcceptableOrUnknown(data['aircraft_id']!, _aircraftIdMeta),
      );
    } else if (isInserting) {
      context.missing(_aircraftIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {employeeId};
  @override
  CrewAssignment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CrewAssignment(
      employeeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}employee_id'],
      )!,
      aircraftId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}aircraft_id'],
      )!,
    );
  }

  @override
  $CrewAssignmentsTable createAlias(String alias) {
    return $CrewAssignmentsTable(attachedDatabase, alias);
  }
}

class CrewAssignment extends DataClass implements Insertable<CrewAssignment> {
  final String employeeId;
  final String aircraftId;
  const CrewAssignment({required this.employeeId, required this.aircraftId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['employee_id'] = Variable<String>(employeeId);
    map['aircraft_id'] = Variable<String>(aircraftId);
    return map;
  }

  CrewAssignmentsCompanion toCompanion(bool nullToAbsent) {
    return CrewAssignmentsCompanion(
      employeeId: Value(employeeId),
      aircraftId: Value(aircraftId),
    );
  }

  factory CrewAssignment.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CrewAssignment(
      employeeId: serializer.fromJson<String>(json['employeeId']),
      aircraftId: serializer.fromJson<String>(json['aircraftId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'employeeId': serializer.toJson<String>(employeeId),
      'aircraftId': serializer.toJson<String>(aircraftId),
    };
  }

  CrewAssignment copyWith({String? employeeId, String? aircraftId}) =>
      CrewAssignment(
        employeeId: employeeId ?? this.employeeId,
        aircraftId: aircraftId ?? this.aircraftId,
      );
  CrewAssignment copyWithCompanion(CrewAssignmentsCompanion data) {
    return CrewAssignment(
      employeeId: data.employeeId.present
          ? data.employeeId.value
          : this.employeeId,
      aircraftId: data.aircraftId.present
          ? data.aircraftId.value
          : this.aircraftId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CrewAssignment(')
          ..write('employeeId: $employeeId, ')
          ..write('aircraftId: $aircraftId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(employeeId, aircraftId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CrewAssignment &&
          other.employeeId == this.employeeId &&
          other.aircraftId == this.aircraftId);
}

class CrewAssignmentsCompanion extends UpdateCompanion<CrewAssignment> {
  final Value<String> employeeId;
  final Value<String> aircraftId;
  final Value<int> rowid;
  const CrewAssignmentsCompanion({
    this.employeeId = const Value.absent(),
    this.aircraftId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CrewAssignmentsCompanion.insert({
    required String employeeId,
    required String aircraftId,
    this.rowid = const Value.absent(),
  }) : employeeId = Value(employeeId),
       aircraftId = Value(aircraftId);
  static Insertable<CrewAssignment> custom({
    Expression<String>? employeeId,
    Expression<String>? aircraftId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (employeeId != null) 'employee_id': employeeId,
      if (aircraftId != null) 'aircraft_id': aircraftId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CrewAssignmentsCompanion copyWith({
    Value<String>? employeeId,
    Value<String>? aircraftId,
    Value<int>? rowid,
  }) {
    return CrewAssignmentsCompanion(
      employeeId: employeeId ?? this.employeeId,
      aircraftId: aircraftId ?? this.aircraftId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (employeeId.present) {
      map['employee_id'] = Variable<String>(employeeId.value);
    }
    if (aircraftId.present) {
      map['aircraft_id'] = Variable<String>(aircraftId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CrewAssignmentsCompanion(')
          ..write('employeeId: $employeeId, ')
          ..write('aircraftId: $aircraftId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AircraftNotesTable extends AircraftNotes
    with TableInfo<$AircraftNotesTable, AircraftNote> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AircraftNotesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _aircraftIdMeta = const VerificationMeta(
    'aircraftId',
  );
  @override
  late final GeneratedColumn<String> aircraftId = GeneratedColumn<String>(
    'aircraft_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [aircraftId, note];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'aircraft_notes';
  @override
  VerificationContext validateIntegrity(
    Insertable<AircraftNote> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('aircraft_id')) {
      context.handle(
        _aircraftIdMeta,
        aircraftId.isAcceptableOrUnknown(data['aircraft_id']!, _aircraftIdMeta),
      );
    } else if (isInserting) {
      context.missing(_aircraftIdMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {aircraftId};
  @override
  AircraftNote map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AircraftNote(
      aircraftId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}aircraft_id'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      )!,
    );
  }

  @override
  $AircraftNotesTable createAlias(String alias) {
    return $AircraftNotesTable(attachedDatabase, alias);
  }
}

class AircraftNote extends DataClass implements Insertable<AircraftNote> {
  final String aircraftId;
  final String note;
  const AircraftNote({required this.aircraftId, required this.note});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['aircraft_id'] = Variable<String>(aircraftId);
    map['note'] = Variable<String>(note);
    return map;
  }

  AircraftNotesCompanion toCompanion(bool nullToAbsent) {
    return AircraftNotesCompanion(
      aircraftId: Value(aircraftId),
      note: Value(note),
    );
  }

  factory AircraftNote.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AircraftNote(
      aircraftId: serializer.fromJson<String>(json['aircraftId']),
      note: serializer.fromJson<String>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'aircraftId': serializer.toJson<String>(aircraftId),
      'note': serializer.toJson<String>(note),
    };
  }

  AircraftNote copyWith({String? aircraftId, String? note}) => AircraftNote(
    aircraftId: aircraftId ?? this.aircraftId,
    note: note ?? this.note,
  );
  AircraftNote copyWithCompanion(AircraftNotesCompanion data) {
    return AircraftNote(
      aircraftId: data.aircraftId.present
          ? data.aircraftId.value
          : this.aircraftId,
      note: data.note.present ? data.note.value : this.note,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AircraftNote(')
          ..write('aircraftId: $aircraftId, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(aircraftId, note);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AircraftNote &&
          other.aircraftId == this.aircraftId &&
          other.note == this.note);
}

class AircraftNotesCompanion extends UpdateCompanion<AircraftNote> {
  final Value<String> aircraftId;
  final Value<String> note;
  final Value<int> rowid;
  const AircraftNotesCompanion({
    this.aircraftId = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AircraftNotesCompanion.insert({
    required String aircraftId,
    required String note,
    this.rowid = const Value.absent(),
  }) : aircraftId = Value(aircraftId),
       note = Value(note);
  static Insertable<AircraftNote> custom({
    Expression<String>? aircraftId,
    Expression<String>? note,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (aircraftId != null) 'aircraft_id': aircraftId,
      if (note != null) 'note': note,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AircraftNotesCompanion copyWith({
    Value<String>? aircraftId,
    Value<String>? note,
    Value<int>? rowid,
  }) {
    return AircraftNotesCompanion(
      aircraftId: aircraftId ?? this.aircraftId,
      note: note ?? this.note,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (aircraftId.present) {
      map['aircraft_id'] = Variable<String>(aircraftId.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AircraftNotesCompanion(')
          ..write('aircraftId: $aircraftId, ')
          ..write('note: $note, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $AccountsTable accounts = $AccountsTable(this);
  late final $NotificationMarkersTable notificationMarkers =
      $NotificationMarkersTable(this);
  late final $CrewAssignmentsTable crewAssignments = $CrewAssignmentsTable(
    this,
  );
  late final $AircraftNotesTable aircraftNotes = $AircraftNotesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    accounts,
    notificationMarkers,
    crewAssignments,
    aircraftNotes,
  ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$AccountsTableCreateCompanionBuilder =
    AccountsCompanion Function({
      required String companyId,
      required String name,
      Value<String?> airlineCode,
      Value<String?> worldId,
      Value<bool> isActive,
      Value<DateTime> addedAt,
      Value<int> rowid,
    });
typedef $$AccountsTableUpdateCompanionBuilder =
    AccountsCompanion Function({
      Value<String> companyId,
      Value<String> name,
      Value<String?> airlineCode,
      Value<String?> worldId,
      Value<bool> isActive,
      Value<DateTime> addedAt,
      Value<int> rowid,
    });

class $$AccountsTableFilterComposer
    extends Composer<_$AppDatabase, $AccountsTable> {
  $$AccountsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get airlineCode => $composableBuilder(
    column: $table.airlineCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get worldId => $composableBuilder(
    column: $table.worldId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get addedAt => $composableBuilder(
    column: $table.addedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AccountsTableOrderingComposer
    extends Composer<_$AppDatabase, $AccountsTable> {
  $$AccountsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get airlineCode => $composableBuilder(
    column: $table.airlineCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get worldId => $composableBuilder(
    column: $table.worldId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get addedAt => $composableBuilder(
    column: $table.addedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AccountsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AccountsTable> {
  $$AccountsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get airlineCode => $composableBuilder(
    column: $table.airlineCode,
    builder: (column) => column,
  );

  GeneratedColumn<String> get worldId =>
      $composableBuilder(column: $table.worldId, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get addedAt =>
      $composableBuilder(column: $table.addedAt, builder: (column) => column);
}

class $$AccountsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AccountsTable,
          Account,
          $$AccountsTableFilterComposer,
          $$AccountsTableOrderingComposer,
          $$AccountsTableAnnotationComposer,
          $$AccountsTableCreateCompanionBuilder,
          $$AccountsTableUpdateCompanionBuilder,
          (Account, BaseReferences<_$AppDatabase, $AccountsTable, Account>),
          Account,
          PrefetchHooks Function()
        > {
  $$AccountsTableTableManager(_$AppDatabase db, $AccountsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AccountsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AccountsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AccountsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> companyId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> airlineCode = const Value.absent(),
                Value<String?> worldId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> addedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AccountsCompanion(
                companyId: companyId,
                name: name,
                airlineCode: airlineCode,
                worldId: worldId,
                isActive: isActive,
                addedAt: addedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String companyId,
                required String name,
                Value<String?> airlineCode = const Value.absent(),
                Value<String?> worldId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> addedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AccountsCompanion.insert(
                companyId: companyId,
                name: name,
                airlineCode: airlineCode,
                worldId: worldId,
                isActive: isActive,
                addedAt: addedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AccountsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AccountsTable,
      Account,
      $$AccountsTableFilterComposer,
      $$AccountsTableOrderingComposer,
      $$AccountsTableAnnotationComposer,
      $$AccountsTableCreateCompanionBuilder,
      $$AccountsTableUpdateCompanionBuilder,
      (Account, BaseReferences<_$AppDatabase, $AccountsTable, Account>),
      Account,
      PrefetchHooks Function()
    >;
typedef $$NotificationMarkersTableCreateCompanionBuilder =
    NotificationMarkersCompanion Function({
      required String companyId,
      Value<DateTime?> lastViewedEventTime,
      Value<DateTime?> lastPushedEventTime,
      Value<int> rowid,
    });
typedef $$NotificationMarkersTableUpdateCompanionBuilder =
    NotificationMarkersCompanion Function({
      Value<String> companyId,
      Value<DateTime?> lastViewedEventTime,
      Value<DateTime?> lastPushedEventTime,
      Value<int> rowid,
    });

class $$NotificationMarkersTableFilterComposer
    extends Composer<_$AppDatabase, $NotificationMarkersTable> {
  $$NotificationMarkersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastViewedEventTime => $composableBuilder(
    column: $table.lastViewedEventTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastPushedEventTime => $composableBuilder(
    column: $table.lastPushedEventTime,
    builder: (column) => ColumnFilters(column),
  );
}

class $$NotificationMarkersTableOrderingComposer
    extends Composer<_$AppDatabase, $NotificationMarkersTable> {
  $$NotificationMarkersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get companyId => $composableBuilder(
    column: $table.companyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastViewedEventTime => $composableBuilder(
    column: $table.lastViewedEventTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastPushedEventTime => $composableBuilder(
    column: $table.lastPushedEventTime,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$NotificationMarkersTableAnnotationComposer
    extends Composer<_$AppDatabase, $NotificationMarkersTable> {
  $$NotificationMarkersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<DateTime> get lastViewedEventTime => $composableBuilder(
    column: $table.lastViewedEventTime,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastPushedEventTime => $composableBuilder(
    column: $table.lastPushedEventTime,
    builder: (column) => column,
  );
}

class $$NotificationMarkersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $NotificationMarkersTable,
          NotificationMarker,
          $$NotificationMarkersTableFilterComposer,
          $$NotificationMarkersTableOrderingComposer,
          $$NotificationMarkersTableAnnotationComposer,
          $$NotificationMarkersTableCreateCompanionBuilder,
          $$NotificationMarkersTableUpdateCompanionBuilder,
          (
            NotificationMarker,
            BaseReferences<
              _$AppDatabase,
              $NotificationMarkersTable,
              NotificationMarker
            >,
          ),
          NotificationMarker,
          PrefetchHooks Function()
        > {
  $$NotificationMarkersTableTableManager(
    _$AppDatabase db,
    $NotificationMarkersTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NotificationMarkersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NotificationMarkersTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$NotificationMarkersTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> companyId = const Value.absent(),
                Value<DateTime?> lastViewedEventTime = const Value.absent(),
                Value<DateTime?> lastPushedEventTime = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NotificationMarkersCompanion(
                companyId: companyId,
                lastViewedEventTime: lastViewedEventTime,
                lastPushedEventTime: lastPushedEventTime,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String companyId,
                Value<DateTime?> lastViewedEventTime = const Value.absent(),
                Value<DateTime?> lastPushedEventTime = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NotificationMarkersCompanion.insert(
                companyId: companyId,
                lastViewedEventTime: lastViewedEventTime,
                lastPushedEventTime: lastPushedEventTime,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$NotificationMarkersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $NotificationMarkersTable,
      NotificationMarker,
      $$NotificationMarkersTableFilterComposer,
      $$NotificationMarkersTableOrderingComposer,
      $$NotificationMarkersTableAnnotationComposer,
      $$NotificationMarkersTableCreateCompanionBuilder,
      $$NotificationMarkersTableUpdateCompanionBuilder,
      (
        NotificationMarker,
        BaseReferences<
          _$AppDatabase,
          $NotificationMarkersTable,
          NotificationMarker
        >,
      ),
      NotificationMarker,
      PrefetchHooks Function()
    >;
typedef $$CrewAssignmentsTableCreateCompanionBuilder =
    CrewAssignmentsCompanion Function({
      required String employeeId,
      required String aircraftId,
      Value<int> rowid,
    });
typedef $$CrewAssignmentsTableUpdateCompanionBuilder =
    CrewAssignmentsCompanion Function({
      Value<String> employeeId,
      Value<String> aircraftId,
      Value<int> rowid,
    });

class $$CrewAssignmentsTableFilterComposer
    extends Composer<_$AppDatabase, $CrewAssignmentsTable> {
  $$CrewAssignmentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get employeeId => $composableBuilder(
    column: $table.employeeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get aircraftId => $composableBuilder(
    column: $table.aircraftId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CrewAssignmentsTableOrderingComposer
    extends Composer<_$AppDatabase, $CrewAssignmentsTable> {
  $$CrewAssignmentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get employeeId => $composableBuilder(
    column: $table.employeeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get aircraftId => $composableBuilder(
    column: $table.aircraftId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CrewAssignmentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CrewAssignmentsTable> {
  $$CrewAssignmentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get employeeId => $composableBuilder(
    column: $table.employeeId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get aircraftId => $composableBuilder(
    column: $table.aircraftId,
    builder: (column) => column,
  );
}

class $$CrewAssignmentsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CrewAssignmentsTable,
          CrewAssignment,
          $$CrewAssignmentsTableFilterComposer,
          $$CrewAssignmentsTableOrderingComposer,
          $$CrewAssignmentsTableAnnotationComposer,
          $$CrewAssignmentsTableCreateCompanionBuilder,
          $$CrewAssignmentsTableUpdateCompanionBuilder,
          (
            CrewAssignment,
            BaseReferences<
              _$AppDatabase,
              $CrewAssignmentsTable,
              CrewAssignment
            >,
          ),
          CrewAssignment,
          PrefetchHooks Function()
        > {
  $$CrewAssignmentsTableTableManager(
    _$AppDatabase db,
    $CrewAssignmentsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CrewAssignmentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CrewAssignmentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CrewAssignmentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> employeeId = const Value.absent(),
                Value<String> aircraftId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CrewAssignmentsCompanion(
                employeeId: employeeId,
                aircraftId: aircraftId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String employeeId,
                required String aircraftId,
                Value<int> rowid = const Value.absent(),
              }) => CrewAssignmentsCompanion.insert(
                employeeId: employeeId,
                aircraftId: aircraftId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CrewAssignmentsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CrewAssignmentsTable,
      CrewAssignment,
      $$CrewAssignmentsTableFilterComposer,
      $$CrewAssignmentsTableOrderingComposer,
      $$CrewAssignmentsTableAnnotationComposer,
      $$CrewAssignmentsTableCreateCompanionBuilder,
      $$CrewAssignmentsTableUpdateCompanionBuilder,
      (
        CrewAssignment,
        BaseReferences<_$AppDatabase, $CrewAssignmentsTable, CrewAssignment>,
      ),
      CrewAssignment,
      PrefetchHooks Function()
    >;
typedef $$AircraftNotesTableCreateCompanionBuilder =
    AircraftNotesCompanion Function({
      required String aircraftId,
      required String note,
      Value<int> rowid,
    });
typedef $$AircraftNotesTableUpdateCompanionBuilder =
    AircraftNotesCompanion Function({
      Value<String> aircraftId,
      Value<String> note,
      Value<int> rowid,
    });

class $$AircraftNotesTableFilterComposer
    extends Composer<_$AppDatabase, $AircraftNotesTable> {
  $$AircraftNotesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get aircraftId => $composableBuilder(
    column: $table.aircraftId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AircraftNotesTableOrderingComposer
    extends Composer<_$AppDatabase, $AircraftNotesTable> {
  $$AircraftNotesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get aircraftId => $composableBuilder(
    column: $table.aircraftId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AircraftNotesTableAnnotationComposer
    extends Composer<_$AppDatabase, $AircraftNotesTable> {
  $$AircraftNotesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get aircraftId => $composableBuilder(
    column: $table.aircraftId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);
}

class $$AircraftNotesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AircraftNotesTable,
          AircraftNote,
          $$AircraftNotesTableFilterComposer,
          $$AircraftNotesTableOrderingComposer,
          $$AircraftNotesTableAnnotationComposer,
          $$AircraftNotesTableCreateCompanionBuilder,
          $$AircraftNotesTableUpdateCompanionBuilder,
          (
            AircraftNote,
            BaseReferences<_$AppDatabase, $AircraftNotesTable, AircraftNote>,
          ),
          AircraftNote,
          PrefetchHooks Function()
        > {
  $$AircraftNotesTableTableManager(_$AppDatabase db, $AircraftNotesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AircraftNotesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AircraftNotesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AircraftNotesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> aircraftId = const Value.absent(),
                Value<String> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AircraftNotesCompanion(
                aircraftId: aircraftId,
                note: note,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String aircraftId,
                required String note,
                Value<int> rowid = const Value.absent(),
              }) => AircraftNotesCompanion.insert(
                aircraftId: aircraftId,
                note: note,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AircraftNotesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AircraftNotesTable,
      AircraftNote,
      $$AircraftNotesTableFilterComposer,
      $$AircraftNotesTableOrderingComposer,
      $$AircraftNotesTableAnnotationComposer,
      $$AircraftNotesTableCreateCompanionBuilder,
      $$AircraftNotesTableUpdateCompanionBuilder,
      (
        AircraftNote,
        BaseReferences<_$AppDatabase, $AircraftNotesTable, AircraftNote>,
      ),
      AircraftNote,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$AccountsTableTableManager get accounts =>
      $$AccountsTableTableManager(_db, _db.accounts);
  $$NotificationMarkersTableTableManager get notificationMarkers =>
      $$NotificationMarkersTableTableManager(_db, _db.notificationMarkers);
  $$CrewAssignmentsTableTableManager get crewAssignments =>
      $$CrewAssignmentsTableTableManager(_db, _db.crewAssignments);
  $$AircraftNotesTableTableManager get aircraftNotes =>
      $$AircraftNotesTableTableManager(_db, _db.aircraftNotes);
}
