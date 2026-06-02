// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Flight {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'DepartureAirport') Airport? get departureAirport;@JsonKey(name: 'ArrivalIntendedAirport') Airport? get arrivalIntendedAirport;@JsonKey(name: 'PAXCount') int? get paxCount;@JsonKey(name: 'CargosTotalWeight') double? get cargosTotalWeight;@JsonKey(name: 'IsAI') bool get isAI;
/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlightCopyWith<Flight> get copyWith => _$FlightCopyWithImpl<Flight>(this as Flight, _$identity);

  /// Serializes this Flight to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Flight&&(identical(other.id, id) || other.id == id)&&(identical(other.departureAirport, departureAirport) || other.departureAirport == departureAirport)&&(identical(other.arrivalIntendedAirport, arrivalIntendedAirport) || other.arrivalIntendedAirport == arrivalIntendedAirport)&&(identical(other.paxCount, paxCount) || other.paxCount == paxCount)&&(identical(other.cargosTotalWeight, cargosTotalWeight) || other.cargosTotalWeight == cargosTotalWeight)&&(identical(other.isAI, isAI) || other.isAI == isAI));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,departureAirport,arrivalIntendedAirport,paxCount,cargosTotalWeight,isAI);

@override
String toString() {
  return 'Flight(id: $id, departureAirport: $departureAirport, arrivalIntendedAirport: $arrivalIntendedAirport, paxCount: $paxCount, cargosTotalWeight: $cargosTotalWeight, isAI: $isAI)';
}


}

/// @nodoc
abstract mixin class $FlightCopyWith<$Res>  {
  factory $FlightCopyWith(Flight value, $Res Function(Flight) _then) = _$FlightCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'DepartureAirport') Airport? departureAirport,@JsonKey(name: 'ArrivalIntendedAirport') Airport? arrivalIntendedAirport,@JsonKey(name: 'PAXCount') int? paxCount,@JsonKey(name: 'CargosTotalWeight') double? cargosTotalWeight,@JsonKey(name: 'IsAI') bool isAI
});


$AirportCopyWith<$Res>? get departureAirport;$AirportCopyWith<$Res>? get arrivalIntendedAirport;

}
/// @nodoc
class _$FlightCopyWithImpl<$Res>
    implements $FlightCopyWith<$Res> {
  _$FlightCopyWithImpl(this._self, this._then);

  final Flight _self;
  final $Res Function(Flight) _then;

/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? departureAirport = freezed,Object? arrivalIntendedAirport = freezed,Object? paxCount = freezed,Object? cargosTotalWeight = freezed,Object? isAI = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,departureAirport: freezed == departureAirport ? _self.departureAirport : departureAirport // ignore: cast_nullable_to_non_nullable
as Airport?,arrivalIntendedAirport: freezed == arrivalIntendedAirport ? _self.arrivalIntendedAirport : arrivalIntendedAirport // ignore: cast_nullable_to_non_nullable
as Airport?,paxCount: freezed == paxCount ? _self.paxCount : paxCount // ignore: cast_nullable_to_non_nullable
as int?,cargosTotalWeight: freezed == cargosTotalWeight ? _self.cargosTotalWeight : cargosTotalWeight // ignore: cast_nullable_to_non_nullable
as double?,isAI: null == isAI ? _self.isAI : isAI // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Flight
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
}/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get arrivalIntendedAirport {
    if (_self.arrivalIntendedAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.arrivalIntendedAirport!, (value) {
    return _then(_self.copyWith(arrivalIntendedAirport: value));
  });
}
}


