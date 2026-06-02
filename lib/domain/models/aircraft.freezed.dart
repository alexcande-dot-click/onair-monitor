// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aircraft.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Aircraft {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'Identifier') String get identifier;@JsonKey(name: 'Nickname') String? get nickname;@JsonKey(name: 'AircraftTypeId') String? get aircraftTypeId;@JsonKey(name: 'AircraftType') AircraftType? get aircraftType;@JsonKey(name: 'AircraftStatus') int get aircraftStatusCode;@JsonKey(name: 'Latitude') double get latitude;@JsonKey(name: 'Longitude') double get longitude;@JsonKey(name: 'Heading') double get heading;@JsonKey(name: 'Altitude') double get altitude;@JsonKey(name: 'IndicatedSpeed') double get indicatedSpeed;@JsonKey(name: 'GroundSpeed') double get groundSpeed;@JsonKey(name: 'fuelTotalGallons') double get fuelTotalGallons;@JsonKey(name: 'airframeCondition') double get airframeCondition;@JsonKey(name: 'MustDoMaintenance') bool get mustDoMaintenance;@JsonKey(name: 'MustDoMaintenanceSoon') bool get mustDoMaintenanceSoon;@JsonKey(name: 'CurrentAirportId') String? get currentAirportId;@JsonKey(name: 'CurrentAirport') Airport? get currentAirport;
/// Create a copy of Aircraft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AircraftCopyWith<Aircraft> get copyWith => _$AircraftCopyWithImpl<Aircraft>(this as Aircraft, _$identity);

  /// Serializes this Aircraft to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Aircraft&&(identical(other.id, id) || other.id == id)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.aircraftTypeId, aircraftTypeId) || other.aircraftTypeId == aircraftTypeId)&&(identical(other.aircraftType, aircraftType) || other.aircraftType == aircraftType)&&(identical(other.aircraftStatusCode, aircraftStatusCode) || other.aircraftStatusCode == aircraftStatusCode)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.altitude, altitude) || other.altitude == altitude)&&(identical(other.indicatedSpeed, indicatedSpeed) || other.indicatedSpeed == indicatedSpeed)&&(identical(other.groundSpeed, groundSpeed) || other.groundSpeed == groundSpeed)&&(identical(other.fuelTotalGallons, fuelTotalGallons) || other.fuelTotalGallons == fuelTotalGallons)&&(identical(other.airframeCondition, airframeCondition) || other.airframeCondition == airframeCondition)&&(identical(other.mustDoMaintenance, mustDoMaintenance) || other.mustDoMaintenance == mustDoMaintenance)&&(identical(other.mustDoMaintenanceSoon, mustDoMaintenanceSoon) || other.mustDoMaintenanceSoon == mustDoMaintenanceSoon)&&(identical(other.currentAirportId, currentAirportId) || other.currentAirportId == currentAirportId)&&(identical(other.currentAirport, currentAirport) || other.currentAirport == currentAirport));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,identifier,nickname,aircraftTypeId,aircraftType,aircraftStatusCode,latitude,longitude,heading,altitude,indicatedSpeed,groundSpeed,fuelTotalGallons,airframeCondition,mustDoMaintenance,mustDoMaintenanceSoon,currentAirportId,currentAirport);

@override
String toString() {
  return 'Aircraft(id: $id, identifier: $identifier, nickname: $nickname, aircraftTypeId: $aircraftTypeId, aircraftType: $aircraftType, aircraftStatusCode: $aircraftStatusCode, latitude: $latitude, longitude: $longitude, heading: $heading, altitude: $altitude, indicatedSpeed: $indicatedSpeed, groundSpeed: $groundSpeed, fuelTotalGallons: $fuelTotalGallons, airframeCondition: $airframeCondition, mustDoMaintenance: $mustDoMaintenance, mustDoMaintenanceSoon: $mustDoMaintenanceSoon, currentAirportId: $currentAirportId, currentAirport: $currentAirport)';
}


}

