// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_sheet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BalanceSheet {

@JsonKey(name: 'ASSAccounts') List<FinanceAccount> get assAccounts;@JsonKey(name: 'ASSAmount') double get assAmount;@JsonKey(name: 'LIAAccounts') List<FinanceAccount> get liaAccounts;@JsonKey(name: 'LIAAmount') double get liaAmount;@JsonKey(name: 'DeltaBalance') double get deltaBalance;
/// Create a copy of BalanceSheet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceSheetCopyWith<BalanceSheet> get copyWith => _$BalanceSheetCopyWithImpl<BalanceSheet>(this as BalanceSheet, _$identity);

  /// Serializes this BalanceSheet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceSheet&&const DeepCollectionEquality().equals(other.assAccounts, assAccounts)&&(identical(other.assAmount, assAmount) || other.assAmount == assAmount)&&const DeepCollectionEquality().equals(other.liaAccounts, liaAccounts)&&(identical(other.liaAmount, liaAmount) || other.liaAmount == liaAmount)&&(identical(other.deltaBalance, deltaBalance) || other.deltaBalance == deltaBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(assAccounts),assAmount,const DeepCollectionEquality().hash(liaAccounts),liaAmount,deltaBalance);

@override
String toString() {
  return 'BalanceSheet(assAccounts: $assAccounts, assAmount: $assAmount, liaAccounts: $liaAccounts, liaAmount: $liaAmount, deltaBalance: $deltaBalance)';
}


}

