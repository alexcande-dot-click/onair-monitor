import 'package:freezed_annotation/freezed_annotation.dart';
import 'finance_account.dart';

part 'income_statement.freezed.dart';
part 'income_statement.g.dart';

@freezed
abstract class IncomeStatement with _$IncomeStatement {
  const factory IncomeStatement({
    @JsonKey(name: 'REVAccounts') @Default([]) List<FinanceAccount> revAccounts,
    @JsonKey(name: 'REVAmount') @Default(0) double revAmount,
    @JsonKey(name: 'EXPAccounts') @Default([]) List<FinanceAccount> expAccounts,
    @JsonKey(name: 'EXPAmount') @Default(0) double expAmount,
    @JsonKey(name: 'NetIncomeAmount') @Default(0) double netIncomeAmount,
  }) = _IncomeStatement;

  factory IncomeStatement.fromJson(Map<String, dynamic> json) =>
      _$IncomeStatementFromJson(json);
}
