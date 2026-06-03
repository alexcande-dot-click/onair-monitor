// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CargoType {

@JsonKey(name: 'Name') String? get name;
/// Create a copy of CargoType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CargoTypeCopyWith<CargoType> get copyWith => _$CargoTypeCopyWithImpl<CargoType>(this as CargoType, _$identity);

  /// Serializes this CargoType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CargoType&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CargoType(name: $name)';
}


}

/// @nodoc
abstract mixin class $CargoTypeCopyWith<$Res>  {
  factory $CargoTypeCopyWith(CargoType value, $Res Function(CargoType) _then) = _$CargoTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Name') String? name
});




}
/// @nodoc
class _$CargoTypeCopyWithImpl<$Res>
    implements $CargoTypeCopyWith<$Res> {
  _$CargoTypeCopyWithImpl(this._self, this._then);

  final CargoType _self;
  final $Res Function(CargoType) _then;

/// Create a copy of CargoType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CargoType].
extension CargoTypePatterns on CargoType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CargoType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CargoType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CargoType value)  $default,){
final _that = this;
switch (_that) {
case _CargoType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CargoType value)?  $default,){
final _that = this;
switch (_that) {
case _CargoType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Name')  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CargoType() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Name')  String? name)  $default,) {final _that = this;
switch (_that) {
case _CargoType():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Name')  String? name)?  $default,) {final _that = this;
switch (_that) {
case _CargoType() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CargoType implements CargoType {
  const _CargoType({@JsonKey(name: 'Name') this.name});
  factory _CargoType.fromJson(Map<String, dynamic> json) => _$CargoTypeFromJson(json);

@override@JsonKey(name: 'Name') final  String? name;

/// Create a copy of CargoType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CargoTypeCopyWith<_CargoType> get copyWith => __$CargoTypeCopyWithImpl<_CargoType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CargoTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CargoType&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CargoType(name: $name)';
}


}

/// @nodoc
abstract mixin class _$CargoTypeCopyWith<$Res> implements $CargoTypeCopyWith<$Res> {
  factory _$CargoTypeCopyWith(_CargoType value, $Res Function(_CargoType) _then) = __$CargoTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Name') String? name
});




}
/// @nodoc
class __$CargoTypeCopyWithImpl<$Res>
    implements _$CargoTypeCopyWith<$Res> {
  __$CargoTypeCopyWithImpl(this._self, this._then);

  final _CargoType _self;
  final $Res Function(_CargoType) _then;

/// Create a copy of CargoType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_CargoType(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CargoLeg {

@JsonKey(name: 'Weight') double get weight;@JsonKey(name: 'CargoType') CargoType? get cargoType;@JsonKey(name: 'DepartureAirport') Airport? get departureAirport;@JsonKey(name: 'DestinationAirport') Airport? get destinationAirport;@JsonKey(name: 'Distance') double get distance;
/// Create a copy of CargoLeg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CargoLegCopyWith<CargoLeg> get copyWith => _$CargoLegCopyWithImpl<CargoLeg>(this as CargoLeg, _$identity);

  /// Serializes this CargoLeg to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CargoLeg&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.cargoType, cargoType) || other.cargoType == cargoType)&&(identical(other.departureAirport, departureAirport) || other.departureAirport == departureAirport)&&(identical(other.destinationAirport, destinationAirport) || other.destinationAirport == destinationAirport)&&(identical(other.distance, distance) || other.distance == distance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weight,cargoType,departureAirport,destinationAirport,distance);

@override
String toString() {
  return 'CargoLeg(weight: $weight, cargoType: $cargoType, departureAirport: $departureAirport, destinationAirport: $destinationAirport, distance: $distance)';
}


}

/// @nodoc
abstract mixin class $CargoLegCopyWith<$Res>  {
  factory $CargoLegCopyWith(CargoLeg value, $Res Function(CargoLeg) _then) = _$CargoLegCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Weight') double weight,@JsonKey(name: 'CargoType') CargoType? cargoType,@JsonKey(name: 'DepartureAirport') Airport? departureAirport,@JsonKey(name: 'DestinationAirport') Airport? destinationAirport,@JsonKey(name: 'Distance') double distance
});


