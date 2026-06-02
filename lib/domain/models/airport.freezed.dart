// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Airport {

@JsonKey(name: 'Id') String? get id;@JsonKey(name: 'ICAO') String? get icao;@JsonKey(name: 'IATA') String? get iata;@JsonKey(name: 'Name') String? get name;@JsonKey(name: 'Latitude') double get latitude;@JsonKey(name: 'Longitude') double get longitude;
/// Create a copy of Airport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AirportCopyWith<Airport> get copyWith => _$AirportCopyWithImpl<Airport>(this as Airport, _$identity);

  /// Serializes this Airport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Airport&&(identical(other.id, id) || other.id == id)&&(identical(other.icao, icao) || other.icao == icao)&&(identical(other.iata, iata) || other.iata == iata)&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,icao,iata,name,latitude,longitude);

@override
String toString() {
  return 'Airport(id: $id, icao: $icao, iata: $iata, name: $name, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $AirportCopyWith<$Res>  {
  factory $AirportCopyWith(Airport value, $Res Function(Airport) _then) = _$AirportCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String? id,@JsonKey(name: 'ICAO') String? icao,@JsonKey(name: 'IATA') String? iata,@JsonKey(name: 'Name') String? name,@JsonKey(name: 'Latitude') double latitude,@JsonKey(name: 'Longitude') double longitude
});




}
/// @nodoc
class _$AirportCopyWithImpl<$Res>
    implements $AirportCopyWith<$Res> {
  _$AirportCopyWithImpl(this._self, this._then);

  final Airport _self;
  final $Res Function(Airport) _then;

/// Create a copy of Airport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? icao = freezed,Object? iata = freezed,Object? name = freezed,Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,icao: freezed == icao ? _self.icao : icao // ignore: cast_nullable_to_non_nullable
as String?,iata: freezed == iata ? _self.iata : iata // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Airport].
extension AirportPatterns on Airport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Airport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Airport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Airport value)  $default,){
final _that = this;
switch (_that) {
case _Airport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Airport value)?  $default,){
final _that = this;
switch (_that) {
case _Airport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String? id, @JsonKey(name: 'ICAO')  String? icao, @JsonKey(name: 'IATA')  String? iata, @JsonKey(name: 'Name')  String? name, @JsonKey(name: 'Latitude')  double latitude, @JsonKey(name: 'Longitude')  double longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Airport() when $default != null:
return $default(_that.id,_that.icao,_that.iata,_that.name,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String? id, @JsonKey(name: 'ICAO')  String? icao, @JsonKey(name: 'IATA')  String? iata, @JsonKey(name: 'Name')  String? name, @JsonKey(name: 'Latitude')  double latitude, @JsonKey(name: 'Longitude')  double longitude)  $default,) {final _that = this;
switch (_that) {
case _Airport():
return $default(_that.id,_that.icao,_that.iata,_that.name,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String? id, @JsonKey(name: 'ICAO')  String? icao, @JsonKey(name: 'IATA')  String? iata, @JsonKey(name: 'Name')  String? name, @JsonKey(name: 'Latitude')  double latitude, @JsonKey(name: 'Longitude')  double longitude)?  $default,) {final _that = this;
switch (_that) {
case _Airport() when $default != null:
return $default(_that.id,_that.icao,_that.iata,_that.name,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Airport extends Airport {
  const _Airport({@JsonKey(name: 'Id') this.id, @JsonKey(name: 'ICAO') this.icao, @JsonKey(name: 'IATA') this.iata, @JsonKey(name: 'Name') this.name, @JsonKey(name: 'Latitude') this.latitude = 0, @JsonKey(name: 'Longitude') this.longitude = 0}): super._();
  factory _Airport.fromJson(Map<String, dynamic> json) => _$AirportFromJson(json);

@override@JsonKey(name: 'Id') final  String? id;
@override@JsonKey(name: 'ICAO') final  String? icao;
@override@JsonKey(name: 'IATA') final  String? iata;
@override@JsonKey(name: 'Name') final  String? name;
@override@JsonKey(name: 'Latitude') final  double latitude;
@override@JsonKey(name: 'Longitude') final  double longitude;

/// Create a copy of Airport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AirportCopyWith<_Airport> get copyWith => __$AirportCopyWithImpl<_Airport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AirportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Airport&&(identical(other.id, id) || other.id == id)&&(identical(other.icao, icao) || other.icao == icao)&&(identical(other.iata, iata) || other.iata == iata)&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,icao,iata,name,latitude,longitude);

@override
String toString() {
  return 'Airport(id: $id, icao: $icao, iata: $iata, name: $name, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$AirportCopyWith<$Res> implements $AirportCopyWith<$Res> {
  factory _$AirportCopyWith(_Airport value, $Res Function(_Airport) _then) = __$AirportCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String? id,@JsonKey(name: 'ICAO') String? icao,@JsonKey(name: 'IATA') String? iata,@JsonKey(name: 'Name') String? name,@JsonKey(name: 'Latitude') double latitude,@JsonKey(name: 'Longitude') double longitude
});




}
/// @nodoc
class __$AirportCopyWithImpl<$Res>
    implements _$AirportCopyWith<$Res> {
  __$AirportCopyWithImpl(this._self, this._then);

  final _Airport _self;
  final $Res Function(_Airport) _then;

/// Create a copy of Airport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? icao = freezed,Object? iata = freezed,Object? name = freezed,Object? latitude = null,Object? longitude = null,}) {
  return _then(_Airport(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,icao: freezed == icao ? _self.icao : icao // ignore: cast_nullable_to_non_nullable
as String?,iata: freezed == iata ? _self.iata : iata // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
