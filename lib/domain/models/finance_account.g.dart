// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FinanceAccount _$FinanceAccountFromJson(Map<String, dynamic> json) =>
    _FinanceAccount(
      name: json['Name'] as String?,
      shortName: json['ShortName'] as String?,
      order: (json['Order'] as num?)?.toInt() ?? 0,
      amount: (json['Amount'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$FinanceAccountToJson(_FinanceAccount instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'ShortName': instance.shortName,
      'Order': instance.order,
      'Amount': instance.amount,
    };