$CargoTypeCopyWith<$Res>? get cargoType;$AirportCopyWith<$Res>? get departureAirport;$AirportCopyWith<$Res>? get destinationAirport;

}
/// @nodoc
class _$CargoLegCopyWithImpl<$Res>
    implements $CargoLegCopyWith<$Res> {
  _$CargoLegCopyWithImpl(this._self, this._then);

  final CargoLeg _self;
  final $Res Function(CargoLeg) _then;

/// Create a copy of CargoLeg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weight = null,Object? cargoType = freezed,Object? departureAirport = freezed,Object? destinationAirport = freezed,Object? distance = null,}) {
  return _then(_self.copyWith(
weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,cargoType: freezed == cargoType ? _self.cargoType : cargoType // ignore: cast_nullable_to_non_nullable
as CargoType?,departureAirport: freezed == departureAirport ? _self.departureAirport : departureAirport // ignore: cast_nullable_to_non_nullable
as Airport?,destinationAirport: freezed == destinationAirport ? _self.destinationAirport : destinationAirport // ignore: cast_nullable_to_non_nullable
as Airport?,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of CargoLeg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CargoTypeCopyWith<$Res>? get cargoType {
    if (_self.cargoType == null) {
    return null;
  }

  return $CargoTypeCopyWith<$Res>(_self.cargoType!, (value) {
    return _then(_self.copyWith(cargoType: value));
  });
}/// Create a copy of CargoLeg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get departureAirport {
    if (_self.departureAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.departureAirport!, (value) {
    return _then(_self.copyWith(departureAirport: value));
  });
}/// Create a copy of CargoLeg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get destinationAirport {
    if (_self.destinationAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.destinationAirport!, (value) {
    return _then(_self.copyWith(destinationAirport: value));
  });
}
}