/// @nodoc
abstract mixin class $BalanceSheetCopyWith<$Res>  {
  factory $BalanceSheetCopyWith(BalanceSheet value, $Res Function(BalanceSheet) _then) = _$BalanceSheetCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ASSAccounts') List<FinanceAccount> assAccounts,@JsonKey(name: 'ASSAmount') double assAmount,@JsonKey(name: 'LIAAccounts') List<FinanceAccount> liaAccounts,@JsonKey(name: 'LIAAmount') double liaAmount,@JsonKey(name: 'DeltaBalance') double deltaBalance
});




}
/// @nodoc
class _$BalanceSheetCopyWithImpl<$Res>
    implements $BalanceSheetCopyWith<$Res> {
  _$BalanceSheetCopyWithImpl(this._self, this._then);

  final BalanceSheet _self;
  final $Res Function(BalanceSheet) _then;

/// Create a copy of BalanceSheet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assAccounts = null,Object? assAmount = null,Object? liaAccounts = null,Object? liaAmount = null,Object? deltaBalance = null,}) {
  return _then(_self.copyWith(
assAccounts: null == assAccounts ? _self.assAccounts : assAccounts // ignore: cast_nullable_to_non_nullable
as List<FinanceAccount>,assAmount: null == assAmount ? _self.assAmount : assAmount // ignore: cast_nullable_to_non_nullable
as double,liaAccounts: null == liaAccounts ? _self.liaAccounts : liaAccounts // ignore: cast_nullable_to_non_nullable
as List<FinanceAccount>,liaAmount: null == liaAmount ? _self.liaAmount : liaAmount // ignore: cast_nullable_to_non_nullable
as double,deltaBalance: null == deltaBalance ? _self.deltaBalance : deltaBalance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [BalanceSheet].
extension BalanceSheetPatterns on BalanceSheet {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BalanceSheet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BalanceSheet() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BalanceSheet value)  $default,){
final _that = this;
switch (_that) {
case _BalanceSheet():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BalanceSheet value)?  $default,){
final _that = this;
switch (_that) {
case _BalanceSheet() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ASSAccounts')  List<FinanceAccount> assAccounts, @JsonKey(name: 'ASSAmount')  double assAmount, @JsonKey(name: 'LIAAccounts')  List<FinanceAccount> liaAccounts, @JsonKey(name: 'LIAAmount')  double liaAmount, @JsonKey(name: 'DeltaBalance')  double deltaBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BalanceSheet() when $default != null:
return $default(_that.assAccounts,_that.assAmount,_that.liaAccounts,_that.liaAmount,_that.deltaBalance);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ASSAccounts')  List<FinanceAccount> assAccounts, @JsonKey(name: 'ASSAmount')  double assAmount, @JsonKey(name: 'LIAAccounts')  List<FinanceAccount> liaAccounts, @JsonKey(name: 'LIAAmount')  double liaAmount, @JsonKey(name: 'DeltaBalance')  double deltaBalance)  $default,) {final _that = this;
switch (_that) {
case _BalanceSheet():
return $default(_that.assAccounts,_that.assAmount,_that.liaAccounts,_that.liaAmount,_that.deltaBalance);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ASSAccounts')  List<FinanceAccount> assAccounts, @JsonKey(name: 'ASSAmount')  double assAmount, @JsonKey(name: 'LIAAccounts')  List<FinanceAccount> liaAccounts, @JsonKey(name: 'LIAAmount')  double liaAmount, @JsonKey(name: 'DeltaBalance')  double deltaBalance)?  $default,) {final _that = this;
switch (_that) {
case _BalanceSheet() when $default != null:
return $default(_that.assAccounts,_that.assAmount,_that.liaAccounts,_that.liaAmount,_that.deltaBalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BalanceSheet extends BalanceSheet {
  const _BalanceSheet({@JsonKey(name: 'ASSAccounts') final  List<FinanceAccount> assAccounts = const [], @JsonKey(name: 'ASSAmount') this.assAmount = 0, @JsonKey(name: 'LIAAccounts') final  List<FinanceAccount> liaAccounts = const [], @JsonKey(name: 'LIAAmount') this.liaAmount = 0, @JsonKey(name: 'DeltaBalance') this.deltaBalance = 0}): _assAccounts = assAccounts,_liaAccounts = liaAccounts,super._();
  factory _BalanceSheet.fromJson(Map<String, dynamic> json) => _$BalanceSheetFromJson(json);

 final  List<FinanceAccount> _assAccounts;
@override@JsonKey(name: 'ASSAccounts') List<FinanceAccount> get assAccounts {
  if (_assAccounts is EqualUnmodifiableListView) return _assAccounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assAccounts);
}

@override@JsonKey(name: 'ASSAmount') final  double assAmount;
 final  List<FinanceAccount> _liaAccounts;
@override@JsonKey(name: 'LIAAccounts') List<FinanceAccount> get liaAccounts {
  if (_liaAccounts is EqualUnmodifiableListView) return _liaAccounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_liaAccounts);
}

@override@JsonKey(name: 'LIAAmount') final  double liaAmount;
@override@JsonKey(name: 'DeltaBalance') final  double deltaBalance;

/// Create a copy of BalanceSheet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceSheetCopyWith<_BalanceSheet> get copyWith => __$BalanceSheetCopyWithImpl<_BalanceSheet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BalanceSheetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceSheet&&const DeepCollectionEquality().equals(other._assAccounts, _assAccounts)&&(identical(other.assAmount, assAmount) || other.assAmount == assAmount)&&const DeepCollectionEquality().equals(other._liaAccounts, _liaAccounts)&&(identical(other.liaAmount, liaAmount) || other.liaAmount == liaAmount)&&(identical(other.deltaBalance, deltaBalance) || other.deltaBalance == deltaBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_assAccounts),assAmount,const DeepCollectionEquality().hash(_liaAccounts),liaAmount,deltaBalance);

@override
String toString() {
  return 'BalanceSheet(assAccounts: $assAccounts, assAmount: $assAmount, liaAccounts: $liaAccounts, liaAmount: $liaAmount, deltaBalance: $deltaBalance)';
}


}

/// @nodoc
abstract mixin class _$BalanceSheetCopyWith<$Res> implements $BalanceSheetCopyWith<$Res> {
  factory _$BalanceSheetCopyWith(_BalanceSheet value, $Res Function(_BalanceSheet) _then) = __$BalanceSheetCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ASSAccounts') List<FinanceAccount> assAccounts,@JsonKey(name: 'ASSAmount') double assAmount,@JsonKey(name: 'LIAAccounts') List<FinanceAccount> liaAccounts,@JsonKey(name: 'LIAAmount') double liaAmount,@JsonKey(name: 'DeltaBalance') double deltaBalance
});




}
/// @nodoc
class __$BalanceSheetCopyWithImpl<$Res>
    implements _$BalanceSheetCopyWith<$Res> {
  __$BalanceSheetCopyWithImpl(this._self, this._then);

  final _BalanceSheet _self;
  final $Res Function(_BalanceSheet) _then;

/// Create a copy of BalanceSheet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assAccounts = null,Object? assAmount = null,Object? liaAccounts = null,Object? liaAmount = null,Object? deltaBalance = null,}) {
  return _then(_BalanceSheet(
assAccounts: null == assAccounts ? _self._assAccounts : assAccounts // ignore: cast_nullable_to_non_nullable
as List<FinanceAccount>,assAmount: null == assAmount ? _self.assAmount : assAmount // ignore: cast_nullable_to_non_nullable
as double,liaAccounts: null == liaAccounts ? _self._liaAccounts : liaAccounts // ignore: cast_nullable_to_non_nullable
as List<FinanceAccount>,liaAmount: null == liaAmount ? _self.liaAmount : liaAmount // ignore: cast_nullable_to_non_nullable
as double,deltaBalance: null == deltaBalance ? _self.deltaBalance : deltaBalance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