/// Adds pattern-matching-related methods to [Flight].
extension FlightPatterns on Flight {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Flight value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Flight() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Flight value)  $default,){
final _that = this;
switch (_that) {
case _Flight():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Flight value)?  $default,){
final _that = this;
switch (_that) {
case _Flight() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'DepartureAirport')  Airport? departureAirport, @JsonKey(name: 'ArrivalIntendedAirport')  Airport? arrivalIntendedAirport, @JsonKey(name: 'PAXCount')  int? paxCount, @JsonKey(name: 'CargosTotalWeight')  double? cargosTotalWeight, @JsonKey(name: 'IsAI')  bool isAI)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Flight() when $default != null:
return $default(_that.id,_that.departureAirport,_that.arrivalIntendedAirport,_that.paxCount,_that.cargosTotalWeight,_that.isAI);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'DepartureAirport')  Airport? departureAirport, @JsonKey(name: 'ArrivalIntendedAirport')  Airport? arrivalIntendedAirport, @JsonKey(name: 'PAXCount')  int? paxCount, @JsonKey(name: 'CargosTotalWeight')  double? cargosTotalWeight, @JsonKey(name: 'IsAI')  bool isAI)  $default,) {final _that = this;
switch (_that) {
case _Flight():
return $default(_that.id,_that.departureAirport,_that.arrivalIntendedAirport,_that.paxCount,_that.cargosTotalWeight,_that.isAI);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'DepartureAirport')  Airport? departureAirport, @JsonKey(name: 'ArrivalIntendedAirport')  Airport? arrivalIntendedAirport, @JsonKey(name: 'PAXCount')  int? paxCount, @JsonKey(name: 'CargosTotalWeight')  double? cargosTotalWeight, @JsonKey(name: 'IsAI')  bool isAI)?  $default,) {final _that = this;
switch (_that) {
case _Flight() when $default != null:
return $default(_that.id,_that.departureAirport,_that.arrivalIntendedAirport,_that.paxCount,_that.cargosTotalWeight,_that.isAI);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Flight implements Flight {
  const _Flight({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'DepartureAirport') this.departureAirport, @JsonKey(name: 'ArrivalIntendedAirport') this.arrivalIntendedAirport, @JsonKey(name: 'PAXCount') this.paxCount, @JsonKey(name: 'CargosTotalWeight') this.cargosTotalWeight, @JsonKey(name: 'IsAI') this.isAI = false});
  factory _Flight.fromJson(Map<String, dynamic> json) => _$FlightFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'DepartureAirport') final  Airport? departureAirport;
@override@JsonKey(name: 'ArrivalIntendedAirport') final  Airport? arrivalIntendedAirport;
@override@JsonKey(name: 'PAXCount') final  int? paxCount;
@override@JsonKey(name: 'CargosTotalWeight') final  double? cargosTotalWeight;
@override@JsonKey(name: 'IsAI') final  bool isAI;

/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlightCopyWith<_Flight> get copyWith => __$FlightCopyWithImpl<_Flight>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlightToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Flight&&(identical(other.id, id) || other.id == id)&&(identical(other.departureAirport, departureAirport) || other.departureAirport == departureAirport)&&(identical(other.arrivalIntendedAirport, arrivalIntendedAirport) || other.arrivalIntendedAirport == arrivalIntendedAirport)&&(identical(other.paxCount, paxCount) || other.paxCount == paxCount)&&(identical(other.cargosTotalWeight, cargosTotalWeight) || other.cargosTotalWeight == cargosTotalWeight)&&(identical(other.isAI, isAI) || other.isAI == isAI));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,departureAirport,arrivalIntendedAirport,paxCount,cargosTotalWeight,isAI);

@override
String toString() {
  return 'Flight(id: $id, departureAirport: $departureAirport, arrivalIntendedAirport: $arrivalIntendedAirport, paxCount: $paxCount, cargosTotalWeight: $cargosTotalWeight, isAI: $isAI)';
}


}

/// @nodoc
abstract mixin class _$FlightCopyWith<$Res> implements $FlightCopyWith<$Res> {
  factory _$FlightCopyWith(_Flight value, $Res Function(_Flight) _then) = __$FlightCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'DepartureAirport') Airport? departureAirport,@JsonKey(name: 'ArrivalIntendedAirport') Airport? arrivalIntendedAirport,@JsonKey(name: 'PAXCount') int? paxCount,@JsonKey(name: 'CargosTotalWeight') double? cargosTotalWeight,@JsonKey(name: 'IsAI') bool isAI
});


@override $AirportCopyWith<$Res>? get departureAirport;@override $AirportCopyWith<$Res>? get arrivalIntendedAirport;

}
/// @nodoc
class __$FlightCopyWithImpl<$Res>
    implements _$FlightCopyWith<$Res> {
  __$FlightCopyWithImpl(this._self, this._then);

  final _Flight _self;
  final $Res Function(_Flight) _then;

/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? departureAirport = freezed,Object? arrivalIntendedAirport = freezed,Object? paxCount = freezed,Object? cargosTotalWeight = freezed,Object? isAI = null,}) {
  return _then(_Flight(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,departureAirport: freezed == departureAirport ? _self.departureAirport : departureAirport // ignore: cast_nullable_to_non_nullable
as Airport?,arrivalIntendedAirport: freezed == arrivalIntendedAirport ? _self.arrivalIntendedAirport : arrivalIntendedAirport // ignore: cast_nullable_to_non_nullable
as Airport?,paxCount: freezed == paxCount ? _self.paxCount : paxCount // ignore: cast_nullable_to_non_nullable
as int?,cargosTotalWeight: freezed == cargosTotalWeight ? _self.cargosTotalWeight : cargosTotalWeight // ignore: cast_nullable_to_non_nullable
as double?,isAI: null == isAI ? _self.isAI : isAI // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Flight
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
}/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get arrivalIntendedAirport {
    if (_self.arrivalIntendedAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.arrivalIntendedAirport!, (value) {
    return _then(_self.copyWith(arrivalIntendedAirport: value));
  });
}
}

// dart format on
