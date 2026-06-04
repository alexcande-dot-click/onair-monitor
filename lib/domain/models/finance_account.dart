import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_account.freezed.dart';
part 'finance_account.g.dart';

@freezed
abstract class FinanceAccount with _$FinanceAccount {
  const factory FinanceAccount({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'ShortName') String? shortName,
    @JsonKey(name: 'Order') @Default(0) int order,
    @JsonKey(name: 'Amount') @Default(0) double amount,
  }) = _FinanceAccount;

  factory FinanceAccount.fromJson(Map<String, dynamic> json) =>
      _$FinanceAccountFromJson(json);
}
