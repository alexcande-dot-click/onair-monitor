// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fbo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Fbo {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'Name') String get name;@JsonKey(name: 'AirportId') String? get airportId;@JsonKey(name: 'Airport') Airport? get airport;@JsonKey(name: 'CargoWeightCapacity') double get cargoWeightCapacity;@JsonKey(name: 'SleepingCapacity') double get sleepingCapacity;@JsonKey(name: 'AircraftHangarCapacity') int get aircraftHangarCapacity;@JsonKey(name: 'AircraftTieDownCapacity') int get aircraftTieDownCapacity;@JsonKey(name: 'Fuel100LLCapacity') double get fuel100LLCapacity;@JsonKey(name: 'Fuel100LLQuantity') double get fuel100LLQuantity;@JsonKey(name: 'Fuel100LLSellPrice') double get fuel100LLSellPrice;@JsonKey(name: 'AllowFuel100LLSelling') bool get allowFuel100LLSelling;@JsonKey(name: 'FuelJetCapacity') double get fuelJetCapacity;@JsonKey(name: 'FuelJetQuantity') double get fuelJetQuantity;@JsonKey(name: 'FuelJetSellPrice') double get fuelJetSellPrice;@JsonKey(name: 'AllowFuelJetSelling') bool get allowFuelJetSelling;@JsonKey(name: 'WorkshopSEP') bool get workshopSEP;@JsonKey(name: 'WorkshopMEP') bool get workshopMEP;@JsonKey(name: 'WorkshopTurboProp') bool get workshopTurboProp;@JsonKey(name: 'WorkshopJet') bool get workshopJet;@JsonKey(name: 'WorkshopHeavyJet') bool get workshopHeavyJet;@JsonKey(name: 'WorkshopHelicopter') bool get workshopHelicopter;@JsonKey(name: 'WorkshopUnderConstruction') bool get workshopUnderConstruction;
/// Create a copy of Fbo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FboCopyWith<Fbo> get copyWith => _$FboCopyWithImpl<Fbo>(this as Fbo, _$identity);

  /// Serializes this Fbo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Fbo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.airportId, airportId) || other.airportId == airportId)&&(identical(other.airport, airport) || other.airport == airport)&&(identical(other.cargoWeightCapacity, cargoWeightCapacity) || other.cargoWeightCapacity == cargoWeightCapacity)&&(identical(other.sleepingCapacity, sleepingCapacity) || other.sleepingCapacity == sleepingCapacity)&&(identical(other.aircraftHangarCapacity, aircraftHangarCapacity) || other.aircraftHangarCapacity == aircraftHangarCapacity)&&(identical(other.aircraftTieDownCapacity, aircraftTieDownCapacity) || other.aircraftTieDownCapacity == aircraftTieDownCapacity)&&(identical(other.fuel100LLCapacity, fuel100LLCapacity) || other.fuel100LLCapacity == fuel100LLCapacity)&&(identical(other.fuel100LLQuantity, fuel100LLQuantity) || other.fuel100LLQuantity == fuel100LLQuantity)&&(identical(other.fuel100LLSellPrice, fuel100LLSellPrice) || other.fuel100LLSellPrice == fuel100LLSellPrice)&&(identical(other.allowFuel100LLSelling, allowFuel100LLSelling) || other.allowFuel100LLSelling == allowFuel100LLSelling)&&(identical(other.fuelJetCapacity, fuelJetCapacity) || other.fuelJetCapacity == fuelJetCapacity)&&(identical(other.fuelJetQuantity, fuelJetQuantity) || other.fuelJetQuantity == fuelJetQuantity)&&(identical(other.fuelJetSellPrice, fuelJetSellPrice) || other.fuelJetSellPrice == fuelJetSellPrice)&&(identical(other.allowFuelJetSelling, allowFuelJetSelling) || other.allowFuelJetSelling == allowFuelJetSelling)&&(identical(other.workshopSEP, workshopSEP) || other.workshopSEP == workshopSEP)&&(identical(other.workshopMEP, workshopMEP) || other.workshopMEP == workshopMEP)&&(identical(other.workshopTurboProp, workshopTurboProp) || other.workshopTurboProp == workshopTurboProp)&&(identical(other.workshopJet, workshopJet) || other.workshopJet == workshopJet)&&(identical(other.workshopHeavyJet, workshopHeavyJet) || other.workshopHeavyJet == workshopHeavyJet)&&(identical(other.workshopHelicopter, workshopHelicopter) || other.workshopHelicopter == workshopHelicopter)&&(identical(other.workshopUnderConstruction, workshopUnderConstruction) || other.workshopUnderConstruction == workshopUnderConstruction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,airportId,airport,cargoWeightCapacity,sleepingCapacity,aircraftHangarCapacity,aircraftTieDownCapacity,fuel100LLCapacity,fuel100LLQuantity,fuel100LLSellPrice,allowFuel100LLSelling,fuelJetCapacity,fuelJetQuantity,fuelJetSellPrice,allowFuelJetSelling,workshopSEP,workshopMEP,workshopTurboProp,workshopJet,workshopHeavyJet,workshopHelicopter,workshopUnderConstruction]);

