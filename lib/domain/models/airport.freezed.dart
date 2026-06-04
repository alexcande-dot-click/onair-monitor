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

@JsonKey(name: 'Id') String? get id;@JsonKey(name: 'ICAO') String? get icao;@JsonKey(name: 'IATA') String? get iata;@JsonKey(name: 'Name') String? get name;@JsonKey(name: 'City') String? get city;@JsonKey(name: 'Latitude') double get latitude;@JsonKey(name: 'Longitude') double get longitude;@JsonKey(name: 'State') String? get state;@JsonKey(name: 'CountryCode') String? get countryCode;@JsonKey(name: 'CountryName') String? get countryName;@JsonKey(name: 'Elevation') double get elevation;@JsonKey(name: 'Size') int get size;@JsonKey(name: 'TransitionAltitude') int get transitionAltitude;@JsonKey(name: 'HasLandRunway') bool get hasLandRunway;@JsonKey(name: 'HasWaterRunway') bool get hasWaterRunway;@JsonKey(name: 'HasHelipad') bool get hasHelipad;@JsonKey(name: 'IsClosed') bool get isClosed;@JsonKey(name: 'IsMilitary') bool get isMilitary;@JsonKey(name: 'MagVar') double get magVar;@JsonKey(name: 'HasLights') bool get hasLights;@JsonKey(name: 'LastMETARDate') DateTime? get lastMetarDate;@JsonKey(name: 'Runways') List<Runway> get runways;
/// Create a copy of Airport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AirportCopyWith<Airport> get copyWith => _$AirportCopyWithImpl<Airport>(this as Airport, _$identity);

  /// Serializes this Airport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Airport&&(identical(other.id, id) || other.id == id)&&(identical(other.icao, icao) || other.icao == icao)&&(identical(other.iata, iata) || other.iata == iata)&&(identical(other.name, name) || other.name == name)&&(identical(other.city, city) || other.city == city)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.state, state) || other.state == state)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.elevation, elevation) || other.elevation == elevation)&&(identical(other.size, size) || other.size == size)&&(identical(other.transitionAltitude, transitionAltitude) || other.transitionAltitude == transitionAltitude)&&(identical(other.hasLandRunway, hasLandRunway) || other.hasLandRunway == hasLandRunway)&&(identical(other.hasWaterRunway, hasWaterRunway) || other.hasWaterRunway == hasWaterRunway)&&(identical(other.hasHelipad, hasHelipad) || other.hasHelipad == hasHelipad)&&(identical(other.isClosed, isClosed) || other.isClosed == isClosed)&&(identical(other.isMilitary, isMilitary) || other.isMilitary == isMilitary)&&(identical(other.magVar, magVar) || other.magVar == magVar)&&(identical(other.hasLights, hasLights) || other.hasLights == hasLights)&&(identical(other.lastMetarDate, lastMetarDate) || other.lastMetarDate == lastMetarDate)&&const DeepCollectionEquality().equals(other.runways, runways));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,icao,iata,name,city,latitude,longitude,state,countryCode,countryName,elevation,size,transitionAltitude,hasLandRunway,hasWaterRunway,hasHelipad,isClosed,isMilitary,magVar,hasLights,lastMetarDate,const DeepCollectionEquality().hash(runways)]);

@override
String toString() {
  return 'Airport(id: $id, icao: $icao, iata: $iata, name: $name, city: $city, latitude: $latitude, longitude: $longitude, state: $state, countryCode: $countryCode, countryName: $countryName, elevation: $elevation, size: $size, transitionAltitude: $transitionAltitude, hasLandRunway: $hasLandRunway, hasWaterRunway: $hasWaterRunway, hasHelipad: $hasHelipad, isClosed: $isClosed, isMilitary: $isMilitary, magVar: $magVar, hasLights: $hasLights, lastMetarDate: $lastMetarDate, runways: $runways)';
}


}