/// Adds pattern-matching-related methods to [CargoLeg].
extension CargoLegPatterns on CargoLeg {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CargoLeg value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CargoLeg() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CargoLeg value)  $default,){
final _that = this;
switch (_that) {
case _CargoLeg():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CargoLeg value)?  $default,){
final _that = this;
switch (_that) {
case _CargoLeg() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Weight')  double weight, @JsonKey(name: 'CargoType')  CargoType? cargoType, @JsonKey(name: 'DepartureAirport')  Airport? departureAirport, @JsonKey(name: 'DestinationAirport')  Airport? destinationAirport, @JsonKey(name: 'Distance')  double distance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CargoLeg() when $default != null:
return $default(_that.weight,_that.cargoType,_that.departureAirport,_that.destinationAirport,_that.distance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Weight')  double weight, @JsonKey(name: 'CargoType')  CargoType? cargoType, @JsonKey(name: 'DepartureAirport')  Airport? departureAirport, @JsonKey(name: 'DestinationAirport')  Airport? destinationAirport, @JsonKey(name: 'Distance')  double distance)  $default,) {final _that = this;
switch (_that) {
case _CargoLeg():
return $default(_that.weight,_that.cargoType,_that.departureAirport,_that.destinationAirport,_that.distance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Weight')  double weight, @JsonKey(name: 'CargoType')  CargoType? cargoType, @JsonKey(name: 'DepartureAirport')  Airport? departureAirport, @JsonKey(name: 'DestinationAirport')  Airport? destinationAirport, @JsonKey(name: 'Distance')  double distance)?  $default,) {final _that = this;
switch (_that) {
case _CargoLeg() when $default != null:
return $default(_that.weight,_that.cargoType,_that.departureAirport,_that.destinationAirport,_that.distance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CargoLeg implements CargoLeg {
  const _CargoLeg({@JsonKey(name: 'Weight') this.weight = 0, @JsonKey(name: 'CargoType') this.cargoType, @JsonKey(name: 'DepartureAirport') this.departureAirport, @JsonKey(name: 'DestinationAirport') this.destinationAirport, @JsonKey(name: 'Distance') this.distance = 0});
  factory _CargoLeg.fromJson(Map<String, dynamic> json) => _$CargoLegFromJson(json);

@override@JsonKey(name: 'Weight') final  double weight;
@override@JsonKey(name: 'CargoType') final  CargoType? cargoType;
@override@JsonKey(name: 'DepartureAirport') final  Airport? departureAirport;
@override@JsonKey(name: 'DestinationAirport') final  Airport? destinationAirport;
@override@JsonKey(name: 'Distance') final  double distance;

/// Create a copy of CargoLeg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CargoLegCopyWith<_CargoLeg> get copyWith => __$CargoLegCopyWithImpl<_CargoLeg>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CargoLegToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CargoLeg&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.cargoType, cargoType) || other.cargoType == cargoType)&&(identical(other.departureAirport, departureAirport) || other.departureAirport == departureAirport)&&(identical(other.destinationAirport, destinationAirport) || other.destinationAirport == destinationAirport)&&(identical(other.distance, distance) || other.distance == distance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weight,cargoType,departureAirport,destinationAirport,distance);

@override
String toString() {
  return 'CargoLeg(weight: $weight, cargoType: $cargoType, departureAirport: $departureAirport, destinationAirport: $destinationAirport, distance: $distance)';
}


}

/// @nodoc
abstract mixin class _$CargoLegCopyWith<$Res> implements $CargoLegCopyWith<$Res> {
  factory _$CargoLegCopyWith(_CargoLeg value, $Res Function(_CargoLeg) _then) = __$CargoLegCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Weight') double weight,@JsonKey(name: 'CargoType') CargoType? cargoType,@JsonKey(name: 'DepartureAirport') Airport? departureAirport,@JsonKey(name: 'DestinationAirport') Airport? destinationAirport,@JsonKey(name: 'Distance') double distance
});


@override $CargoTypeCopyWith<$Res>? get cargoType;@override $AirportCopyWith<$Res>? get departureAirport;@override $AirportCopyWith<$Res>? get destinationAirport;

}
/// @nodoc
class __$CargoLegCopyWithImpl<$Res>
    implements _$CargoLegCopyWith<$Res> {
  __$CargoLegCopyWithImpl(this._self, this._then);

  final _CargoLeg _self;
  final $Res Function(_CargoLeg) _then;

/// Create a copy of CargoLeg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weight = null,Object? cargoType = freezed,Object? departureAirport = freezed,Object? destinationAirport = freezed,Object? distance = null,}) {
  return _then(_CargoLeg(
weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,cargoType: freezed == cargoType ? _self.cargoType : cargoType // ignore: cast_nullable_to_non_nullable
as CargoType?,departureAirport: freezed == departureAirport ? _self.departureAirport : departureAirport // ignore: cast_nullable_to_non_nullable
as Airport?,destinationAirport: freezed == destinationAirport ? _self.destinationAirport : destinationAirport // ignore: cast_nullable_to_non_nullable
as Airport?,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of CargoLeg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CargoTypeCopyWith<$Res>? get cargoType {
    if (_self.cargoType == null) {
    return null;
  }

  return $CargoTypeCopyWith<$Res>(_self.cargoType!, (value) {
    return _then(_self.copyWith(cargoType: value));
  });
}/// Create a copy of CargoLeg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get departureAirport {
    if (_self.departureAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.departureAirport!, (value) {
    return _then(_self.copyWith(departureAirport: value));
  });
}/// Create a copy of CargoLeg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get destinationAirport {
    if (_self.destinationAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.destinationAirport!, (value) {
    return _then(_self.copyWith(destinationAirport: value));
  });
}
}


/// @nodoc
mixin _$CharterLeg {

@JsonKey(name: 'PassengersNumber') int get passengersNumber;@JsonKey(name: 'DepartureAirport') Airport? get departureAirport;@JsonKey(name: 'DestinationAirport') Airport? get destinationAirport;@JsonKey(name: 'Distance') double get distance;
/// Create a copy of CharterLeg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharterLegCopyWith<CharterLeg> get copyWith => _$CharterLegCopyWithImpl<CharterLeg>(this as CharterLeg, _$identity);

  /// Serializes this CharterLeg to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharterLeg&&(identical(other.passengersNumber, passengersNumber) || other.passengersNumber == passengersNumber)&&(identical(other.departureAirport, departureAirport) || other.departureAirport == departureAirport)&&(identical(other.destinationAirport, destinationAirport) || other.destinationAirport == destinationAirport)&&(identical(other.distance, distance) || other.distance == distance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,passengersNumber,departureAirport,destinationAirport,distance);

@override
String toString() {
  return 'CharterLeg(passengersNumber: $passengersNumber, departureAirport: $departureAirport, destinationAirport: $destinationAirport, distance: $distance)';
}


}

/// @nodoc
abstract mixin class $CharterLegCopyWith<$Res>  {
  factory $CharterLegCopyWith(CharterLeg value, $Res Function(CharterLeg) _then) = _$CharterLegCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'PassengersNumber') int passengersNumber,@JsonKey(name: 'DepartureAirport') Airport? departureAirport,@JsonKey(name: 'DestinationAirport') Airport? destinationAirport,@JsonKey(name: 'Distance') double distance
});


$AirportCopyWith<$Res>? get departureAirport;$AirportCopyWith<$Res>? get destinationAirport;

}
/// @nodoc
class _$CharterLegCopyWithImpl<$Res>
    implements $CharterLegCopyWith<$Res> {
  _$CharterLegCopyWithImpl(this._self, this._then);

  final CharterLeg _self;
  final $Res Function(CharterLeg) _then;

/// Create a copy of CharterLeg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? passengersNumber = null,Object? departureAirport = freezed,Object? destinationAirport = freezed,Object? distance = null,}) {
  return _then(_self.copyWith(
passengersNumber: null == passengersNumber ? _self.passengersNumber : passengersNumber // ignore: cast_nullable_to_non_nullable
as int,departureAirport: freezed == departureAirport ? _self.departureAirport : departureAirport // ignore: cast_nullable_to_non_nullable
as Airport?,destinationAirport: freezed == destinationAirport ? _self.destinationAirport : destinationAirport // ignore: cast_nullable_to_non_nullable
as Airport?,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of CharterLeg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get departureAirport {
    if (_self.departureAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.departureAirport!, (value) {
    return _then(_self.copyWith(departureAirport: value));
  });
}/// Create a copy of CharterLeg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get destinationAirport {
    if (_self.destinationAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.destinationAirport!, (value) {
    return _then(_self.copyWith(destinationAirport: value));
  });
}
}


/// Adds pattern-matching-related methods to [CharterLeg].
extension CharterLegPatterns on CharterLeg {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharterLeg value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharterLeg() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharterLeg value)  $default,){
final _that = this;
switch (_that) {
case _CharterLeg():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharterLeg value)?  $default,){
final _that = this;
switch (_that) {
case _CharterLeg() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'PassengersNumber')  int passengersNumber, @JsonKey(name: 'DepartureAirport')  Airport? departureAirport, @JsonKey(name: 'DestinationAirport')  Airport? destinationAirport, @JsonKey(name: 'Distance')  double distance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharterLeg() when $default != null:
return $default(_that.passengersNumber,_that.departureAirport,_that.destinationAirport,_that.distance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'PassengersNumber')  int passengersNumber, @JsonKey(name: 'DepartureAirport')  Airport? departureAirport, @JsonKey(name: 'DestinationAirport')  Airport? destinationAirport, @JsonKey(name: 'Distance')  double distance)  $default,) {final _that = this;
switch (_that) {
case _CharterLeg():
return $default(_that.passengersNumber,_that.departureAirport,_that.destinationAirport,_that.distance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'PassengersNumber')  int passengersNumber, @JsonKey(name: 'DepartureAirport')  Airport? departureAirport, @JsonKey(name: 'DestinationAirport')  Airport? destinationAirport, @JsonKey(name: 'Distance')  double distance)?  $default,) {final _that = this;
switch (_that) {
case _CharterLeg() when $default != null:
return $default(_that.passengersNumber,_that.departureAirport,_that.destinationAirport,_that.distance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CharterLeg implements CharterLeg {
  const _CharterLeg({@JsonKey(name: 'PassengersNumber') this.passengersNumber = 0, @JsonKey(name: 'DepartureAirport') this.departureAirport, @JsonKey(name: 'DestinationAirport') this.destinationAirport, @JsonKey(name: 'Distance') this.distance = 0});
  factory _CharterLeg.fromJson(Map<String, dynamic> json) => _$CharterLegFromJson(json);

@override@JsonKey(name: 'PassengersNumber') final  int passengersNumber;
@override@JsonKey(name: 'DepartureAirport') final  Airport? departureAirport;
@override@JsonKey(name: 'DestinationAirport') final  Airport? destinationAirport;
@override@JsonKey(name: 'Distance') final  double distance;

/// Create a copy of CharterLeg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharterLegCopyWith<_CharterLeg> get copyWith => __$CharterLegCopyWithImpl<_CharterLeg>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharterLegToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharterLeg&&(identical(other.passengersNumber, passengersNumber) || other.passengersNumber == passengersNumber)&&(identical(other.departureAirport, departureAirport) || other.departureAirport == departureAirport)&&(identical(other.destinationAirport, destinationAirport) || other.destinationAirport == destinationAirport)&&(identical(other.distance, distance) || other.distance == distance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,passengersNumber,departureAirport,destinationAirport,distance);

@override
String toString() {
  return 'CharterLeg(passengersNumber: $passengersNumber, departureAirport: $departureAirport, destinationAirport: $destinationAirport, distance: $distance)';
}


}

/// @nodoc
abstract mixin class _$CharterLegCopyWith<$Res> implements $CharterLegCopyWith<$Res> {
  factory _$CharterLegCopyWith(_CharterLeg value, $Res Function(_CharterLeg) _then) = __$CharterLegCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'PassengersNumber') int passengersNumber,@JsonKey(name: 'DepartureAirport') Airport? departureAirport,@JsonKey(name: 'DestinationAirport') Airport? destinationAirport,@JsonKey(name: 'Distance') double distance
});


@override $AirportCopyWith<$Res>? get departureAirport;@override $AirportCopyWith<$Res>? get destinationAirport;

}
/// @nodoc
class __$CharterLegCopyWithImpl<$Res>
    implements _$CharterLegCopyWith<$Res> {
  __$CharterLegCopyWithImpl(this._self, this._then);

  final _CharterLeg _self;
  final $Res Function(_CharterLeg) _then;

/// Create a copy of CharterLeg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? passengersNumber = null,Object? departureAirport = freezed,Object? destinationAirport = freezed,Object? distance = null,}) {
  return _then(_CharterLeg(
passengersNumber: null == passengersNumber ? _self.passengersNumber : passengersNumber // ignore: cast_nullable_to_non_nullable
as int,departureAirport: freezed == departureAirport ? _self.departureAirport : departureAirport // ignore: cast_nullable_to_non_nullable
as Airport?,destinationAirport: freezed == destinationAirport ? _self.destinationAirport : destinationAirport // ignore: cast_nullable_to_non_nullable
as Airport?,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of CharterLeg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get departureAirport {
    if (_self.departureAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.departureAirport!, (value) {
    return _then(_self.copyWith(departureAirport: value));
  });
}/// Create a copy of CharterLeg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get destinationAirport {
    if (_self.destinationAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.destinationAirport!, (value) {
    return _then(_self.copyWith(destinationAirport: value));
  });
}
}


/// @nodoc
mixin _$Mission {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'Category') int get categoryCode;@JsonKey(name: 'State') int get state;@JsonKey(name: 'MainAirport') Airport? get mainAirport;@JsonKey(name: 'Pay') double get pay;@JsonKey(name: 'RealPay') double get realPay;@JsonKey(name: 'PayLastMinuteBonus') double get payLastMinuteBonus;@JsonKey(name: 'PayCompanyBonus') double get payCompanyBonus;@JsonKey(name: 'Penality') double get penality;@JsonKey(name: 'ReputationImpact') double get reputationImpact;@JsonKey(name: 'XP') int get xp;@JsonKey(name: 'ExpirationDate') DateTime? get expirationDate;@JsonKey(name: 'TotalDistance') double get totalDistance;@JsonKey(name: 'Cargos') List<CargoLeg> get cargos;@JsonKey(name: 'Charters') List<CharterLeg> get charters;
/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MissionCopyWith<Mission> get copyWith => _$MissionCopyWithImpl<Mission>(this as Mission, _$identity);

  /// Serializes this Mission to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Mission&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryCode, categoryCode) || other.categoryCode == categoryCode)&&(identical(other.state, state) || other.state == state)&&(identical(other.mainAirport, mainAirport) || other.mainAirport == mainAirport)&&(identical(other.pay, pay) || other.pay == pay)&&(identical(other.realPay, realPay) || other.realPay == realPay)&&(identical(other.payLastMinuteBonus, payLastMinuteBonus) || other.payLastMinuteBonus == payLastMinuteBonus)&&(identical(other.payCompanyBonus, payCompanyBonus) || other.payCompanyBonus == payCompanyBonus)&&(identical(other.penality, penality) || other.penality == penality)&&(identical(other.reputationImpact, reputationImpact) || other.reputationImpact == reputationImpact)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.expirationDate, expirationDate) || other.expirationDate == expirationDate)&&(identical(other.totalDistance, totalDistance) || other.totalDistance == totalDistance)&&const DeepCollectionEquality().equals(other.cargos, cargos)&&const DeepCollectionEquality().equals(other.charters, charters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,categoryCode,state,mainAirport,pay,realPay,payLastMinuteBonus,payCompanyBonus,penality,reputationImpact,xp,expirationDate,totalDistance,const DeepCollectionEquality().hash(cargos),const DeepCollectionEquality().hash(charters));

@override
String toString() {
  return 'Mission(id: $id, categoryCode: $categoryCode, state: $state, mainAirport: $mainAirport, pay: $pay, realPay: $realPay, payLastMinuteBonus: $payLastMinuteBonus, payCompanyBonus: $payCompanyBonus, penality: $penality, reputationImpact: $reputationImpact, xp: $xp, expirationDate: $expirationDate, totalDistance: $totalDistance, cargos: $cargos, charters: $charters)';
}


}

/// @nodoc
abstract mixin class $MissionCopyWith<$Res>  {
  factory $MissionCopyWith(Mission value, $Res Function(Mission) _then) = _$MissionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Category') int categoryCode,@JsonKey(name: 'State') int state,@JsonKey(name: 'MainAirport') Airport? mainAirport,@JsonKey(name: 'Pay') double pay,@JsonKey(name: 'RealPay') double realPay,@JsonKey(name: 'PayLastMinuteBonus') double payLastMinuteBonus,@JsonKey(name: 'PayCompanyBonus') double payCompanyBonus,@JsonKey(name: 'Penality') double penality,@JsonKey(name: 'ReputationImpact') double reputationImpact,@JsonKey(name: 'XP') int xp,@JsonKey(name: 'ExpirationDate') DateTime? expirationDate,@JsonKey(name: 'TotalDistance') double totalDistance,@JsonKey(name: 'Cargos') List<CargoLeg> cargos,@JsonKey(name: 'Charters') List<CharterLeg> charters
});