@override
String toString() {
  return 'Fbo(id: $id, name: $name, airportId: $airportId, airport: $airport, cargoWeightCapacity: $cargoWeightCapacity, sleepingCapacity: $sleepingCapacity, aircraftHangarCapacity: $aircraftHangarCapacity, aircraftTieDownCapacity: $aircraftTieDownCapacity, fuel100LLCapacity: $fuel100LLCapacity, fuel100LLQuantity: $fuel100LLQuantity, fuel100LLSellPrice: $fuel100LLSellPrice, allowFuel100LLSelling: $allowFuel100LLSelling, fuelJetCapacity: $fuelJetCapacity, fuelJetQuantity: $fuelJetQuantity, fuelJetSellPrice: $fuelJetSellPrice, allowFuelJetSelling: $allowFuelJetSelling, workshopSEP: $workshopSEP, workshopMEP: $workshopMEP, workshopTurboProp: $workshopTurboProp, workshopJet: $workshopJet, workshopHeavyJet: $workshopHeavyJet, workshopHelicopter: $workshopHelicopter, workshopUnderConstruction: $workshopUnderConstruction)';
}


}

/// @nodoc
abstract mixin class $FboCopyWith<$Res>  {
  factory $FboCopyWith(Fbo value, $Res Function(Fbo) _then) = _$FboCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Name') String name,@JsonKey(name: 'AirportId') String? airportId,@JsonKey(name: 'Airport') Airport? airport,@JsonKey(name: 'CargoWeightCapacity') double cargoWeightCapacity,@JsonKey(name: 'SleepingCapacity') double sleepingCapacity,@JsonKey(name: 'AircraftHangarCapacity') int aircraftHangarCapacity,@JsonKey(name: 'AircraftTieDownCapacity') int aircraftTieDownCapacity,@JsonKey(name: 'Fuel100LLCapacity') double fuel100LLCapacity,@JsonKey(name: 'Fuel100LLQuantity') double fuel100LLQuantity,@JsonKey(name: 'Fuel100LLSellPrice') double fuel100LLSellPrice,@JsonKey(name: 'AllowFuel100LLSelling') bool allowFuel100LLSelling,@JsonKey(name: 'FuelJetCapacity') double fuelJetCapacity,@JsonKey(name: 'FuelJetQuantity') double fuelJetQuantity,@JsonKey(name: 'FuelJetSellPrice') double fuelJetSellPrice,@JsonKey(name: 'AllowFuelJetSelling') bool allowFuelJetSelling,@JsonKey(name: 'WorkshopSEP') bool workshopSEP,@JsonKey(name: 'WorkshopMEP') bool workshopMEP,@JsonKey(name: 'WorkshopTurboProp') bool workshopTurboProp,@JsonKey(name: 'WorkshopJet') bool workshopJet,@JsonKey(name: 'WorkshopHeavyJet') bool workshopHeavyJet,@JsonKey(name: 'WorkshopHelicopter') bool workshopHelicopter,@JsonKey(name: 'WorkshopUnderConstruction') bool workshopUnderConstruction
});