/// @nodoc
abstract mixin class $AirportCopyWith<$Res>  {
  factory $AirportCopyWith(Airport value, $Res Function(Airport) _then) = _$AirportCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String? id,@JsonKey(name: 'ICAO') String? icao,@JsonKey(name: 'IATA') String? iata,@JsonKey(name: 'Name') String? name,@JsonKey(name: 'City') String? city,@JsonKey(name: 'Latitude') double latitude,@JsonKey(name: 'Longitude') double longitude,@JsonKey(name: 'State') String? state,@JsonKey(name: 'CountryCode') String? countryCode,@JsonKey(name: 'CountryName') String? countryName,@JsonKey(name: 'Elevation') double elevation,@JsonKey(name: 'Size') int size,@JsonKey(name: 'TransitionAltitude') int transitionAltitude,@JsonKey(name: 'HasLandRunway') bool hasLandRunway,@JsonKey(name: 'HasWaterRunway') bool hasWaterRunway,@JsonKey(name: 'HasHelipad') bool hasHelipad,@JsonKey(name: 'IsClosed') bool isClosed,@JsonKey(name: 'IsMilitary') bool isMilitary,@JsonKey(name: 'MagVar') double magVar,@JsonKey(name: 'HasLights') bool hasLights,@JsonKey(name: 'LastMETARDate') DateTime? lastMetarDate,@JsonKey(name: 'Runways') List<Runway> runways
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? icao = freezed,Object? iata = freezed,Object? name = freezed,Object? city = freezed,Object? latitude = null,Object? longitude = null,Object? state = freezed,Object? countryCode = freezed,Object? countryName = freezed,Object? elevation = null,Object? size = null,Object? transitionAltitude = null,Object? hasLandRunway = null,Object? hasWaterRunway = null,Object? hasHelipad = null,Object? isClosed = null,Object? isMilitary = null,Object? magVar = null,Object? hasLights = null,Object? lastMetarDate = freezed,Object? runways = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,icao: freezed == icao ? _self.icao : icao // ignore: cast_nullable_to_non_nullable
as String?,iata: freezed == iata ? _self.iata : iata // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,elevation: null == elevation ? _self.elevation : elevation // ignore: cast_nullable_to_non_nullable
as double,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,transitionAltitude: null == transitionAltitude ? _self.transitionAltitude : transitionAltitude // ignore: cast_nullable_to_non_nullable
as int,hasLandRunway: null == hasLandRunway ? _self.hasLandRunway : hasLandRunway // ignore: cast_nullable_to_non_nullable
as bool,hasWaterRunway: null == hasWaterRunway ? _self.hasWaterRunway : hasWaterRunway // ignore: cast_nullable_to_non_nullable
as bool,hasHelipad: null == hasHelipad ? _self.hasHelipad : hasHelipad // ignore: cast_nullable_to_non_nullable
as bool,isClosed: null == isClosed ? _self.isClosed : isClosed // ignore: cast_nullable_to_non_nullable
as bool,isMilitary: null == isMilitary ? _self.isMilitary : isMilitary // ignore: cast_nullable_to_non_nullable
as bool,magVar: null == magVar ? _self.magVar : magVar // ignore: cast_nullable_to_non_nullable
as double,hasLights: null == hasLights ? _self.hasLights : hasLights // ignore: cast_nullable_to_non_nullable
as bool,lastMetarDate: freezed == lastMetarDate ? _self.lastMetarDate : lastMetarDate // ignore: cast_nullable_to_non_nullable
as DateTime?,runways: null == runways ? _self.runways : runways // ignore: cast_nullable_to_non_nullable
as List<Runway>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String? id, @JsonKey(name: 'ICAO')  String? icao, @JsonKey(name: 'IATA')  String? iata, @JsonKey(name: 'Name')  String? name, @JsonKey(name: 'City')  String? city, @JsonKey(name: 'Latitude')  double latitude, @JsonKey(name: 'Longitude')  double longitude, @JsonKey(name: 'State')  String? state, @JsonKey(name: 'CountryCode')  String? countryCode, @JsonKey(name: 'CountryName')  String? countryName, @JsonKey(name: 'Elevation')  double elevation, @JsonKey(name: 'Size')  int size, @JsonKey(name: 'TransitionAltitude')  int transitionAltitude, @JsonKey(name: 'HasLandRunway')  bool hasLandRunway, @JsonKey(name: 'HasWaterRunway')  bool hasWaterRunway, @JsonKey(name: 'HasHelipad')  bool hasHelipad, @JsonKey(name: 'IsClosed')  bool isClosed, @JsonKey(name: 'IsMilitary')  bool isMilitary, @JsonKey(name: 'MagVar')  double magVar, @JsonKey(name: 'HasLights')  bool hasLights, @JsonKey(name: 'LastMETARDate')  DateTime? lastMetarDate, @JsonKey(name: 'Runways')  List<Runway> runways)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Airport() when $default != null:
return $default(_that.id,_that.icao,_that.iata,_that.name,_that.city,_that.latitude,_that.longitude,_that.state,_that.countryCode,_that.countryName,_that.elevation,_that.size,_that.transitionAltitude,_that.hasLandRunway,_that.hasWaterRunway,_that.hasHelipad,_that.isClosed,_that.isMilitary,_that.magVar,_that.hasLights,_that.lastMetarDate,_that.runways);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String? id, @JsonKey(name: 'ICAO')  String? icao, @JsonKey(name: 'IATA')  String? iata, @JsonKey(name: 'Name')  String? name, @JsonKey(name: 'City')  String? city, @JsonKey(name: 'Latitude')  double latitude, @JsonKey(name: 'Longitude')  double longitude, @JsonKey(name: 'State')  String? state, @JsonKey(name: 'CountryCode')  String? countryCode, @JsonKey(name: 'CountryName')  String? countryName, @JsonKey(name: 'Elevation')  double elevation, @JsonKey(name: 'Size')  int size, @JsonKey(name: 'TransitionAltitude')  int transitionAltitude, @JsonKey(name: 'HasLandRunway')  bool hasLandRunway, @JsonKey(name: 'HasWaterRunway')  bool hasWaterRunway, @JsonKey(name: 'HasHelipad')  bool hasHelipad, @JsonKey(name: 'IsClosed')  bool isClosed, @JsonKey(name: 'IsMilitary')  bool isMilitary, @JsonKey(name: 'MagVar')  double magVar, @JsonKey(name: 'HasLights')  bool hasLights, @JsonKey(name: 'LastMETARDate')  DateTime? lastMetarDate, @JsonKey(name: 'Runways')  List<Runway> runways)  $default,) {final _that = this;
switch (_that) {
case _Airport():
return $default(_that.id,_that.icao,_that.iata,_that.name,_that.city,_that.latitude,_that.longitude,_that.state,_that.countryCode,_that.countryName,_that.elevation,_that.size,_that.transitionAltitude,_that.hasLandRunway,_that.hasWaterRunway,_that.hasHelipad,_that.isClosed,_that.isMilitary,_that.magVar,_that.hasLights,_that.lastMetarDate,_that.runways);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String? id, @JsonKey(name: 'ICAO')  String? icao, @JsonKey(name: 'IATA')  String? iata, @JsonKey(name: 'Name')  String? name, @JsonKey(name: 'City')  String? city, @JsonKey(name: 'Latitude')  double latitude, @JsonKey(name: 'Longitude')  double longitude, @JsonKey(name: 'State')  String? state, @JsonKey(name: 'CountryCode')  String? countryCode, @JsonKey(name: 'CountryName')  String? countryName, @JsonKey(name: 'Elevation')  double elevation, @JsonKey(name: 'Size')  int size, @JsonKey(name: 'TransitionAltitude')  int transitionAltitude, @JsonKey(name: 'HasLandRunway')  bool hasLandRunway, @JsonKey(name: 'HasWaterRunway')  bool hasWaterRunway, @JsonKey(name: 'HasHelipad')  bool hasHelipad, @JsonKey(name: 'IsClosed')  bool isClosed, @JsonKey(name: 'IsMilitary')  bool isMilitary, @JsonKey(name: 'MagVar')  double magVar, @JsonKey(name: 'HasLights')  bool hasLights, @JsonKey(name: 'LastMETARDate')  DateTime? lastMetarDate, @JsonKey(name: 'Runways')  List<Runway> runways)?  $default,) {final _that = this;
switch (_that) {
case _Airport() when $default != null:
return $default(_that.id,_that.icao,_that.iata,_that.name,_that.city,_that.latitude,_that.longitude,_that.state,_that.countryCode,_that.countryName,_that.elevation,_that.size,_that.transitionAltitude,_that.hasLandRunway,_that.hasWaterRunway,_that.hasHelipad,_that.isClosed,_that.isMilitary,_that.magVar,_that.hasLights,_that.lastMetarDate,_that.runways);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Airport extends Airport {
  const _Airport({@JsonKey(name: 'Id') this.id, @JsonKey(name: 'ICAO') this.icao, @JsonKey(name: 'IATA') this.iata, @JsonKey(name: 'Name') this.name, @JsonKey(name: 'City') this.city, @JsonKey(name: 'Latitude') this.latitude = 0, @JsonKey(name: 'Longitude') this.longitude = 0, @JsonKey(name: 'State') this.state, @JsonKey(name: 'CountryCode') this.countryCode, @JsonKey(name: 'CountryName') this.countryName, @JsonKey(name: 'Elevation') this.elevation = 0, @JsonKey(name: 'Size') this.size = 0, @JsonKey(name: 'TransitionAltitude') this.transitionAltitude = 0, @JsonKey(name: 'HasLandRunway') this.hasLandRunway = false, @JsonKey(name: 'HasWaterRunway') this.hasWaterRunway = false, @JsonKey(name: 'HasHelipad') this.hasHelipad = false, @JsonKey(name: 'IsClosed') this.isClosed = false, @JsonKey(name: 'IsMilitary') this.isMilitary = false, @JsonKey(name: 'MagVar') this.magVar = 0, @JsonKey(name: 'HasLights') this.hasLights = false, @JsonKey(name: 'LastMETARDate') this.lastMetarDate, @JsonKey(name: 'Runways') final  List<Runway> runways = const []}): _runways = runways,super._();
  factory _Airport.fromJson(Map<String, dynamic> json) => _$AirportFromJson(json);

@override@JsonKey(name: 'Id') final  String? id;
@override@JsonKey(name: 'ICAO') final  String? icao;
@override@JsonKey(name: 'IATA') final  String? iata;
@override@JsonKey(name: 'Name') final  String? name;
@override@JsonKey(name: 'City') final  String? city;
@override@JsonKey(name: 'Latitude') final  double latitude;
@override@JsonKey(name: 'Longitude') final  double longitude;
@override@JsonKey(name: 'State') final  String? state;
@override@JsonKey(name: 'CountryCode') final  String? countryCode;
@override@JsonKey(name: 'CountryName') final  String? countryName;
@override@JsonKey(name: 'Elevation') final  double elevation;
@override@JsonKey(name: 'Size') final  int size;
@override@JsonKey(name: 'TransitionAltitude') final  int transitionAltitude;
@override@JsonKey(name: 'HasLandRunway') final  bool hasLandRunway;
@override@JsonKey(name: 'HasWaterRunway') final  bool hasWaterRunway;
@override@JsonKey(name: 'HasHelipad') final  bool hasHelipad;
@override@JsonKey(name: 'IsClosed') final  bool isClosed;
@override@JsonKey(name: 'IsMilitary') final  bool isMilitary;
@override@JsonKey(name: 'MagVar') final  double magVar;
@override@JsonKey(name: 'HasLights') final  bool hasLights;
@override@JsonKey(name: 'LastMETARDate') final  DateTime? lastMetarDate;
 final  List<Runway> _runways;
@override@JsonKey(name: 'Runways') List<Runway> get runways {
  if (_runways is EqualUnmodifiableListView) return _runways;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_runways);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Airport&&(identical(other.id, id) || other.id == id)&&(identical(other.icao, icao) || other.icao == icao)&&(identical(other.iata, iata) || other.iata == iata)&&(identical(other.name, name) || other.name == name)&&(identical(other.city, city) || other.city == city)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.state, state) || other.state == state)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.elevation, elevation) || other.elevation == elevation)&&(identical(other.size, size) || other.size == size)&&(identical(other.transitionAltitude, transitionAltitude) || other.transitionAltitude == transitionAltitude)&&(identical(other.hasLandRunway, hasLandRunway) || other.hasLandRunway == hasLandRunway)&&(identical(other.hasWaterRunway, hasWaterRunway) || other.hasWaterRunway == hasWaterRunway)&&(identical(other.hasHelipad, hasHelipad) || other.hasHelipad == hasHelipad)&&(identical(other.isClosed, isClosed) || other.isClosed == isClosed)&&(identical(other.isMilitary, isMilitary) || other.isMilitary == isMilitary)&&(identical(other.magVar, magVar) || other.magVar == magVar)&&(identical(other.hasLights, hasLights) || other.hasLights == hasLights)&&(identical(other.lastMetarDate, lastMetarDate) || other.lastMetarDate == lastMetarDate)&&const DeepCollectionEquality().equals(other._runways, _runways));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,icao,iata,name,city,latitude,longitude,state,countryCode,countryName,elevation,size,transitionAltitude,hasLandRunway,hasWaterRunway,hasHelipad,isClosed,isMilitary,magVar,hasLights,lastMetarDate,const DeepCollectionEquality().hash(_runways)]);

