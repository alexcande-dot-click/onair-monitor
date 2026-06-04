// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_statement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IncomeStatement {

@JsonKey(name: 'REVAccounts') List<FinanceAccount> get revAccounts;@JsonKey(name: 'REVAmount') double get revAmount;@JsonKey(name: 'EXPAccounts') List<FinanceAccount> get expAccounts;@JsonKey(name: 'EXPAmount') double get expAmount;@JsonKey(name: 'NetIncomeAmount') double get netIncomeAmount;
/// Create a copy of IncomeStatement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncomeStatementCopyWith<IncomeStatement> get copyWith => _$IncomeStatementCopyWithImpl<IncomeStatement>(this as IncomeStatement, _$identity);

  /// Serializes this IncomeStatement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncomeStatement&&const DeepCollectionEquality().equals(other.revAccounts, revAccounts)&&(identical(other.revAmount, revAmount) || other.revAmount == revAmount)&&const DeepCollectionEquality().equals(other.expAccounts, expAccounts)&&(identical(other.expAmount, expAmount) || other.expAmount == expAmount)&&(identical(other.netIncomeAmount, netIncomeAmount) || other.netIncomeAmount == netIncomeAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(revAccounts),revAmount,const DeepCollectionEquality().hash(expAccounts),expAmount,netIncomeAmount);

@override
String toString() {
  return 'IncomeStatement(revAccounts: $revAccounts, revAmount: $revAmount, expAccounts: $expAccounts, expAmount: $expAmount, netIncomeAmount: $netIncomeAmount)';
}


}