$AirportCopyWith<$Res>? get airport;

}
/// @nodoc
class _$FboCopyWithImpl<$Res>
    implements $FboCopyWith<$Res> {
  _$FboCopyWithImpl(this._self, this._then);

  final Fbo _self;
  final $Res Function(Fbo) _then;

/// Create a copy of Fbo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? airportId = freezed,Object? airport = freezed,Object? cargoWeightCapacity = null,Object? sleepingCapacity = null,Object? aircraftHangarCapacity = null,Object? aircraftTieDownCapacity = null,Object? fuel100LLCapacity = null,Object? fuel100LLQuantity = null,Object? fuel100LLSellPrice = null,Object? allowFuel100LLSelling = null,Object? fuelJetCapacity = null,Object? fuelJetQuantity = null,Object? fuelJetSellPrice = null,Object? allowFuelJetSelling = null,Object? workshopSEP = null,Object? workshopMEP = null,Object? workshopTurboProp = null,Object? workshopJet = null,Object? workshopHeavyJet = null,Object? workshopHelicopter = null,Object? workshopUnderConstruction = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,airportId: freezed == airportId ? _self.airportId : airportId // ignore: cast_nullable_to_non_nullable
as String?,airport: freezed == airport ? _self.airport : airport // ignore: cast_nullable_to_non_nullable
as Airport?,cargoWeightCapacity: null == cargoWeightCapacity ? _self.cargoWeightCapacity : cargoWeightCapacity // ignore: cast_nullable_to_non_nullable
as double,sleepingCapacity: null == sleepingCapacity ? _self.sleepingCapacity : sleepingCapacity // ignore: cast_nullable_to_non_nullable
as double,aircraftHangarCapacity: null == aircraftHangarCapacity ? _self.aircraftHangarCapacity : aircraftHangarCapacity // ignore: cast_nullable_to_non_nullable
as int,aircraftTieDownCapacity: null == aircraftTieDownCapacity ? _self.aircraftTieDownCapacity : aircraftTieDownCapacity // ignore: cast_nullable_to_non_nullable
as int,fuel100LLCapacity: null == fuel100LLCapacity ? _self.fuel100LLCapacity : fuel100LLCapacity // ignore: cast_nullable_to_non_nullable
as double,fuel100LLQuantity: null == fuel100LLQuantity ? _self.fuel100LLQuantity : fuel100LLQuantity // ignore: cast_nullable_to_non_nullable
as double,fuel100LLSellPrice: null == fuel100LLSellPrice ? _self.fuel100LLSellPrice : fuel100LLSellPrice // ignore: cast_nullable_to_non_nullable
as double,allowFuel100LLSelling: null == allowFuel100LLSelling ? _self.allowFuel100LLSelling : allowFuel100LLSelling // ignore: cast_nullable_to_non_nullable
as bool,fuelJetCapacity: null == fuelJetCapacity ? _self.fuelJetCapacity : fuelJetCapacity // ignore: cast_nullable_to_non_nullable
as double,fuelJetQuantity: null == fuelJetQuantity ? _self.fuelJetQuantity : fuelJetQuantity // ignore: cast_nullable_to_non_nullable
as double,fuelJetSellPrice: null == fuelJetSellPrice ? _self.fuelJetSellPrice : fuelJetSellPrice // ignore: cast_nullable_to_non_nullable
as double,allowFuelJetSelling: null == allowFuelJetSelling ? _self.allowFuelJetSelling : allowFuelJetSelling // ignore: cast_nullable_to_non_nullable
as bool,workshopSEP: null == workshopSEP ? _self.workshopSEP : workshopSEP // ignore: cast_nullable_to_non_nullable
as bool,workshopMEP: null == workshopMEP ? _self.workshopMEP : workshopMEP // ignore: cast_nullable_to_non_nullable
as bool,workshopTurboProp: null == workshopTurboProp ? _self.workshopTurboProp : workshopTurboProp // ignore: cast_nullable_to_non_nullable
as bool,workshopJet: null == workshopJet ? _self.workshopJet : workshopJet // ignore: cast_nullable_to_non_nullable
as bool,workshopHeavyJet: null == workshopHeavyJet ? _self.workshopHeavyJet : workshopHeavyJet // ignore: cast_nullable_to_non_nullable
as bool,workshopHelicopter: null == workshopHelicopter ? _self.workshopHelicopter : workshopHelicopter // ignore: cast_nullable_to_non_nullable
as bool,workshopUnderConstruction: null == workshopUnderConstruction ? _self.workshopUnderConstruction : workshopUnderConstruction // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Fbo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get airport {
    if (_self.airport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.airport!, (value) {
    return _then(_self.copyWith(airport: value));
  });
}
}


