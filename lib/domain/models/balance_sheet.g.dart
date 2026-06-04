// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_sheet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BalanceSheet _$BalanceSheetFromJson(Map<String, dynamic> json) =>
    _BalanceSheet(
      assAccounts:
          (json['ASSAccounts'] as List<dynamic>?)
              ?.map((e) => FinanceAccount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      assAmount: (json['ASSAmount'] as num?)?.toDouble() ?? 0,
      liaAccounts:
          (json['LIAAccounts'] as List<dynamic>?)
              ?.map((e) => FinanceAccount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      liaAmount: (json['LIAAmount'] as num?)?.toDouble() ?? 0,
      deltaBalance: (json['DeltaBalance'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$BalanceSheetToJson(_BalanceSheet instance) =>
    <String, dynamic>{
      'ASSAccounts': instance.assAccounts,
      'ASSAmount': instance.assAmount,
      'LIAAccounts': instance.liaAccounts,
      'LIAAmount': instance.liaAmount,
      'DeltaBalance': instance.deltaBalance,
    };