/// @nodoc
abstract mixin class $AircraftCopyWith<$Res>  {
  factory $AircraftCopyWith(Aircraft value, $Res Function(Aircraft) _then) = _$AircraftCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Identifier') String identifier,@JsonKey(name: 'Nickname') String? nickname,@JsonKey(name: 'AircraftTypeId') String? aircraftTypeId,@JsonKey(name: 'AircraftType') AircraftType? aircraftType,@JsonKey(name: 'AircraftStatus') int aircraftStatusCode,@JsonKey(name: 'Latitude') double latitude,@JsonKey(name: 'Longitude') double longitude,@JsonKey(name: 'Heading') double heading,@JsonKey(name: 'Altitude') double altitude,@JsonKey(name: 'IndicatedSpeed') double indicatedSpeed,@JsonKey(name: 'GroundSpeed') double groundSpeed,@JsonKey(name: 'fuelTotalGallons') double fuelTotalGallons,@JsonKey(name: 'airframeCondition') double airframeCondition,@JsonKey(name: 'MustDoMaintenance') bool mustDoMaintenance,@JsonKey(name: 'MustDoMaintenanceSoon') bool mustDoMaintenanceSoon,@JsonKey(name: 'CurrentAirportId') String? currentAirportId,@JsonKey(name: 'CurrentAirport') Airport? currentAirport
});


$AircraftTypeCopyWith<$Res>? get aircraftType;$AirportCopyWith<$Res>? get currentAirport;

}
/// @nodoc
class _$AircraftCopyWithImpl<$Res>
    implements $AircraftCopyWith<$Res> {
  _$AircraftCopyWithImpl(this._self, this._then);

  final Aircraft _self;
  final $Res Function(Aircraft) _then;

/// Create a copy of Aircraft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? identifier = null,Object? nickname = freezed,Object? aircraftTypeId = freezed,Object? aircraftType = freezed,Object? aircraftStatusCode = null,Object? latitude = null,Object? longitude = null,Object? heading = null,Object? altitude = null,Object? indicatedSpeed = null,Object? groundSpeed = null,Object? fuelTotalGallons = null,Object? airframeCondition = null,Object? mustDoMaintenance = null,Object? mustDoMaintenanceSoon = null,Object? currentAirportId = freezed,Object? currentAirport = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,aircraftTypeId: freezed == aircraftTypeId ? _self.aircraftTypeId : aircraftTypeId // ignore: cast_nullable_to_non_nullable
as String?,aircraftType: freezed == aircraftType ? _self.aircraftType : aircraftType // ignore: cast_nullable_to_non_nullable
as AircraftType?,aircraftStatusCode: null == aircraftStatusCode ? _self.aircraftStatusCode : aircraftStatusCode // ignore: cast_nullable_to_non_nullable
as int,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,heading: null == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as double,altitude: null == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as double,indicatedSpeed: null == indicatedSpeed ? _self.indicatedSpeed : indicatedSpeed // ignore: cast_nullable_to_non_nullable
as double,groundSpeed: null == groundSpeed ? _self.groundSpeed : groundSpeed // ignore: cast_nullable_to_non_nullable
as double,fuelTotalGallons: null == fuelTotalGallons ? _self.fuelTotalGallons : fuelTotalGallons // ignore: cast_nullable_to_non_nullable
as double,airframeCondition: null == airframeCondition ? _self.airframeCondition : airframeCondition // ignore: cast_nullable_to_non_nullable
as double,mustDoMaintenance: null == mustDoMaintenance ? _self.mustDoMaintenance : mustDoMaintenance // ignore: cast_nullable_to_non_nullable
as bool,mustDoMaintenanceSoon: null == mustDoMaintenanceSoon ? _self.mustDoMaintenanceSoon : mustDoMaintenanceSoon // ignore: cast_nullable_to_non_nullable
as bool,currentAirportId: freezed == currentAirportId ? _self.currentAirportId : currentAirportId // ignore: cast_nullable_to_non_nullable
as String?,currentAirport: freezed == currentAirport ? _self.currentAirport : currentAirport // ignore: cast_nullable_to_non_nullable
as Airport?,
  ));
}
/// Create a copy of Aircraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AircraftTypeCopyWith<$Res>? get aircraftType {
    if (_self.aircraftType == null) {
    return null;
  }

  return $AircraftTypeCopyWith<$Res>(_self.aircraftType!, (value) {
    return _then(_self.copyWith(aircraftType: value));
  });
}/// Create a copy of Aircraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get currentAirport {
    if (_self.currentAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.currentAirport!, (value) {
    return _then(_self.copyWith(currentAirport: value));
  });
}
}