/// Adds pattern-matching-related methods to [Fbo].
extension FboPatterns on Fbo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Fbo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fbo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Fbo value)  $default,){
final _that = this;
switch (_that) {
case _Fbo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Fbo value)?  $default,){
final _that = this;
switch (_that) {
case _Fbo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'AirportId')  String? airportId, @JsonKey(name: 'Airport')  Airport? airport, @JsonKey(name: 'CargoWeightCapacity')  double cargoWeightCapacity, @JsonKey(name: 'SleepingCapacity')  double sleepingCapacity, @JsonKey(name: 'AircraftHangarCapacity')  int aircraftHangarCapacity, @JsonKey(name: 'AircraftTieDownCapacity')  int aircraftTieDownCapacity, @JsonKey(name: 'Fuel100LLCapacity')  double fuel100LLCapacity, @JsonKey(name: 'Fuel100LLQuantity')  double fuel100LLQuantity, @JsonKey(name: 'Fuel100LLSellPrice')  double fuel100LLSellPrice, @JsonKey(name: 'AllowFuel100LLSelling')  bool allowFuel100LLSelling, @JsonKey(name: 'FuelJetCapacity')  double fuelJetCapacity, @JsonKey(name: 'FuelJetQuantity')  double fuelJetQuantity, @JsonKey(name: 'FuelJetSellPrice')  double fuelJetSellPrice, @JsonKey(name: 'AllowFuelJetSelling')  bool allowFuelJetSelling, @JsonKey(name: 'WorkshopSEP')  bool workshopSEP, @JsonKey(name: 'WorkshopMEP')  bool workshopMEP, @JsonKey(name: 'WorkshopTurboProp')  bool workshopTurboProp, @JsonKey(name: 'WorkshopJet')  bool workshopJet, @JsonKey(name: 'WorkshopHeavyJet')  bool workshopHeavyJet, @JsonKey(name: 'WorkshopHelicopter')  bool workshopHelicopter, @JsonKey(name: 'WorkshopUnderConstruction')  bool workshopUnderConstruction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fbo() when $default != null:
return $default(_that.id,_that.name,_that.airportId,_that.airport,_that.cargoWeightCapacity,_that.sleepingCapacity,_that.aircraftHangarCapacity,_that.aircraftTieDownCapacity,_that.fuel100LLCapacity,_that.fuel100LLQuantity,_that.fuel100LLSellPrice,_that.allowFuel100LLSelling,_that.fuelJetCapacity,_that.fuelJetQuantity,_that.fuelJetSellPrice,_that.allowFuelJetSelling,_that.workshopSEP,_that.workshopMEP,_that.workshopTurboProp,_that.workshopJet,_that.workshopHeavyJet,_that.workshopHelicopter,_that.workshopUnderConstruction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'AirportId')  String? airportId, @JsonKey(name: 'Airport')  Airport? airport, @JsonKey(name: 'CargoWeightCapacity')  double cargoWeightCapacity, @JsonKey(name: 'SleepingCapacity')  double sleepingCapacity, @JsonKey(name: 'AircraftHangarCapacity')  int aircraftHangarCapacity, @JsonKey(name: 'AircraftTieDownCapacity')  int aircraftTieDownCapacity, @JsonKey(name: 'Fuel100LLCapacity')  double fuel100LLCapacity, @JsonKey(name: 'Fuel100LLQuantity')  double fuel100LLQuantity, @JsonKey(name: 'Fuel100LLSellPrice')  double fuel100LLSellPrice, @JsonKey(name: 'AllowFuel100LLSelling')  bool allowFuel100LLSelling, @JsonKey(name: 'FuelJetCapacity')  double fuelJetCapacity, @JsonKey(name: 'FuelJetQuantity')  double fuelJetQuantity, @JsonKey(name: 'FuelJetSellPrice')  double fuelJetSellPrice, @JsonKey(name: 'AllowFuelJetSelling')  bool allowFuelJetSelling, @JsonKey(name: 'WorkshopSEP')  bool workshopSEP, @JsonKey(name: 'WorkshopMEP')  bool workshopMEP, @JsonKey(name: 'WorkshopTurboProp')  bool workshopTurboProp, @JsonKey(name: 'WorkshopJet')  bool workshopJet, @JsonKey(name: 'WorkshopHeavyJet')  bool workshopHeavyJet, @JsonKey(name: 'WorkshopHelicopter')  bool workshopHelicopter, @JsonKey(name: 'WorkshopUnderConstruction')  bool workshopUnderConstruction)  $default,) {final _that = this;
switch (_that) {
case _Fbo():
return $default(_that.id,_that.name,_that.airportId,_that.airport,_that.cargoWeightCapacity,_that.sleepingCapacity,_that.aircraftHangarCapacity,_that.aircraftTieDownCapacity,_that.fuel100LLCapacity,_that.fuel100LLQuantity,_that.fuel100LLSellPrice,_that.allowFuel100LLSelling,_that.fuelJetCapacity,_that.fuelJetQuantity,_that.fuelJetSellPrice,_that.allowFuelJetSelling,_that.workshopSEP,_that.workshopMEP,_that.workshopTurboProp,_that.workshopJet,_that.workshopHeavyJet,_that.workshopHelicopter,_that.workshopUnderConstruction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'AirportId')  String? airportId, @JsonKey(name: 'Airport')  Airport? airport, @JsonKey(name: 'CargoWeightCapacity')  double cargoWeightCapacity, @JsonKey(name: 'SleepingCapacity')  double sleepingCapacity, @JsonKey(name: 'AircraftHangarCapacity')  int aircraftHangarCapacity, @JsonKey(name: 'AircraftTieDownCapacity')  int aircraftTieDownCapacity, @JsonKey(name: 'Fuel100LLCapacity')  double fuel100LLCapacity, @JsonKey(name: 'Fuel100LLQuantity')  double fuel100LLQuantity, @JsonKey(name: 'Fuel100LLSellPrice')  double fuel100LLSellPrice, @JsonKey(name: 'AllowFuel100LLSelling')  bool allowFuel100LLSelling, @JsonKey(name: 'FuelJetCapacity')  double fuelJetCapacity, @JsonKey(name: 'FuelJetQuantity')  double fuelJetQuantity, @JsonKey(name: 'FuelJetSellPrice')  double fuelJetSellPrice, @JsonKey(name: 'AllowFuelJetSelling')  bool allowFuelJetSelling, @JsonKey(name: 'WorkshopSEP')  bool workshopSEP, @JsonKey(name: 'WorkshopMEP')  bool workshopMEP, @JsonKey(name: 'WorkshopTurboProp')  bool workshopTurboProp, @JsonKey(name: 'WorkshopJet')  bool workshopJet, @JsonKey(name: 'WorkshopHeavyJet')  bool workshopHeavyJet, @JsonKey(name: 'WorkshopHelicopter')  bool workshopHelicopter, @JsonKey(name: 'WorkshopUnderConstruction')  bool workshopUnderConstruction)?  $default,) {final _that = this;
switch (_that) {
case _Fbo() when $default != null:
return $default(_that.id,_that.name,_that.airportId,_that.airport,_that.cargoWeightCapacity,_that.sleepingCapacity,_that.aircraftHangarCapacity,_that.aircraftTieDownCapacity,_that.fuel100LLCapacity,_that.fuel100LLQuantity,_that.fuel100LLSellPrice,_that.allowFuel100LLSelling,_that.fuelJetCapacity,_that.fuelJetQuantity,_that.fuelJetSellPrice,_that.allowFuelJetSelling,_that.workshopSEP,_that.workshopMEP,_that.workshopTurboProp,_that.workshopJet,_that.workshopHeavyJet,_that.workshopHelicopter,_that.workshopUnderConstruction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Fbo extends Fbo {
  const _Fbo({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Name') this.name = '', @JsonKey(name: 'AirportId') this.airportId, @JsonKey(name: 'Airport') this.airport, @JsonKey(name: 'CargoWeightCapacity') this.cargoWeightCapacity = 0, @JsonKey(name: 'SleepingCapacity') this.sleepingCapacity = 0, @JsonKey(name: 'AircraftHangarCapacity') this.aircraftHangarCapacity = 0, @JsonKey(name: 'AircraftTieDownCapacity') this.aircraftTieDownCapacity = 0, @JsonKey(name: 'Fuel100LLCapacity') this.fuel100LLCapacity = 0, @JsonKey(name: 'Fuel100LLQuantity') this.fuel100LLQuantity = 0, @JsonKey(name: 'Fuel100LLSellPrice') this.fuel100LLSellPrice = 0, @JsonKey(name: 'AllowFuel100LLSelling') this.allowFuel100LLSelling = false, @JsonKey(name: 'FuelJetCapacity') this.fuelJetCapacity = 0, @JsonKey(name: 'FuelJetQuantity') this.fuelJetQuantity = 0, @JsonKey(name: 'FuelJetSellPrice') this.fuelJetSellPrice = 0, @JsonKey(name: 'AllowFuelJetSelling') this.allowFuelJetSelling = false, @JsonKey(name: 'WorkshopSEP') this.workshopSEP = false, @JsonKey(name: 'WorkshopMEP') this.workshopMEP = false, @JsonKey(name: 'WorkshopTurboProp') this.workshopTurboProp = false, @JsonKey(name: 'WorkshopJet') this.workshopJet = false, @JsonKey(name: 'WorkshopHeavyJet') this.workshopHeavyJet = false, @JsonKey(name: 'WorkshopHelicopter') this.workshopHelicopter = false, @JsonKey(name: 'WorkshopUnderConstruction') this.workshopUnderConstruction = false}): super._();
  factory _Fbo.fromJson(Map<String, dynamic> json) => _$FboFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'Name') final  String name;
@override@JsonKey(name: 'AirportId') final  String? airportId;
@override@JsonKey(name: 'Airport') final  Airport? airport;
@override@JsonKey(name: 'CargoWeightCapacity') final  double cargoWeightCapacity;
@override@JsonKey(name: 'SleepingCapacity') final  double sleepingCapacity;
@override@JsonKey(name: 'AircraftHangarCapacity') final  int aircraftHangarCapacity;
@override@JsonKey(name: 'AircraftTieDownCapacity') final  int aircraftTieDownCapacity;
@override@JsonKey(name: 'Fuel100LLCapacity') final  double fuel100LLCapacity;
@override@JsonKey(name: 'Fuel100LLQuantity') final  double fuel100LLQuantity;
@override@JsonKey(name: 'Fuel100LLSellPrice') final  double fuel100LLSellPrice;
@override@JsonKey(name: 'AllowFuel100LLSelling') final  bool allowFuel100LLSelling;
@override@JsonKey(name: 'FuelJetCapacity') final  double fuelJetCapacity;
@override@JsonKey(name: 'FuelJetQuantity') final  double fuelJetQuantity;
@override@JsonKey(name: 'FuelJetSellPrice') final  double fuelJetSellPrice;
@override@JsonKey(name: 'AllowFuelJetSelling') final  bool allowFuelJetSelling;
@override@JsonKey(name: 'WorkshopSEP') final  bool workshopSEP;
@override@JsonKey(name: 'WorkshopMEP') final  bool workshopMEP;
@override@JsonKey(name: 'WorkshopTurboProp') final  bool workshopTurboProp;
@override@JsonKey(name: 'WorkshopJet') final  bool workshopJet;
@override@JsonKey(name: 'WorkshopHeavyJet') final  bool workshopHeavyJet;
@override@JsonKey(name: 'WorkshopHelicopter') final  bool workshopHelicopter;
@override@JsonKey(name: 'WorkshopUnderConstruction') final  bool workshopUnderConstruction;

/// Create a copy of Fbo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FboCopyWith<_Fbo> get copyWith => __$FboCopyWithImpl<_Fbo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FboToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fbo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.airportId, airportId) || other.airportId == airportId)&&(identical(other.airport, airport) || other.airport == airport)&&(identical(other.cargoWeightCapacity, cargoWeightCapacity) || other.cargoWeightCapacity == cargoWeightCapacity)&&(identical(other.sleepingCapacity, sleepingCapacity) || other.sleepingCapacity == sleepingCapacity)&&(identical(other.aircraftHangarCapacity, aircraftHangarCapacity) || other.aircraftHangarCapacity == aircraftHangarCapacity)&&(identical(other.aircraftTieDownCapacity, aircraftTieDownCapacity) || other.aircraftTieDownCapacity == aircraftTieDownCapacity)&&(identical(other.fuel100LLCapacity, fuel100LLCapacity) || other.fuel100LLCapacity == fuel100LLCapacity)&&(identical(other.fuel100LLQuantity, fuel100LLQuantity) || other.fuel100LLQuantity == fuel100LLQuantity)&&(identical(other.fuel100LLSellPrice, fuel100LLSellPrice) || other.fuel100LLSellPrice == fuel100LLSellPrice)&&(identical(other.allowFuel100LLSelling, allowFuel100LLSelling) || other.allowFuel100LLSelling == allowFuel100LLSelling)&&(identical(other.fuelJetCapacity, fuelJetCapacity) || other.fuelJetCapacity == fuelJetCapacity)&&(identical(other.fuelJetQuantity, fuelJetQuantity) || other.fuelJetQuantity == fuelJetQuantity)&&(identical(other.fuelJetSellPrice, fuelJetSellPrice) || other.fuelJetSellPrice == fuelJetSellPrice)&&(identical(other.allowFuelJetSelling, allowFuelJetSelling) || other.allowFuelJetSelling == allowFuelJetSelling)&&(identical(other.workshopSEP, workshopSEP) || other.workshopSEP == workshopSEP)&&(identical(other.workshopMEP, workshopMEP) || other.workshopMEP == workshopMEP)&&(identical(other.workshopTurboProp, workshopTurboProp) || other.workshopTurboProp == workshopTurboProp)&&(identical(other.workshopJet, workshopJet) || other.workshopJet == workshopJet)&&(identical(other.workshopHeavyJet, workshopHeavyJet) || other.workshopHeavyJet == workshopHeavyJet)&&(identical(other.workshopHelicopter, workshopHelicopter) || other.workshopHelicopter == workshopHelicopter)&&(identical(other.workshopUnderConstruction, workshopUnderConstruction) || other.workshopUnderConstruction == workshopUnderConstruction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,airportId,airport,cargoWeightCapacity,sleepingCapacity,aircraftHangarCapacity,aircraftTieDownCapacity,fuel100LLCapacity,fuel100LLQuantity,fuel100LLSellPrice,allowFuel100LLSelling,fuelJetCapacity,fuelJetQuantity,fuelJetSellPrice,allowFuelJetSelling,workshopSEP,workshopMEP,workshopTurboProp,workshopJet,workshopHeavyJet,workshopHelicopter,workshopUnderConstruction]);

@override
String toString() {
  return 'Fbo(id: $id, name: $name, airportId: $airportId, airport: $airport, cargoWeightCapacity: $cargoWeightCapacity, sleepingCapacity: $sleepingCapacity, aircraftHangarCapacity: $aircraftHangarCapacity, aircraftTieDownCapacity: $aircraftTieDownCapacity, fuel100LLCapacity: $fuel100LLCapacity, fuel100LLQuantity: $fuel100LLQuantity, fuel100LLSellPrice: $fuel100LLSellPrice, allowFuel100LLSelling: $allowFuel100LLSelling, fuelJetCapacity: $fuelJetCapacity, fuelJetQuantity: $fuelJetQuantity, fuelJetSellPrice: $fuelJetSellPrice, allowFuelJetSelling: $allowFuelJetSelling, workshopSEP: $workshopSEP, workshopMEP: $workshopMEP, workshopTurboProp: $workshopTurboProp, workshopJet: $workshopJet, workshopHeavyJet: $workshopHeavyJet, workshopHelicopter: $workshopHelicopter, workshopUnderConstruction: $workshopUnderConstruction)';
}


}

/// @nodoc
abstract mixin class _$FboCopyWith<$Res> implements $FboCopyWith<$Res> {
  factory _$FboCopyWith(_Fbo value, $Res Function(_Fbo) _then) = __$FboCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Name') String name,@JsonKey(name: 'AirportId') String? airportId,@JsonKey(name: 'Airport') Airport? airport,@JsonKey(name: 'CargoWeightCapacity') double cargoWeightCapacity,@JsonKey(name: 'SleepingCapacity') double sleepingCapacity,@JsonKey(name: 'AircraftHangarCapacity') int aircraftHangarCapacity,@JsonKey(name: 'AircraftTieDownCapacity') int aircraftTieDownCapacity,@JsonKey(name: 'Fuel100LLCapacity') double fuel100LLCapacity,@JsonKey(name: 'Fuel100LLQuantity') double fuel100LLQuantity,@JsonKey(name: 'Fuel100LLSellPrice') double fuel100LLSellPrice,@JsonKey(name: 'AllowFuel100LLSelling') bool allowFuel100LLSelling,@JsonKey(name: 'FuelJetCapacity') double fuelJetCapacity,@JsonKey(name: 'FuelJetQuantity') double fuelJetQuantity,@JsonKey(name: 'FuelJetSellPrice') double fuelJetSellPrice,@JsonKey(name: 'AllowFuelJetSelling') bool allowFuelJetSelling,@JsonKey(name: 'WorkshopSEP') bool workshopSEP,@JsonKey(name: 'WorkshopMEP') bool workshopMEP,@JsonKey(name: 'WorkshopTurboProp') bool workshopTurboProp,@JsonKey(name: 'WorkshopJet') bool workshopJet,@JsonKey(name: 'WorkshopHeavyJet') bool workshopHeavyJet,@JsonKey(name: 'WorkshopHelicopter') bool workshopHelicopter,@JsonKey(name: 'WorkshopUnderConstruction') bool workshopUnderConstruction
});


@override $AirportCopyWith<$Res>? get airport;

}
/// @nodoc
class __$FboCopyWithImpl<$Res>
    implements _$FboCopyWith<$Res> {
  __$FboCopyWithImpl(this._self, this._then);

  final _Fbo _self;
  final $Res Function(_Fbo) _then;

/// Create a copy of Fbo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? airportId = freezed,Object? airport = freezed,Object? cargoWeightCapacity = null,Object? sleepingCapacity = null,Object? aircraftHangarCapacity = null,Object? aircraftTieDownCapacity = null,Object? fuel100LLCapacity = null,Object? fuel100LLQuantity = null,Object? fuel100LLSellPrice = null,Object? allowFuel100LLSelling = null,Object? fuelJetCapacity = null,Object? fuelJetQuantity = null,Object? fuelJetSellPrice = null,Object? allowFuelJetSelling = null,Object? workshopSEP = null,Object? workshopMEP = null,Object? workshopTurboProp = null,Object? workshopJet = null,Object? workshopHeavyJet = null,Object? workshopHelicopter = null,Object? workshopUnderConstruction = null,}) {
  return _then(_Fbo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,airportId: freezed == airportId ? _self.airportId : airportId // ignore: cast_nullable_to_non_nullable
as String?,airport: freezed == airport ? _self.airport : airport // ignore: cast_nullable_to_non_nullable
as Airport?,cargoWeightCapacity: null == cargoWeightCapacity ? _self.cargoWeightCapacity : cargoWeightCapacity // ignore: cast_nullable_to_non_nullable
as double,sleepingCapacity: null == sleepingCapacity ? _self.sleepingCapacity : sleepingCapacity // ignore: cast_nullable_to_non_nullable
as double,aircraftHangarCapacity: null == aircraftHangarCapacity ? _self.aircraftHangarCapacity : aircraftHangarCapacity // ignore: cast_nullable_to_non_nullable
as int,aircraftTieDownCapacity: null == aircraftTieDownCapacity ? _self.aircraftTieDownCapacity : aircraftTieDownCapacity // ignore: cast_nullable_to_non_nullable
as int,fuel100LLCapacity: null == fuel100LLCapacity ? _self.fuel100LLCapacity : fuel100LLCapacity // ignore: cast_nullable_to_non_nullable
as double,fuel100LLQuantity: null == fuel100LLQuantity ? _self.fuel100LLQuantity : fuel100LLQuantity // ignore: cast_nullable_to_non_nullable
as double,fuel100LLSellPrice: null == fuel100LLSellPrice ? _self.fuel100LLSellPrice : fuel100LLSellPrice // ignore: cast_nullable_to_non_nullable
as double,allowFuel100LLSelling: null == allowFuel100LLSelling ? _self.allowFuel100LLSelling : allowFuel100LLSelling // ignore: cast_nullable_to_non_nullable
as bool,fuelJetCapacity: null == fuelJetCapacity ? _self.fuelJetCapacity : fuelJetCapacity // ignore: cast_nullable_to_non_nullable
as double,fuelJetQuantity: null == fuelJetQuantity ? _self.fuelJetQuantity : fuelJetQuantity // ignore: cast_nullable_to_non_nullable
as double,fuelJetSellPrice: null == fuelJetSellPrice ? _self.fuelJetSellPrice : fuelJetSellPrice // ignore: cast_nullable_to_non_nullable
as double,allowFuelJetSelling: null == allowFuelJetSelling ? _self.allowFuelJetSelling : allowFuelJetSelling // ignore: cast_nullable_to_non_nullable
as bool,workshopSEP: null == workshopSEP ? _self.workshopSEP : workshopSEP // ignore: cast_nullable_to_non_nullable
as bool,workshopMEP: null == workshopMEP ? _self.workshopMEP : workshopMEP // ignore: cast_nullable_to_non_nullable
as bool,workshopTurboProp: null == workshopTurboProp ? _self.workshopTurboProp : workshopTurboProp // ignore: cast_nullable_to_non_nullable
as bool,workshopJet: null == workshopJet ? _self.workshopJet : workshopJet // ignore: cast_nullable_to_non_nullable
as bool,workshopHeavyJet: null == workshopHeavyJet ? _self.workshopHeavyJet : workshopHeavyJet // ignore: cast_nullable_to_non_nullable
as bool,workshopHelicopter: null == workshopHelicopter ? _self.workshopHelicopter : workshopHelicopter // ignore: cast_nullable_to_non_nullable
as bool,workshopUnderConstruction: null == workshopUnderConstruction ? _self.workshopUnderConstruction : workshopUnderConstruction // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Fbo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get airport {
    if (_self.airport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.airport!, (value) {
    return _then(_self.copyWith(airport: value));
  });
}
}

// dart format on
