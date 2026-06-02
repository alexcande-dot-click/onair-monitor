// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aircraft_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AircraftClass {

@JsonKey(name: 'ShortName') String? get shortName;@JsonKey(name: 'Name') String? get name;
/// Create a copy of AircraftClass
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AircraftClassCopyWith<AircraftClass> get copyWith => _$AircraftClassCopyWithImpl<AircraftClass>(this as AircraftClass, _$identity);

  /// Serializes this AircraftClass to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AircraftClass&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shortName,name);

@override
String toString() {
  return 'AircraftClass(shortName: $shortName, name: $name)';
}


}

/// @nodoc
abstract mixin class $AircraftClassCopyWith<$Res>  {
  factory $AircraftClassCopyWith(AircraftClass value, $Res Function(AircraftClass) _then) = _$AircraftClassCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ShortName') String? shortName,@JsonKey(name: 'Name') String? name
});




}
/// @nodoc
class _$AircraftClassCopyWithImpl<$Res>
    implements $AircraftClassCopyWith<$Res> {
  _$AircraftClassCopyWithImpl(this._self, this._then);

  final AircraftClass _self;
  final $Res Function(AircraftClass) _then;

/// Create a copy of AircraftClass
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shortName = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AircraftClass].
extension AircraftClassPatterns on AircraftClass {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AircraftClass value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AircraftClass() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AircraftClass value)  $default,){
final _that = this;
switch (_that) {
case _AircraftClass():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AircraftClass value)?  $default,){
final _that = this;
switch (_that) {
case _AircraftClass() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ShortName')  String? shortName, @JsonKey(name: 'Name')  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AircraftClass() when $default != null:
return $default(_that.shortName,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ShortName')  String? shortName, @JsonKey(name: 'Name')  String? name)  $default,) {final _that = this;
switch (_that) {
case _AircraftClass():
return $default(_that.shortName,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ShortName')  String? shortName, @JsonKey(name: 'Name')  String? name)?  $default,) {final _that = this;
switch (_that) {
case _AircraftClass() when $default != null:
return $default(_that.shortName,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AircraftClass implements AircraftClass {
  const _AircraftClass({@JsonKey(name: 'ShortName') this.shortName, @JsonKey(name: 'Name') this.name});
  factory _AircraftClass.fromJson(Map<String, dynamic> json) => _$AircraftClassFromJson(json);

@override@JsonKey(name: 'ShortName') final  String? shortName;
@override@JsonKey(name: 'Name') final  String? name;

/// Create a copy of AircraftClass
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AircraftClassCopyWith<_AircraftClass> get copyWith => __$AircraftClassCopyWithImpl<_AircraftClass>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AircraftClassToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AircraftClass&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shortName,name);

@override
String toString() {
  return 'AircraftClass(shortName: $shortName, name: $name)';
}


}

/// @nodoc
abstract mixin class _$AircraftClassCopyWith<$Res> implements $AircraftClassCopyWith<$Res> {
  factory _$AircraftClassCopyWith(_AircraftClass value, $Res Function(_AircraftClass) _then) = __$AircraftClassCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ShortName') String? shortName,@JsonKey(name: 'Name') String? name
});




}
/// @nodoc
class __$AircraftClassCopyWithImpl<$Res>
    implements _$AircraftClassCopyWith<$Res> {
  __$AircraftClassCopyWithImpl(this._self, this._then);

  final _AircraftClass _self;
  final $Res Function(_AircraftClass) _then;

/// Create a copy of AircraftClass
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shortName = freezed,Object? name = freezed,}) {
  return _then(_AircraftClass(
shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AircraftType {

@JsonKey(name: 'DisplayName') String? get displayName;@JsonKey(name: 'TypeName') String? get typeName;@JsonKey(name: 'AircraftClass') AircraftClass? get aircraftClass;@JsonKey(name: 'FuelTotalCapacityInGallons') double get fuelCapacityGallons;@JsonKey(name: 'seats') int get seats;@JsonKey(name: 'needsCopilot') bool get needsCopilot;
/// Create a copy of AircraftType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AircraftTypeCopyWith<AircraftType> get copyWith => _$AircraftTypeCopyWithImpl<AircraftType>(this as AircraftType, _$identity);

  /// Serializes this AircraftType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AircraftType&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.aircraftClass, aircraftClass) || other.aircraftClass == aircraftClass)&&(identical(other.fuelCapacityGallons, fuelCapacityGallons) || other.fuelCapacityGallons == fuelCapacityGallons)&&(identical(other.seats, seats) || other.seats == seats)&&(identical(other.needsCopilot, needsCopilot) || other.needsCopilot == needsCopilot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,typeName,aircraftClass,fuelCapacityGallons,seats,needsCopilot);

@override
String toString() {
  return 'AircraftType(displayName: $displayName, typeName: $typeName, aircraftClass: $aircraftClass, fuelCapacityGallons: $fuelCapacityGallons, seats: $seats, needsCopilot: $needsCopilot)';
}


}

/// @nodoc
abstract mixin class $AircraftTypeCopyWith<$Res>  {
  factory $AircraftTypeCopyWith(AircraftType value, $Res Function(AircraftType) _then) = _$AircraftTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'DisplayName') String? displayName,@JsonKey(name: 'TypeName') String? typeName,@JsonKey(name: 'AircraftClass') AircraftClass? aircraftClass,@JsonKey(name: 'FuelTotalCapacityInGallons') double fuelCapacityGallons,@JsonKey(name: 'seats') int seats,@JsonKey(name: 'needsCopilot') bool needsCopilot
});


$AircraftClassCopyWith<$Res>? get aircraftClass;

}
/// @nodoc
class _$AircraftTypeCopyWithImpl<$Res>
    implements $AircraftTypeCopyWith<$Res> {
  _$AircraftTypeCopyWithImpl(this._self, this._then);

  final AircraftType _self;
  final $Res Function(AircraftType) _then;

/// Create a copy of AircraftType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = freezed,Object? typeName = freezed,Object? aircraftClass = freezed,Object? fuelCapacityGallons = null,Object? seats = null,Object? needsCopilot = null,}) {
  return _then(_self.copyWith(
displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,typeName: freezed == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String?,aircraftClass: freezed == aircraftClass ? _self.aircraftClass : aircraftClass // ignore: cast_nullable_to_non_nullable
as AircraftClass?,fuelCapacityGallons: null == fuelCapacityGallons ? _self.fuelCapacityGallons : fuelCapacityGallons // ignore: cast_nullable_to_non_nullable
as double,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,needsCopilot: null == needsCopilot ? _self.needsCopilot : needsCopilot // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AircraftType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AircraftClassCopyWith<$Res>? get aircraftClass {
    if (_self.aircraftClass == null) {
    return null;
  }

  return $AircraftClassCopyWith<$Res>(_self.aircraftClass!, (value) {
    return _then(_self.copyWith(aircraftClass: value));
  });
}
}


/// Adds pattern-matching-related methods to [AircraftType].
extension AircraftTypePatterns on AircraftType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AircraftType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AircraftType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AircraftType value)  $default,){
final _that = this;
switch (_that) {
case _AircraftType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AircraftType value)?  $default,){
final _that = this;
switch (_that) {
case _AircraftType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'DisplayName')  String? displayName, @JsonKey(name: 'TypeName')  String? typeName, @JsonKey(name: 'AircraftClass')  AircraftClass? aircraftClass, @JsonKey(name: 'FuelTotalCapacityInGallons')  double fuelCapacityGallons, @JsonKey(name: 'seats')  int seats, @JsonKey(name: 'needsCopilot')  bool needsCopilot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AircraftType() when $default != null:
return $default(_that.displayName,_that.typeName,_that.aircraftClass,_that.fuelCapacityGallons,_that.seats,_that.needsCopilot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'DisplayName')  String? displayName, @JsonKey(name: 'TypeName')  String? typeName, @JsonKey(name: 'AircraftClass')  AircraftClass? aircraftClass, @JsonKey(name: 'FuelTotalCapacityInGallons')  double fuelCapacityGallons, @JsonKey(name: 'seats')  int seats, @JsonKey(name: 'needsCopilot')  bool needsCopilot)  $default,) {final _that = this;
switch (_that) {
case _AircraftType():
return $default(_that.displayName,_that.typeName,_that.aircraftClass,_that.fuelCapacityGallons,_that.seats,_that.needsCopilot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'DisplayName')  String? displayName, @JsonKey(name: 'TypeName')  String? typeName, @JsonKey(name: 'AircraftClass')  AircraftClass? aircraftClass, @JsonKey(name: 'FuelTotalCapacityInGallons')  double fuelCapacityGallons, @JsonKey(name: 'seats')  int seats, @JsonKey(name: 'needsCopilot')  bool needsCopilot)?  $default,) {final _that = this;
switch (_that) {
case _AircraftType() when $default != null:
return $default(_that.displayName,_that.typeName,_that.aircraftClass,_that.fuelCapacityGallons,_that.seats,_that.needsCopilot);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AircraftType implements AircraftType {
  const _AircraftType({@JsonKey(name: 'DisplayName') this.displayName, @JsonKey(name: 'TypeName') this.typeName, @JsonKey(name: 'AircraftClass') this.aircraftClass, @JsonKey(name: 'FuelTotalCapacityInGallons') this.fuelCapacityGallons = 0, @JsonKey(name: 'seats') this.seats = 0, @JsonKey(name: 'needsCopilot') this.needsCopilot = false});
  factory _AircraftType.fromJson(Map<String, dynamic> json) => _$AircraftTypeFromJson(json);

@override@JsonKey(name: 'DisplayName') final  String? displayName;
@override@JsonKey(name: 'TypeName') final  String? typeName;
@override@JsonKey(name: 'AircraftClass') final  AircraftClass? aircraftClass;
@override@JsonKey(name: 'FuelTotalCapacityInGallons') final  double fuelCapacityGallons;
@override@JsonKey(name: 'seats') final  int seats;
@override@JsonKey(name: 'needsCopilot') final  bool needsCopilot;

/// Create a copy of AircraftType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AircraftTypeCopyWith<_AircraftType> get copyWith => __$AircraftTypeCopyWithImpl<_AircraftType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AircraftTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AircraftType&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.aircraftClass, aircraftClass) || other.aircraftClass == aircraftClass)&&(identical(other.fuelCapacityGallons, fuelCapacityGallons) || other.fuelCapacityGallons == fuelCapacityGallons)&&(identical(other.seats, seats) || other.seats == seats)&&(identical(other.needsCopilot, needsCopilot) || other.needsCopilot == needsCopilot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,typeName,aircraftClass,fuelCapacityGallons,seats,needsCopilot);

@override
String toString() {
  return 'AircraftType(displayName: $displayName, typeName: $typeName, aircraftClass: $aircraftClass, fuelCapacityGallons: $fuelCapacityGallons, seats: $seats, needsCopilot: $needsCopilot)';
}


}

/// @nodoc
abstract mixin class _$AircraftTypeCopyWith<$Res> implements $AircraftTypeCopyWith<$Res> {
  factory _$AircraftTypeCopyWith(_AircraftType value, $Res Function(_AircraftType) _then) = __$AircraftTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'DisplayName') String? displayName,@JsonKey(name: 'TypeName') String? typeName,@JsonKey(name: 'AircraftClass') AircraftClass? aircraftClass,@JsonKey(name: 'FuelTotalCapacityInGallons') double fuelCapacityGallons,@JsonKey(name: 'seats') int seats,@JsonKey(name: 'needsCopilot') bool needsCopilot
});


@override $AircraftClassCopyWith<$Res>? get aircraftClass;

}
/// @nodoc
class __$AircraftTypeCopyWithImpl<$Res>
    implements _$AircraftTypeCopyWith<$Res> {
  __$AircraftTypeCopyWithImpl(this._self, this._then);

  final _AircraftType _self;
  final $Res Function(_AircraftType) _then;

/// Create a copy of AircraftType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = freezed,Object? typeName = freezed,Object? aircraftClass = freezed,Object? fuelCapacityGallons = null,Object? seats = null,Object? needsCopilot = null,}) {
  return _then(_AircraftType(
displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,typeName: freezed == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String?,aircraftClass: freezed == aircraftClass ? _self.aircraftClass : aircraftClass // ignore: cast_nullable_to_non_nullable
as AircraftClass?,fuelCapacityGallons: null == fuelCapacityGallons ? _self.fuelCapacityGallons : fuelCapacityGallons // ignore: cast_nullable_to_non_nullable
as double,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,needsCopilot: null == needsCopilot ? _self.needsCopilot : needsCopilot // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AircraftType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AircraftClassCopyWith<$Res>? get aircraftClass {
    if (_self.aircraftClass == null) {
    return null;
  }

  return $AircraftClassCopyWith<$Res>(_self.aircraftClass!, (value) {
    return _then(_self.copyWith(aircraftClass: value));
  });
}
}

// dart format on