$AirportCopyWith<$Res>? get mainAirport;

}
/// @nodoc
class _$MissionCopyWithImpl<$Res>
    implements $MissionCopyWith<$Res> {
  _$MissionCopyWithImpl(this._self, this._then);

  final Mission _self;
  final $Res Function(Mission) _then;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? categoryCode = null,Object? state = null,Object? mainAirport = freezed,Object? pay = null,Object? realPay = null,Object? payLastMinuteBonus = null,Object? payCompanyBonus = null,Object? penality = null,Object? reputationImpact = null,Object? xp = null,Object? expirationDate = freezed,Object? totalDistance = null,Object? cargos = null,Object? charters = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,categoryCode: null == categoryCode ? _self.categoryCode : categoryCode // ignore: cast_nullable_to_non_nullable
as int,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as int,mainAirport: freezed == mainAirport ? _self.mainAirport : mainAirport // ignore: cast_nullable_to_non_nullable
as Airport?,pay: null == pay ? _self.pay : pay // ignore: cast_nullable_to_non_nullable
as double,realPay: null == realPay ? _self.realPay : realPay // ignore: cast_nullable_to_non_nullable
as double,payLastMinuteBonus: null == payLastMinuteBonus ? _self.payLastMinuteBonus : payLastMinuteBonus // ignore: cast_nullable_to_non_nullable
as double,payCompanyBonus: null == payCompanyBonus ? _self.payCompanyBonus : payCompanyBonus // ignore: cast_nullable_to_non_nullable
as double,penality: null == penality ? _self.penality : penality // ignore: cast_nullable_to_non_nullable
as double,reputationImpact: null == reputationImpact ? _self.reputationImpact : reputationImpact // ignore: cast_nullable_to_non_nullable
as double,xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,expirationDate: freezed == expirationDate ? _self.expirationDate : expirationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalDistance: null == totalDistance ? _self.totalDistance : totalDistance // ignore: cast_nullable_to_non_nullable
as double,cargos: null == cargos ? _self.cargos : cargos // ignore: cast_nullable_to_non_nullable
as List<CargoLeg>,charters: null == charters ? _self.charters : charters // ignore: cast_nullable_to_non_nullable
as List<CharterLeg>,
  ));
}
/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get mainAirport {
    if (_self.mainAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.mainAirport!, (value) {
    return _then(_self.copyWith(mainAirport: value));
  });
}
}