/// Adds pattern-matching-related methods to [Aircraft].
extension AircraftPatterns on Aircraft {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Aircraft value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Aircraft() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Aircraft value)  $default,){
final _that = this;
switch (_that) {
case _Aircraft():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Aircraft value)?  $default,){
final _that = this;
switch (_that) {
case _Aircraft() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Identifier')  String identifier, @JsonKey(name: 'Nickname')  String? nickname, @JsonKey(name: 'AircraftTypeId')  String? aircraftTypeId, @JsonKey(name: 'AircraftType')  AircraftType? aircraftType, @JsonKey(name: 'AircraftStatus')  int aircraftStatusCode, @JsonKey(name: 'Latitude')  double latitude, @JsonKey(name: 'Longitude')  double longitude, @JsonKey(name: 'Heading')  double heading, @JsonKey(name: 'Altitude')  double altitude, @JsonKey(name: 'IndicatedSpeed')  double indicatedSpeed, @JsonKey(name: 'GroundSpeed')  double groundSpeed, @JsonKey(name: 'fuelTotalGallons')  double fuelTotalGallons, @JsonKey(name: 'airframeCondition')  double airframeCondition, @JsonKey(name: 'MustDoMaintenance')  bool mustDoMaintenance, @JsonKey(name: 'MustDoMaintenanceSoon')  bool mustDoMaintenanceSoon, @JsonKey(name: 'CurrentAirportId')  String? currentAirportId, @JsonKey(name: 'CurrentAirport')  Airport? currentAirport)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Aircraft() when $default != null:
return $default(_that.id,_that.identifier,_that.nickname,_that.aircraftTypeId,_that.aircraftType,_that.aircraftStatusCode,_that.latitude,_that.longitude,_that.heading,_that.altitude,_that.indicatedSpeed,_that.groundSpeed,_that.fuelTotalGallons,_that.airframeCondition,_that.mustDoMaintenance,_that.mustDoMaintenanceSoon,_that.currentAirportId,_that.currentAirport);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Identifier')  String identifier, @JsonKey(name: 'Nickname')  String? nickname, @JsonKey(name: 'AircraftTypeId')  String? aircraftTypeId, @JsonKey(name: 'AircraftType')  AircraftType? aircraftType, @JsonKey(name: 'AircraftStatus')  int aircraftStatusCode, @JsonKey(name: 'Latitude')  double latitude, @JsonKey(name: 'Longitude')  double longitude, @JsonKey(name: 'Heading')  double heading, @JsonKey(name: 'Altitude')  double altitude, @JsonKey(name: 'IndicatedSpeed')  double indicatedSpeed, @JsonKey(name: 'GroundSpeed')  double groundSpeed, @JsonKey(name: 'fuelTotalGallons')  double fuelTotalGallons, @JsonKey(name: 'airframeCondition')  double airframeCondition, @JsonKey(name: 'MustDoMaintenance')  bool mustDoMaintenance, @JsonKey(name: 'MustDoMaintenanceSoon')  bool mustDoMaintenanceSoon, @JsonKey(name: 'CurrentAirportId')  String? currentAirportId, @JsonKey(name: 'CurrentAirport')  Airport? currentAirport)  $default,) {final _that = this;
switch (_that) {
case _Aircraft():
return $default(_that.id,_that.identifier,_that.nickname,_that.aircraftTypeId,_that.aircraftType,_that.aircraftStatusCode,_that.latitude,_that.longitude,_that.heading,_that.altitude,_that.indicatedSpeed,_that.groundSpeed,_that.fuelTotalGallons,_that.airframeCondition,_that.mustDoMaintenance,_that.mustDoMaintenanceSoon,_that.currentAirportId,_that.currentAirport);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Identifier')  String identifier, @JsonKey(name: 'Nickname')  String? nickname, @JsonKey(name: 'AircraftTypeId')  String? aircraftTypeId, @JsonKey(name: 'AircraftType')  AircraftType? aircraftType, @JsonKey(name: 'AircraftStatus')  int aircraftStatusCode, @JsonKey(name: 'Latitude')  double latitude, @JsonKey(name: 'Longitude')  double longitude, @JsonKey(name: 'Heading')  double heading, @JsonKey(name: 'Altitude')  double altitude, @JsonKey(name: 'IndicatedSpeed')  double indicatedSpeed, @JsonKey(name: 'GroundSpeed')  double groundSpeed, @JsonKey(name: 'fuelTotalGallons')  double fuelTotalGallons, @JsonKey(name: 'airframeCondition')  double airframeCondition, @JsonKey(name: 'MustDoMaintenance')  bool mustDoMaintenance, @JsonKey(name: 'MustDoMaintenanceSoon')  bool mustDoMaintenanceSoon, @JsonKey(name: 'CurrentAirportId')  String? currentAirportId, @JsonKey(name: 'CurrentAirport')  Airport? currentAirport)?  $default,) {final _that = this;
switch (_that) {
case _Aircraft() when $default != null:
return $default(_that.id,_that.identifier,_that.nickname,_that.aircraftTypeId,_that.aircraftType,_that.aircraftStatusCode,_that.latitude,_that.longitude,_that.heading,_that.altitude,_that.indicatedSpeed,_that.groundSpeed,_that.fuelTotalGallons,_that.airframeCondition,_that.mustDoMaintenance,_that.mustDoMaintenanceSoon,_that.currentAirportId,_that.currentAirport);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Aircraft extends Aircraft {
  const _Aircraft({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Identifier') this.identifier = '', @JsonKey(name: 'Nickname') this.nickname, @JsonKey(name: 'AircraftTypeId') this.aircraftTypeId, @JsonKey(name: 'AircraftType') this.aircraftType, @JsonKey(name: 'AircraftStatus') this.aircraftStatusCode = 0, @JsonKey(name: 'Latitude') this.latitude = 0, @JsonKey(name: 'Longitude') this.longitude = 0, @JsonKey(name: 'Heading') this.heading = 0, @JsonKey(name: 'Altitude') this.altitude = 0, @JsonKey(name: 'IndicatedSpeed') this.indicatedSpeed = 0, @JsonKey(name: 'GroundSpeed') this.groundSpeed = 0, @JsonKey(name: 'fuelTotalGallons') this.fuelTotalGallons = 0, @JsonKey(name: 'airframeCondition') this.airframeCondition = 0, @JsonKey(name: 'MustDoMaintenance') this.mustDoMaintenance = false, @JsonKey(name: 'MustDoMaintenanceSoon') this.mustDoMaintenanceSoon = false, @JsonKey(name: 'CurrentAirportId') this.currentAirportId, @JsonKey(name: 'CurrentAirport') this.currentAirport}): super._();
  factory _Aircraft.fromJson(Map<String, dynamic> json) => _$AircraftFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'Identifier') final  String identifier;
@override@JsonKey(name: 'Nickname') final  String? nickname;
@override@JsonKey(name: 'AircraftTypeId') final  String? aircraftTypeId;
@override@JsonKey(name: 'AircraftType') final  AircraftType? aircraftType;
@override@JsonKey(name: 'AircraftStatus') final  int aircraftStatusCode;
@override@JsonKey(name: 'Latitude') final  double latitude;
@override@JsonKey(name: 'Longitude') final  double longitude;
@override@JsonKey(name: 'Heading') final  double heading;
@override@JsonKey(name: 'Altitude') final  double altitude;
@override@JsonKey(name: 'IndicatedSpeed') final  double indicatedSpeed;
@override@JsonKey(name: 'GroundSpeed') final  double groundSpeed;
@override@JsonKey(name: 'fuelTotalGallons') final  double fuelTotalGallons;
@override@JsonKey(name: 'airframeCondition') final  double airframeCondition;
@override@JsonKey(name: 'MustDoMaintenance') final  bool mustDoMaintenance;
@override@JsonKey(name: 'MustDoMaintenanceSoon') final  bool mustDoMaintenanceSoon;
@override@JsonKey(name: 'CurrentAirportId') final  String? currentAirportId;
@override@JsonKey(name: 'CurrentAirport') final  Airport? currentAirport;

/// Create a copy of Aircraft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AircraftCopyWith<_Aircraft> get copyWith => __$AircraftCopyWithImpl<_Aircraft>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AircraftToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Aircraft&&(identical(other.id, id) || other.id == id)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.aircraftTypeId, aircraftTypeId) || other.aircraftTypeId == aircraftTypeId)&&(identical(other.aircraftType, aircraftType) || other.aircraftType == aircraftType)&&(identical(other.aircraftStatusCode, aircraftStatusCode) || other.aircraftStatusCode == aircraftStatusCode)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.altitude, altitude) || other.altitude == altitude)&&(identical(other.indicatedSpeed, indicatedSpeed) || other.indicatedSpeed == indicatedSpeed)&&(identical(other.groundSpeed, groundSpeed) || other.groundSpeed == groundSpeed)&&(identical(other.fuelTotalGallons, fuelTotalGallons) || other.fuelTotalGallons == fuelTotalGallons)&&(identical(other.airframeCondition, airframeCondition) || other.airframeCondition == airframeCondition)&&(identical(other.mustDoMaintenance, mustDoMaintenance) || other.mustDoMaintenance == mustDoMaintenance)&&(identical(other.mustDoMaintenanceSoon, mustDoMaintenanceSoon) || other.mustDoMaintenanceSoon == mustDoMaintenanceSoon)&&(identical(other.currentAirportId, currentAirportId) || other.currentAirportId == currentAirportId)&&(identical(other.currentAirport, currentAirport) || other.currentAirport == currentAirport));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,identifier,nickname,aircraftTypeId,aircraftType,aircraftStatusCode,latitude,longitude,heading,altitude,indicatedSpeed,groundSpeed,fuelTotalGallons,airframeCondition,mustDoMaintenance,mustDoMaintenanceSoon,currentAirportId,currentAirport);

@override
String toString() {
  return 'Aircraft(id: $id, identifier: $identifier, nickname: $nickname, aircraftTypeId: $aircraftTypeId, aircraftType: $aircraftType, aircraftStatusCode: $aircraftStatusCode, latitude: $latitude, longitude: $longitude, heading: $heading, altitude: $altitude, indicatedSpeed: $indicatedSpeed, groundSpeed: $groundSpeed, fuelTotalGallons: $fuelTotalGallons, airframeCondition: $airframeCondition, mustDoMaintenance: $mustDoMaintenance, mustDoMaintenanceSoon: $mustDoMaintenanceSoon, currentAirportId: $currentAirportId, currentAirport: $currentAirport)';
}


}

/// @nodoc
abstract mixin class _$AircraftCopyWith<$Res> implements $AircraftCopyWith<$Res> {
  factory _$AircraftCopyWith(_Aircraft value, $Res Function(_Aircraft) _then) = __$AircraftCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Identifier') String identifier,@JsonKey(name: 'Nickname') String? nickname,@JsonKey(name: 'AircraftTypeId') String? aircraftTypeId,@JsonKey(name: 'AircraftType') AircraftType? aircraftType,@JsonKey(name: 'AircraftStatus') int aircraftStatusCode,@JsonKey(name: 'Latitude') double latitude,@JsonKey(name: 'Longitude') double longitude,@JsonKey(name: 'Heading') double heading,@JsonKey(name: 'Altitude') double altitude,@JsonKey(name: 'IndicatedSpeed') double indicatedSpeed,@JsonKey(name: 'GroundSpeed') double groundSpeed,@JsonKey(name: 'fuelTotalGallons') double fuelTotalGallons,@JsonKey(name: 'airframeCondition') double airframeCondition,@JsonKey(name: 'MustDoMaintenance') bool mustDoMaintenance,@JsonKey(name: 'MustDoMaintenanceSoon') bool mustDoMaintenanceSoon,@JsonKey(name: 'CurrentAirportId') String? currentAirportId,@JsonKey(name: 'CurrentAirport') Airport? currentAirport
});


@override $AircraftTypeCopyWith<$Res>? get aircraftType;@override $AirportCopyWith<$Res>? get currentAirport;

}
/// @nodoc
class __$AircraftCopyWithImpl<$Res>
    implements _$AircraftCopyWith<$Res> {
  __$AircraftCopyWithImpl(this._self, this._then);

  final _Aircraft _self;
  final $Res Function(_Aircraft) _then;

/// Create a copy of Aircraft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? identifier = null,Object? nickname = freezed,Object? aircraftTypeId = freezed,Object? aircraftType = freezed,Object? aircraftStatusCode = null,Object? latitude = null,Object? longitude = null,Object? heading = null,Object? altitude = null,Object? indicatedSpeed = null,Object? groundSpeed = null,Object? fuelTotalGallons = null,Object? airframeCondition = null,Object? mustDoMaintenance = null,Object? mustDoMaintenanceSoon = null,Object? currentAirportId = freezed,Object? currentAirport = freezed,}) {
  return _then(_Aircraft(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,aircraftTypeId: freezed == aircraftTypeId ? _self.aircraftTypeId : aircraftTypeId // ignore: cast_nullable_to_non_nullable
as String?,aircraftType: freezed == aircraftType ? _self.aircraftType : aircraftType // ignore: cast_nullable_to_non_nullable
as AircraftType?,aircraftStatusCode: null == aircraftStatusCode ? _self.aircraftStatusCode : aircraftStatusCode // ignore: cast_nullable_to_non_nullable
as int,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,heading: null == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as double,altitude: null == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as double,indicatedSpeed: null == indicatedSpeed ? _self.indicatedSpeed : indicatedSpeed // ignore: cast_nullable_to_non_nullable
as double,groundSpeed: null == groundSpeed ? _self.groundSpeed : groundSpeed // ignore: cast_nullable_to_non_nullable
as double,fuelTotalGallons: null == fuelTotalGallons ? _self.fuelTotalGallons : fuelTotalGallons // ignore: cast_nullable_to_non_nullable
as double,airframeCondition: null == airframeCondition ? _self.airframeCondition : airframeCondition // ignore: cast_nullable_to_non_nullable
as double,mustDoMaintenance: null == mustDoMaintenance ? _self.mustDoMaintenance : mustDoMaintenance // ignore: cast_nullable_to_non_nullable
as bool,mustDoMaintenanceSoon: null == mustDoMaintenanceSoon ? _self.mustDoMaintenanceSoon : mustDoMaintenanceSoon // ignore: cast_nullable_to_non_nullable
as bool,currentAirportId: freezed == currentAirportId ? _self.currentAirportId : currentAirportId // ignore: cast_nullable_to_non_nullable
as String?,currentAirport: freezed == currentAirport ? _self.currentAirport : currentAirport // ignore: cast_nullable_to_non_nullable
as Airport?,
  ));
}

/// Create a copy of Aircraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AircraftTypeCopyWith<$Res>? get aircraftType {
    if (_self.aircraftType == null) {
    return null;
  }

  return $AircraftTypeCopyWith<$Res>(_self.aircraftType!, (value) {
    return _then(_self.copyWith(aircraftType: value));
  });
}/// Create a copy of Aircraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get currentAirport {
    if (_self.currentAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.currentAirport!, (value) {
    return _then(_self.copyWith(currentAirport: value));
  });
}
}

// dart format on
