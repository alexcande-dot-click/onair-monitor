// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FinanceAccount {

@JsonKey(name: 'Name') String? get name;@JsonKey(name: 'ShortName') String? get shortName;@JsonKey(name: 'Order') int get order;@JsonKey(name: 'Amount') double get amount;
/// Create a copy of FinanceAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinanceAccountCopyWith<FinanceAccount> get copyWith => _$FinanceAccountCopyWithImpl<FinanceAccount>(this as FinanceAccount, _$identity);

  /// Serializes this FinanceAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceAccount&&(identical(other.name, name) || other.name == name)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.order, order) || other.order == order)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,shortName,order,amount);

@override
String toString() {
  return 'FinanceAccount(name: $name, shortName: $shortName, order: $order, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $FinanceAccountCopyWith<$Res>  {
  factory $FinanceAccountCopyWith(FinanceAccount value, $Res Function(FinanceAccount) _then) = _$FinanceAccountCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Name') String? name,@JsonKey(name: 'ShortName') String? shortName,@JsonKey(name: 'Order') int order,@JsonKey(name: 'Amount') double amount
});




}
/// @nodoc
class _$FinanceAccountCopyWithImpl<$Res>
    implements $FinanceAccountCopyWith<$Res> {
  _$FinanceAccountCopyWithImpl(this._self, this._then);

  final FinanceAccount _self;
  final $Res Function(FinanceAccount) _then;

/// Create a copy of FinanceAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? shortName = freezed,Object? order = null,Object? amount = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [FinanceAccount].
extension FinanceAccountPatterns on FinanceAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinanceAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinanceAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinanceAccount value)  $default,){
final _that = this;
switch (_that) {
case _FinanceAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinanceAccount value)?  $default,){
final _that = this;
switch (_that) {
case _FinanceAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Name')  String? name, @JsonKey(name: 'ShortName')  String? shortName, @JsonKey(name: 'Order')  int order, @JsonKey(name: 'Amount')  double amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinanceAccount() when $default != null:
return $default(_that.name,_that.shortName,_that.order,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Name')  String? name, @JsonKey(name: 'ShortName')  String? shortName, @JsonKey(name: 'Order')  int order, @JsonKey(name: 'Amount')  double amount)  $default,) {final _that = this;
switch (_that) {
case _FinanceAccount():
return $default(_that.name,_that.shortName,_that.order,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Name')  String? name, @JsonKey(name: 'ShortName')  String? shortName, @JsonKey(name: 'Order')  int order, @JsonKey(name: 'Amount')  double amount)?  $default,) {final _that = this;
switch (_that) {
case _FinanceAccount() when $default != null:
return $default(_that.name,_that.shortName,_that.order,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinanceAccount implements FinanceAccount {
  const _FinanceAccount({@JsonKey(name: 'Name') this.name, @JsonKey(name: 'ShortName') this.shortName, @JsonKey(name: 'Order') this.order = 0, @JsonKey(name: 'Amount') this.amount = 0});
  factory _FinanceAccount.fromJson(Map<String, dynamic> json) => _$FinanceAccountFromJson(json);

@override@JsonKey(name: 'Name') final  String? name;
@override@JsonKey(name: 'ShortName') final  String? shortName;
@override@JsonKey(name: 'Order') final  int order;
@override@JsonKey(name: 'Amount') final  double amount;

/// Create a copy of FinanceAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinanceAccountCopyWith<_FinanceAccount> get copyWith => __$FinanceAccountCopyWithImpl<_FinanceAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinanceAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinanceAccount&&(identical(other.name, name) || other.name == name)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.order, order) || other.order == order)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,shortName,order,amount);

@override
String toString() {
  return 'FinanceAccount(name: $name, shortName: $shortName, order: $order, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$FinanceAccountCopyWith<$Res> implements $FinanceAccountCopyWith<$Res> {
  factory _$FinanceAccountCopyWith(_FinanceAccount value, $Res Function(_FinanceAccount) _then) = __$FinanceAccountCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Name') String? name,@JsonKey(name: 'ShortName') String? shortName,@JsonKey(name: 'Order') int order,@JsonKey(name: 'Amount') double amount
});




}
/// @nodoc
class __$FinanceAccountCopyWithImpl<$Res>
    implements _$FinanceAccountCopyWith<$Res> {
  __$FinanceAccountCopyWithImpl(this._self, this._then);

  final _FinanceAccount _self;
  final $Res Function(_FinanceAccount) _then;

/// Create a copy of FinanceAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? shortName = freezed,Object? order = null,Object? amount = null,}) {
  return _then(_FinanceAccount(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
