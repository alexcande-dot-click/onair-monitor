// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'runway.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Runway {

@JsonKey(name: 'Name') String? get name;@JsonKey(name: 'MagneticHeading') int get magneticHeading;@JsonKey(name: 'Length') int get length;@JsonKey(name: 'Width') int get width;@JsonKey(name: 'HasIls') bool get hasIls;@JsonKey(name: 'IlsFrequency') double get ilsFrequency;@JsonKey(name: 'SurfaceType') int get surfaceType;@JsonKey(name: 'ApproachLights') String? get approachLights;
/// Create a copy of Runway
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RunwayCopyWith<Runway> get copyWith => _$RunwayCopyWithImpl<Runway>(this as Runway, _$identity);

  /// Serializes this Runway to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Runway&&(identical(other.name, name) || other.name == name)&&(identical(other.magneticHeading, magneticHeading) || other.magneticHeading == magneticHeading)&&(identical(other.length, length) || other.length == length)&&(identical(other.width, width) || other.width == width)&&(identical(other.hasIls, hasIls) || other.hasIls == hasIls)&&(identical(other.ilsFrequency, ilsFrequency) || other.ilsFrequency == ilsFrequency)&&(identical(other.surfaceType, surfaceType) || other.surfaceType == surfaceType)&&(identical(other.approachLights, approachLights) || other.approachLights == approachLights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,magneticHeading,length,width,hasIls,ilsFrequency,surfaceType,approachLights);

@override
String toString() {
  return 'Runway(name: $name, magneticHeading: $magneticHeading, length: $length, width: $width, hasIls: $hasIls, ilsFrequency: $ilsFrequency, surfaceType: $surfaceType, approachLights: $approachLights)';
}


}

