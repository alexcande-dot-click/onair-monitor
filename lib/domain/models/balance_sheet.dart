import 'package:freezed_annotation/freezed_annotation.dart';
import 'finance_account.dart';

part 'balance_sheet.freezed.dart';
part 'balance_sheet.g.dart';

@freezed
abstract class BalanceSheet with _$BalanceSheet {
  const BalanceSheet._();
  const factory BalanceSheet({
    @JsonKey(name: 'ASSAccounts') @Default([]) List<FinanceAccount> assAccounts,
    @JsonKey(name: 'ASSAmount') @Default(0) double assAmount,
    @JsonKey(name: 'LIAAccounts') @Default([]) List<FinanceAccount> liaAccounts,
    @JsonKey(name: 'LIAAmount') @Default(0) double liaAmount,
    @JsonKey(name: 'DeltaBalance') @Default(0) double deltaBalance,
  }) = _BalanceSheet;

  factory BalanceSheet.fromJson(Map<String, dynamic> json) =>
      _$BalanceSheetFromJson(json);

  double get equity => assAmount - liaAmount;
}