/// @nodoc
abstract mixin class $IncomeStatementCopyWith<$Res>  {
  factory $IncomeStatementCopyWith(IncomeStatement value, $Res Function(IncomeStatement) _then) = _$IncomeStatementCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'REVAccounts') List<FinanceAccount> revAccounts,@JsonKey(name: 'REVAmount') double revAmount,@JsonKey(name: 'EXPAccounts') List<FinanceAccount> expAccounts,@JsonKey(name: 'EXPAmount') double expAmount,@JsonKey(name: 'NetIncomeAmount') double netIncomeAmount
});




}
/// @nodoc
class _$IncomeStatementCopyWithImpl<$Res>
    implements $IncomeStatementCopyWith<$Res> {
  _$IncomeStatementCopyWithImpl(this._self, this._then);

  final IncomeStatement _self;
  final $Res Function(IncomeStatement) _then;

/// Create a copy of IncomeStatement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? revAccounts = null,Object? revAmount = null,Object? expAccounts = null,Object? expAmount = null,Object? netIncomeAmount = null,}) {
  return _then(_self.copyWith(
revAccounts: null == revAccounts ? _self.revAccounts : revAccounts // ignore: cast_nullable_to_non_nullable
as List<FinanceAccount>,revAmount: null == revAmount ? _self.revAmount : revAmount // ignore: cast_nullable_to_non_nullable
as double,expAccounts: null == expAccounts ? _self.expAccounts : expAccounts // ignore: cast_nullable_to_non_nullable
as List<FinanceAccount>,expAmount: null == expAmount ? _self.expAmount : expAmount // ignore: cast_nullable_to_non_nullable
as double,netIncomeAmount: null == netIncomeAmount ? _self.netIncomeAmount : netIncomeAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [IncomeStatement].
extension IncomeStatementPatterns on IncomeStatement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IncomeStatement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IncomeStatement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IncomeStatement value)  $default,){
final _that = this;
switch (_that) {
case _IncomeStatement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IncomeStatement value)?  $default,){
final _that = this;
switch (_that) {
case _IncomeStatement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'REVAccounts')  List<FinanceAccount> revAccounts, @JsonKey(name: 'REVAmount')  double revAmount, @JsonKey(name: 'EXPAccounts')  List<FinanceAccount> expAccounts, @JsonKey(name: 'EXPAmount')  double expAmount, @JsonKey(name: 'NetIncomeAmount')  double netIncomeAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IncomeStatement() when $default != null:
return $default(_that.revAccounts,_that.revAmount,_that.expAccounts,_that.expAmount,_that.netIncomeAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'REVAccounts')  List<FinanceAccount> revAccounts, @JsonKey(name: 'REVAmount')  double revAmount, @JsonKey(name: 'EXPAccounts')  List<FinanceAccount> expAccounts, @JsonKey(name: 'EXPAmount')  double expAmount, @JsonKey(name: 'NetIncomeAmount')  double netIncomeAmount)  $default,) {final _that = this;
switch (_that) {
case _IncomeStatement():
return $default(_that.revAccounts,_that.revAmount,_that.expAccounts,_that.expAmount,_that.netIncomeAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'REVAccounts')  List<FinanceAccount> revAccounts, @JsonKey(name: 'REVAmount')  double revAmount, @JsonKey(name: 'EXPAccounts')  List<FinanceAccount> expAccounts, @JsonKey(name: 'EXPAmount')  double expAmount, @JsonKey(name: 'NetIncomeAmount')  double netIncomeAmount)?  $default,) {final _that = this;
switch (_that) {
case _IncomeStatement() when $default != null:
return $default(_that.revAccounts,_that.revAmount,_that.expAccounts,_that.expAmount,_that.netIncomeAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IncomeStatement implements IncomeStatement {
  const _IncomeStatement({@JsonKey(name: 'REVAccounts') final  List<FinanceAccount> revAccounts = const [], @JsonKey(name: 'REVAmount') this.revAmount = 0, @JsonKey(name: 'EXPAccounts') final  List<FinanceAccount> expAccounts = const [], @JsonKey(name: 'EXPAmount') this.expAmount = 0, @JsonKey(name: 'NetIncomeAmount') this.netIncomeAmount = 0}): _revAccounts = revAccounts,_expAccounts = expAccounts;
  factory _IncomeStatement.fromJson(Map<String, dynamic> json) => _$IncomeStatementFromJson(json);

 final  List<FinanceAccount> _revAccounts;
@override@JsonKey(name: 'REVAccounts') List<FinanceAccount> get revAccounts {
  if (_revAccounts is EqualUnmodifiableListView) return _revAccounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_revAccounts);
}

@override@JsonKey(name: 'REVAmount') final  double revAmount;
 final  List<FinanceAccount> _expAccounts;
@override@JsonKey(name: 'EXPAccounts') List<FinanceAccount> get expAccounts {
  if (_expAccounts is EqualUnmodifiableListView) return _expAccounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_expAccounts);
}

@override@JsonKey(name: 'EXPAmount') final  double expAmount;
@override@JsonKey(name: 'NetIncomeAmount') final  double netIncomeAmount;

/// Create a copy of IncomeStatement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncomeStatementCopyWith<_IncomeStatement> get copyWith => __$IncomeStatementCopyWithImpl<_IncomeStatement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IncomeStatementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IncomeStatement&&const DeepCollectionEquality().equals(other._revAccounts, _revAccounts)&&(identical(other.revAmount, revAmount) || other.revAmount == revAmount)&&const DeepCollectionEquality().equals(other._expAccounts, _expAccounts)&&(identical(other.expAmount, expAmount) || other.expAmount == expAmount)&&(identical(other.netIncomeAmount, netIncomeAmount) || other.netIncomeAmount == netIncomeAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_revAccounts),revAmount,const DeepCollectionEquality().hash(_expAccounts),expAmount,netIncomeAmount);

@override
String toString() {
  return 'IncomeStatement(revAccounts: $revAccounts, revAmount: $revAmount, expAccounts: $expAccounts, expAmount: $expAmount, netIncomeAmount: $netIncomeAmount)';
}


}

/// @nodoc
abstract mixin class _$IncomeStatementCopyWith<$Res> implements $IncomeStatementCopyWith<$Res> {
  factory _$IncomeStatementCopyWith(_IncomeStatement value, $Res Function(_IncomeStatement) _then) = __$IncomeStatementCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'REVAccounts') List<FinanceAccount> revAccounts,@JsonKey(name: 'REVAmount') double revAmount,@JsonKey(name: 'EXPAccounts') List<FinanceAccount> expAccounts,@JsonKey(name: 'EXPAmount') double expAmount,@JsonKey(name: 'NetIncomeAmount') double netIncomeAmount
});




}
/// @nodoc
class __$IncomeStatementCopyWithImpl<$Res>
    implements _$IncomeStatementCopyWith<$Res> {
  __$IncomeStatementCopyWithImpl(this._self, this._then);

  final _IncomeStatement _self;
  final $Res Function(_IncomeStatement) _then;

/// Create a copy of IncomeStatement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? revAccounts = null,Object? revAmount = null,Object? expAccounts = null,Object? expAmount = null,Object? netIncomeAmount = null,}) {
  return _then(_IncomeStatement(
revAccounts: null == revAccounts ? _self._revAccounts : revAccounts // ignore: cast_nullable_to_non_nullable
as List<FinanceAccount>,revAmount: null == revAmount ? _self.revAmount : revAmount // ignore: cast_nullable_to_non_nullable
as double,expAccounts: null == expAccounts ? _self._expAccounts : expAccounts // ignore: cast_nullable_to_non_nullable
as List<FinanceAccount>,expAmount: null == expAmount ? _self.expAmount : expAmount // ignore: cast_nullable_to_non_nullable
as double,netIncomeAmount: null == netIncomeAmount ? _self.netIncomeAmount : netIncomeAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
