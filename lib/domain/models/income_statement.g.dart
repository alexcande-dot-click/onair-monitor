// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_statement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IncomeStatement _$IncomeStatementFromJson(Map<String, dynamic> json) =>
    _IncomeStatement(
      revAccounts:
          (json['REVAccounts'] as List<dynamic>?)
              ?.map((e) => FinanceAccount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      revAmount: (json['REVAmount'] as num?)?.toDouble() ?? 0,
      expAccounts:
          (json['EXPAccounts'] as List<dynamic>?)
              ?.map((e) => FinanceAccount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      expAmount: (json['EXPAmount'] as num?)?.toDouble() ?? 0,
      netIncomeAmount: (json['NetIncomeAmount'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$IncomeStatementToJson(_IncomeStatement instance) =>
    <String, dynamic>{
      'REVAccounts': instance.revAccounts,
      'REVAmount': instance.revAmount,
      'EXPAccounts': instance.expAccounts,
      'EXPAmount': instance.expAmount,
      'NetIncomeAmount': instance.netIncomeAmount,
    };