/// Adds pattern-matching-related methods to [Mission].
extension MissionPatterns on Mission {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Mission value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Mission() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Mission value)  $default,){
final _that = this;
switch (_that) {
case _Mission():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Mission value)?  $default,){
final _that = this;
switch (_that) {
case _Mission() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Category')  int categoryCode, @JsonKey(name: 'State')  int state, @JsonKey(name: 'MainAirport')  Airport? mainAirport, @JsonKey(name: 'Pay')  double pay, @JsonKey(name: 'RealPay')  double realPay, @JsonKey(name: 'PayLastMinuteBonus')  double payLastMinuteBonus, @JsonKey(name: 'PayCompanyBonus')  double payCompanyBonus, @JsonKey(name: 'Penality')  double penality, @JsonKey(name: 'ReputationImpact')  double reputationImpact, @JsonKey(name: 'XP')  int xp, @JsonKey(name: 'ExpirationDate')  DateTime? expirationDate, @JsonKey(name: 'TotalDistance')  double totalDistance, @JsonKey(name: 'Cargos')  List<CargoLeg> cargos, @JsonKey(name: 'Charters')  List<CharterLeg> charters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Mission() when $default != null:
return $default(_that.id,_that.categoryCode,_that.state,_that.mainAirport,_that.pay,_that.realPay,_that.payLastMinuteBonus,_that.payCompanyBonus,_that.penality,_that.reputationImpact,_that.xp,_that.expirationDate,_that.totalDistance,_that.cargos,_that.charters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Category')  int categoryCode, @JsonKey(name: 'State')  int state, @JsonKey(name: 'MainAirport')  Airport? mainAirport, @JsonKey(name: 'Pay')  double pay, @JsonKey(name: 'RealPay')  double realPay, @JsonKey(name: 'PayLastMinuteBonus')  double payLastMinuteBonus, @JsonKey(name: 'PayCompanyBonus')  double payCompanyBonus, @JsonKey(name: 'Penality')  double penality, @JsonKey(name: 'ReputationImpact')  double reputationImpact, @JsonKey(name: 'XP')  int xp, @JsonKey(name: 'ExpirationDate')  DateTime? expirationDate, @JsonKey(name: 'TotalDistance')  double totalDistance, @JsonKey(name: 'Cargos')  List<CargoLeg> cargos, @JsonKey(name: 'Charters')  List<CharterLeg> charters)  $default,) {final _that = this;
switch (_that) {
case _Mission():
return $default(_that.id,_that.categoryCode,_that.state,_that.mainAirport,_that.pay,_that.realPay,_that.payLastMinuteBonus,_that.payCompanyBonus,_that.penality,_that.reputationImpact,_that.xp,_that.expirationDate,_that.totalDistance,_that.cargos,_that.charters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Category')  int categoryCode, @JsonKey(name: 'State')  int state, @JsonKey(name: 'MainAirport')  Airport? mainAirport, @JsonKey(name: 'Pay')  double pay, @JsonKey(name: 'RealPay')  double realPay, @JsonKey(name: 'PayLastMinuteBonus')  double payLastMinuteBonus, @JsonKey(name: 'PayCompanyBonus')  double payCompanyBonus, @JsonKey(name: 'Penality')  double penality, @JsonKey(name: 'ReputationImpact')  double reputationImpact, @JsonKey(name: 'XP')  int xp, @JsonKey(name: 'ExpirationDate')  DateTime? expirationDate, @JsonKey(name: 'TotalDistance')  double totalDistance, @JsonKey(name: 'Cargos')  List<CargoLeg> cargos, @JsonKey(name: 'Charters')  List<CharterLeg> charters)?  $default,) {final _that = this;
switch (_that) {
case _Mission() when $default != null:
return $default(_that.id,_that.categoryCode,_that.state,_that.mainAirport,_that.pay,_that.realPay,_that.payLastMinuteBonus,_that.payCompanyBonus,_that.penality,_that.reputationImpact,_that.xp,_that.expirationDate,_that.totalDistance,_that.cargos,_that.charters);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Mission extends Mission {
  const _Mission({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Category') this.categoryCode = 0, @JsonKey(name: 'State') this.state = 0, @JsonKey(name: 'MainAirport') this.mainAirport, @JsonKey(name: 'Pay') this.pay = 0, @JsonKey(name: 'RealPay') this.realPay = 0, @JsonKey(name: 'PayLastMinuteBonus') this.payLastMinuteBonus = 0, @JsonKey(name: 'PayCompanyBonus') this.payCompanyBonus = 0, @JsonKey(name: 'Penality') this.penality = 0, @JsonKey(name: 'ReputationImpact') this.reputationImpact = 0, @JsonKey(name: 'XP') this.xp = 0, @JsonKey(name: 'ExpirationDate') this.expirationDate, @JsonKey(name: 'TotalDistance') this.totalDistance = 0, @JsonKey(name: 'Cargos') final  List<CargoLeg> cargos = const [], @JsonKey(name: 'Charters') final  List<CharterLeg> charters = const []}): _cargos = cargos,_charters = charters,super._();
  factory _Mission.fromJson(Map<String, dynamic> json) => _$MissionFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'Category') final  int categoryCode;
@override@JsonKey(name: 'State') final  int state;
@override@JsonKey(name: 'MainAirport') final  Airport? mainAirport;
@override@JsonKey(name: 'Pay') final  double pay;
@override@JsonKey(name: 'RealPay') final  double realPay;
@override@JsonKey(name: 'PayLastMinuteBonus') final  double payLastMinuteBonus;
@override@JsonKey(name: 'PayCompanyBonus') final  double payCompanyBonus;
@override@JsonKey(name: 'Penality') final  double penality;
@override@JsonKey(name: 'ReputationImpact') final  double reputationImpact;
@override@JsonKey(name: 'XP') final  int xp;
@override@JsonKey(name: 'ExpirationDate') final  DateTime? expirationDate;
@override@JsonKey(name: 'TotalDistance') final  double totalDistance;
 final  List<CargoLeg> _cargos;
@override@JsonKey(name: 'Cargos') List<CargoLeg> get cargos {
  if (_cargos is EqualUnmodifiableListView) return _cargos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cargos);
}

 final  List<CharterLeg> _charters;
@override@JsonKey(name: 'Charters') List<CharterLeg> get charters {
  if (_charters is EqualUnmodifiableListView) return _charters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_charters);
}


/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MissionCopyWith<_Mission> get copyWith => __$MissionCopyWithImpl<_Mission>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MissionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Mission&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryCode, categoryCode) || other.categoryCode == categoryCode)&&(identical(other.state, state) || other.state == state)&&(identical(other.mainAirport, mainAirport) || other.mainAirport == mainAirport)&&(identical(other.pay, pay) || other.pay == pay)&&(identical(other.realPay, realPay) || other.realPay == realPay)&&(identical(other.payLastMinuteBonus, payLastMinuteBonus) || other.payLastMinuteBonus == payLastMinuteBonus)&&(identical(other.payCompanyBonus, payCompanyBonus) || other.payCompanyBonus == payCompanyBonus)&&(identical(other.penality, penality) || other.penality == penality)&&(identical(other.reputationImpact, reputationImpact) || other.reputationImpact == reputationImpact)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.expirationDate, expirationDate) || other.expirationDate == expirationDate)&&(identical(other.totalDistance, totalDistance) || other.totalDistance == totalDistance)&&const DeepCollectionEquality().equals(other._cargos, _cargos)&&const DeepCollectionEquality().equals(other._charters, _charters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,categoryCode,state,mainAirport,pay,realPay,payLastMinuteBonus,payCompanyBonus,penality,reputationImpact,xp,expirationDate,totalDistance,const DeepCollectionEquality().hash(_cargos),const DeepCollectionEquality().hash(_charters));

@override
String toString() {
  return 'Mission(id: $id, categoryCode: $categoryCode, state: $state, mainAirport: $mainAirport, pay: $pay, realPay: $realPay, payLastMinuteBonus: $payLastMinuteBonus, payCompanyBonus: $payCompanyBonus, penality: $penality, reputationImpact: $reputationImpact, xp: $xp, expirationDate: $expirationDate, totalDistance: $totalDistance, cargos: $cargos, charters: $charters)';
}


}

/// @nodoc
abstract mixin class _$MissionCopyWith<$Res> implements $MissionCopyWith<$Res> {
  factory _$MissionCopyWith(_Mission value, $Res Function(_Mission) _then) = __$MissionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Category') int categoryCode,@JsonKey(name: 'State') int state,@JsonKey(name: 'MainAirport') Airport? mainAirport,@JsonKey(name: 'Pay') double pay,@JsonKey(name: 'RealPay') double realPay,@JsonKey(name: 'PayLastMinuteBonus') double payLastMinuteBonus,@JsonKey(name: 'PayCompanyBonus') double payCompanyBonus,@JsonKey(name: 'Penality') double penality,@JsonKey(name: 'ReputationImpact') double reputationImpact,@JsonKey(name: 'XP') int xp,@JsonKey(name: 'ExpirationDate') DateTime? expirationDate,@JsonKey(name: 'TotalDistance') double totalDistance,@JsonKey(name: 'Cargos') List<CargoLeg> cargos,@JsonKey(name: 'Charters') List<CharterLeg> charters
});