/// @nodoc
abstract mixin class $RunwayCopyWith<$Res>  {
  factory $RunwayCopyWith(Runway value, $Res Function(Runway) _then) = _$RunwayCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Name') String? name,@JsonKey(name: 'MagneticHeading') int magneticHeading,@JsonKey(name: 'Length') int length,@JsonKey(name: 'Width') int width,@JsonKey(name: 'HasIls') bool hasIls,@JsonKey(name: 'IlsFrequency') double ilsFrequency,@JsonKey(name: 'SurfaceType') int surfaceType,@JsonKey(name: 'ApproachLights') String? approachLights
});




}
/// @nodoc
class _$RunwayCopyWithImpl<$Res>
    implements $RunwayCopyWith<$Res> {
  _$RunwayCopyWithImpl(this._self, this._then);

  final Runway _self;
  final $Res Function(Runway) _then;

/// Create a copy of Runway
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? magneticHeading = null,Object? length = null,Object? width = null,Object? hasIls = null,Object? ilsFrequency = null,Object? surfaceType = null,Object? approachLights = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,magneticHeading: null == magneticHeading ? _self.magneticHeading : magneticHeading // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,hasIls: null == hasIls ? _self.hasIls : hasIls // ignore: cast_nullable_to_non_nullable
as bool,ilsFrequency: null == ilsFrequency ? _self.ilsFrequency : ilsFrequency // ignore: cast_nullable_to_non_nullable
as double,surfaceType: null == surfaceType ? _self.surfaceType : surfaceType // ignore: cast_nullable_to_non_nullable
as int,approachLights: freezed == approachLights ? _self.approachLights : approachLights // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Runway].
extension RunwayPatterns on Runway {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Runway value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Runway() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Runway value)  $default,){
final _that = this;
switch (_that) {
case _Runway():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Runway value)?  $default,){
final _that = this;
switch (_that) {
case _Runway() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Name')  String? name, @JsonKey(name: 'MagneticHeading')  int magneticHeading, @JsonKey(name: 'Length')  int length, @JsonKey(name: 'Width')  int width, @JsonKey(name: 'HasIls')  bool hasIls, @JsonKey(name: 'IlsFrequency')  double ilsFrequency, @JsonKey(name: 'SurfaceType')  int surfaceType, @JsonKey(name: 'ApproachLights')  String? approachLights)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Runway() when $default != null:
return $default(_that.name,_that.magneticHeading,_that.length,_that.width,_that.hasIls,_that.ilsFrequency,_that.surfaceType,_that.approachLights);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Name')  String? name, @JsonKey(name: 'MagneticHeading')  int magneticHeading, @JsonKey(name: 'Length')  int length, @JsonKey(name: 'Width')  int width, @JsonKey(name: 'HasIls')  bool hasIls, @JsonKey(name: 'IlsFrequency')  double ilsFrequency, @JsonKey(name: 'SurfaceType')  int surfaceType, @JsonKey(name: 'ApproachLights')  String? approachLights)  $default,) {final _that = this;
switch (_that) {
case _Runway():
return $default(_that.name,_that.magneticHeading,_that.length,_that.width,_that.hasIls,_that.ilsFrequency,_that.surfaceType,_that.approachLights);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Name')  String? name, @JsonKey(name: 'MagneticHeading')  int magneticHeading, @JsonKey(name: 'Length')  int length, @JsonKey(name: 'Width')  int width, @JsonKey(name: 'HasIls')  bool hasIls, @JsonKey(name: 'IlsFrequency')  double ilsFrequency, @JsonKey(name: 'SurfaceType')  int surfaceType, @JsonKey(name: 'ApproachLights')  String? approachLights)?  $default,) {final _that = this;
switch (_that) {
case _Runway() when $default != null:
return $default(_that.name,_that.magneticHeading,_that.length,_that.width,_that.hasIls,_that.ilsFrequency,_that.surfaceType,_that.approachLights);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Runway implements Runway {
  const _Runway({@JsonKey(name: 'Name') this.name, @JsonKey(name: 'MagneticHeading') this.magneticHeading = 0, @JsonKey(name: 'Length') this.length = 0, @JsonKey(name: 'Width') this.width = 0, @JsonKey(name: 'HasIls') this.hasIls = false, @JsonKey(name: 'IlsFrequency') this.ilsFrequency = 0, @JsonKey(name: 'SurfaceType') this.surfaceType = 0, @JsonKey(name: 'ApproachLights') this.approachLights});
  factory _Runway.fromJson(Map<String, dynamic> json) => _$RunwayFromJson(json);

@override@JsonKey(name: 'Name') final  String? name;
@override@JsonKey(name: 'MagneticHeading') final  int magneticHeading;
@override@JsonKey(name: 'Length') final  int length;
@override@JsonKey(name: 'Width') final  int width;
@override@JsonKey(name: 'HasIls') final  bool hasIls;
@override@JsonKey(name: 'IlsFrequency') final  double ilsFrequency;
@override@JsonKey(name: 'SurfaceType') final  int surfaceType;
@override@JsonKey(name: 'ApproachLights') final  String? approachLights;

/// Create a copy of Runway
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RunwayCopyWith<_Runway> get copyWith => __$RunwayCopyWithImpl<_Runway>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RunwayToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Runway&&(identical(other.name, name) || other.name == name)&&(identical(other.magneticHeading, magneticHeading) || other.magneticHeading == magneticHeading)&&(identical(other.length, length) || other.length == length)&&(identical(other.width, width) || other.width == width)&&(identical(other.hasIls, hasIls) || other.hasIls == hasIls)&&(identical(other.ilsFrequency, ilsFrequency) || other.ilsFrequency == ilsFrequency)&&(identical(other.surfaceType, surfaceType) || other.surfaceType == surfaceType)&&(identical(other.approachLights, approachLights) || other.approachLights == approachLights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,magneticHeading,length,width,hasIls,ilsFrequency,surfaceType,approachLights);

@override
String toString() {
  return 'Runway(name: $name, magneticHeading: $magneticHeading, length: $length, width: $width, hasIls: $hasIls, ilsFrequency: $ilsFrequency, surfaceType: $surfaceType, approachLights: $approachLights)';
}


}

/// @nodoc
abstract mixin class _$RunwayCopyWith<$Res> implements $RunwayCopyWith<$Res> {
  factory _$RunwayCopyWith(_Runway value, $Res Function(_Runway) _then) = __$RunwayCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Name') String? name,@JsonKey(name: 'MagneticHeading') int magneticHeading,@JsonKey(name: 'Length') int length,@JsonKey(name: 'Width') int width,@JsonKey(name: 'HasIls') bool hasIls,@JsonKey(name: 'IlsFrequency') double ilsFrequency,@JsonKey(name: 'SurfaceType') int surfaceType,@JsonKey(name: 'ApproachLights') String? approachLights
});




}
/// @nodoc
class __$RunwayCopyWithImpl<$Res>
    implements _$RunwayCopyWith<$Res> {
  __$RunwayCopyWithImpl(this._self, this._then);

  final _Runway _self;
  final $Res Function(_Runway) _then;

/// Create a copy of Runway
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? magneticHeading = null,Object? length = null,Object? width = null,Object? hasIls = null,Object? ilsFrequency = null,Object? surfaceType = null,Object? approachLights = freezed,}) {
  return _then(_Runway(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,magneticHeading: null == magneticHeading ? _self.magneticHeading : magneticHeading // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,hasIls: null == hasIls ? _self.hasIls : hasIls // ignore: cast_nullable_to_non_nullable
as bool,ilsFrequency: null == ilsFrequency ? _self.ilsFrequency : ilsFrequency // ignore: cast_nullable_to_non_nullable
as double,surfaceType: null == surfaceType ? _self.surfaceType : surfaceType // ignore: cast_nullable_to_non_nullable
as int,approachLights: freezed == approachLights ? _self.approachLights : approachLights // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