@override
String toString() {
  return 'Airport(id: $id, icao: $icao, iata: $iata, name: $name, city: $city, latitude: $latitude, longitude: $longitude, state: $state, countryCode: $countryCode, countryName: $countryName, elevation: $elevation, size: $size, transitionAltitude: $transitionAltitude, hasLandRunway: $hasLandRunway, hasWaterRunway: $hasWaterRunway, hasHelipad: $hasHelipad, isClosed: $isClosed, isMilitary: $isMilitary, magVar: $magVar, hasLights: $hasLights, lastMetarDate: $lastMetarDate, runways: $runways)';
}


}

/// @nodoc
abstract mixin class _$AirportCopyWith<$Res> implements $AirportCopyWith<$Res> {
  factory _$AirportCopyWith(_Airport value, $Res Function(_Airport) _then) = __$AirportCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String? id,@JsonKey(name: 'ICAO') String? icao,@JsonKey(name: 'IATA') String? iata,@JsonKey(name: 'Name') String? name,@JsonKey(name: 'City') String? city,@JsonKey(name: 'Latitude') double latitude,@JsonKey(name: 'Longitude') double longitude,@JsonKey(name: 'State') String? state,@JsonKey(name: 'CountryCode') String? countryCode,@JsonKey(name: 'CountryName') String? countryName,@JsonKey(name: 'Elevation') double elevation,@JsonKey(name: 'Size') int size,@JsonKey(name: 'TransitionAltitude') int transitionAltitude,@JsonKey(name: 'HasLandRunway') bool hasLandRunway,@JsonKey(name: 'HasWaterRunway') bool hasWaterRunway,@JsonKey(name: 'HasHelipad') bool hasHelipad,@JsonKey(name: 'IsClosed') bool isClosed,@JsonKey(name: 'IsMilitary') bool isMilitary,@JsonKey(name: 'MagVar') double magVar,@JsonKey(name: 'HasLights') bool hasLights,@JsonKey(name: 'LastMETARDate') DateTime? lastMetarDate,@JsonKey(name: 'Runways') List<Runway> runways
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? icao = freezed,Object? iata = freezed,Object? name = freezed,Object? city = freezed,Object? latitude = null,Object? longitude = null,Object? state = freezed,Object? countryCode = freezed,Object? countryName = freezed,Object? elevation = null,Object? size = null,Object? transitionAltitude = null,Object? hasLandRunway = null,Object? hasWaterRunway = null,Object? hasHelipad = null,Object? isClosed = null,Object? isMilitary = null,Object? magVar = null,Object? hasLights = null,Object? lastMetarDate = freezed,Object? runways = null,}) {
  return _then(_Airport(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,icao: freezed == icao ? _self.icao : icao // ignore: cast_nullable_to_non_nullable
as String?,iata: freezed == iata ? _self.iata : iata // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,elevation: null == elevation ? _self.elevation : elevation // ignore: cast_nullable_to_non_nullable
as double,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,transitionAltitude: null == transitionAltitude ? _self.transitionAltitude : transitionAltitude // ignore: cast_nullable_to_non_nullable
as int,hasLandRunway: null == hasLandRunway ? _self.hasLandRunway : hasLandRunway // ignore: cast_nullable_to_non_nullable
as bool,hasWaterRunway: null == hasWaterRunway ? _self.hasWaterRunway : hasWaterRunway // ignore: cast_nullable_to_non_nullable
as bool,hasHelipad: null == hasHelipad ? _self.hasHelipad : hasHelipad // ignore: cast_nullable_to_non_nullable
as bool,isClosed: null == isClosed ? _self.isClosed : isClosed // ignore: cast_nullable_to_non_nullable
as bool,isMilitary: null == isMilitary ? _self.isMilitary : isMilitary // ignore: cast_nullable_to_non_nullable
as bool,magVar: null == magVar ? _self.magVar : magVar // ignore: cast_nullable_to_non_nullable
as double,hasLights: null == hasLights ? _self.hasLights : hasLights // ignore: cast_nullable_to_non_nullable
as bool,lastMetarDate: freezed == lastMetarDate ? _self.lastMetarDate : lastMetarDate // ignore: cast_nullable_to_non_nullable
as DateTime?,runways: null == runways ? _self._runways : runways // ignore: cast_nullable_to_non_nullable
as List<Runway>,
  ));
}


}

// dart format on