@override $AirportCopyWith<$Res>? get mainAirport;

}
/// @nodoc
class __$MissionCopyWithImpl<$Res>
    implements _$MissionCopyWith<$Res> {
  __$MissionCopyWithImpl(this._self, this._then);

  final _Mission _self;
  final $Res Function(_Mission) _then;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? categoryCode = null,Object? state = null,Object? mainAirport = freezed,Object? pay = null,Object? realPay = null,Object? payLastMinuteBonus = null,Object? payCompanyBonus = null,Object? penality = null,Object? reputationImpact = null,Object? xp = null,Object? expirationDate = freezed,Object? totalDistance = null,Object? cargos = null,Object? charters = null,}) {
  return _then(_Mission(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,categoryCode: null == categoryCode ? _self.categoryCode : categoryCode // ignore: cast_nullable_to_non_nullable
as int,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as int,mainAirport: freezed == mainAirport ? _self.mainAirport : mainAirport // ignore: cast_nullable_to_non_nullable
as Airport?,pay: null == pay ? _self.pay : pay // ignore: cast_nullable_to_non_nullable
as double,realPay: null == realPay ? _self.realPay : realPay // ignore: cast_nullable_to_non_nullable
as double,payLastMinuteBonus: null == payLastMinuteBonus ? _self.payLastMinuteBonus : payLastMinuteBonus // ignore: cast_nullable_to_non_nullable
as double,payCompanyBonus: null == payCompanyBonus ? _self.payCompanyBonus : payCompanyBonus // ignore: cast_nullable_to_non_nullable
as double,penality: null == penality ? _self.penality : penality // ignore: cast_nullable_to_non_nullable
as double,reputationImpact: null == reputationImpact ? _self.reputationImpact : reputationImpact // ignore: cast_nullable_to_non_nullable
as double,xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,expirationDate: freezed == expirationDate ? _self.expirationDate : expirationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalDistance: null == totalDistance ? _self.totalDistance : totalDistance // ignore: cast_nullable_to_non_nullable
as double,cargos: null == cargos ? _self._cargos : cargos // ignore: cast_nullable_to_non_nullable
as List<CargoLeg>,charters: null == charters ? _self._charters : charters // ignore: cast_nullable_to_non_nullable
as List<CharterLeg>,
  ));
}

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get mainAirport {
    if (_self.mainAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.mainAirport!, (value) {
    return _then(_self.copyWith(mainAirport: value));
  });
}
}

// dart format on
