// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aircraft_economics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AircraftEconomics {

@JsonKey(name: 'HourlyProfit') double? get hourlyProfit;@JsonKey(name: 'CostHourlyFuel') double? get costHourlyFuel;@JsonKey(name: 'CostHourlyCrew') double? get costHourlyCrew;@JsonKey(name: 'CostHourlyTotalMaintenance') double? get costHourlyTotalMaintenance;@JsonKey(name: 'CostHourlyRentTotal') double? get costHourlyRentTotal;@JsonKey(name: 'CostWeeklyLease') double? get costWeeklyLease;@JsonKey(name: 'CostWeeklyOwning') double? get costWeeklyOwning;@JsonKey(name: 'ProfitHourlyLease') double? get profitHourlyLease;@JsonKey(name: 'ProfitHourlyOwning') double? get profitHourlyOwning;@JsonKey(name: 'AverageWeeklyFlightHours') double? get averageWeeklyFlightHours;@JsonKey(name: 'OperationalPayloadLbs') double? get operationalPayloadLbs;@JsonKey(name: 'AverageCruiseSpeedKts') double? get averageCruiseSpeedKts;
/// Create a copy of AircraftEconomics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AircraftEconomicsCopyWith<AircraftEconomics> get copyWith => _$AircraftEconomicsCopyWithImpl<AircraftEconomics>(this as AircraftEconomics, _$identity);

  /// Serializes this AircraftEconomics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AircraftEconomics&&(identical(other.hourlyProfit, hourlyProfit) || other.hourlyProfit == hourlyProfit)&&(identical(other.costHourlyFuel, costHourlyFuel) || other.costHourlyFuel == costHourlyFuel)&&(identical(other.costHourlyCrew, costHourlyCrew) || other.costHourlyCrew == costHourlyCrew)&&(identical(other.costHourlyTotalMaintenance, costHourlyTotalMaintenance) || other.costHourlyTotalMaintenance == costHourlyTotalMaintenance)&&(identical(other.costHourlyRentTotal, costHourlyRentTotal) || other.costHourlyRentTotal == costHourlyRentTotal)&&(identical(other.costWeeklyLease, costWeeklyLease) || other.costWeeklyLease == costWeeklyLease)&&(identical(other.costWeeklyOwning, costWeeklyOwning) || other.costWeeklyOwning == costWeeklyOwning)&&(identical(other.profitHourlyLease, profitHourlyLease) || other.profitHourlyLease == profitHourlyLease)&&(identical(other.profitHourlyOwning, profitHourlyOwning) || other.profitHourlyOwning == profitHourlyOwning)&&(identical(other.averageWeeklyFlightHours, averageWeeklyFlightHours) || other.averageWeeklyFlightHours == averageWeeklyFlightHours)&&(identical(other.operationalPayloadLbs, operationalPayloadLbs) || other.operationalPayloadLbs == operationalPayloadLbs)&&(identical(other.averageCruiseSpeedKts, averageCruiseSpeedKts) || other.averageCruiseSpeedKts == averageCruiseSpeedKts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hourlyProfit,costHourlyFuel,costHourlyCrew,costHourlyTotalMaintenance,costHourlyRentTotal,costWeeklyLease,costWeeklyOwning,profitHourlyLease,profitHourlyOwning,averageWeeklyFlightHours,operationalPayloadLbs,averageCruiseSpeedKts);

@override
String toString() {
  return 'AircraftEconomics(hourlyProfit: $hourlyProfit, costHourlyFuel: $costHourlyFuel, costHourlyCrew: $costHourlyCrew, costHourlyTotalMaintenance: $costHourlyTotalMaintenance, costHourlyRentTotal: $costHourlyRentTotal, costWeeklyLease: $costWeeklyLease, costWeeklyOwning: $costWeeklyOwning, profitHourlyLease: $profitHourlyLease, profitHourlyOwning: $profitHourlyOwning, averageWeeklyFlightHours: $averageWeeklyFlightHours, operationalPayloadLbs: $operationalPayloadLbs, averageCruiseSpeedKts: $averageCruiseSpeedKts)';
}


}

/// @nodoc
abstract mixin class $AircraftEconomicsCopyWith<$Res>  {
  factory $AircraftEconomicsCopyWith(AircraftEconomics value, $Res Function(AircraftEconomics) _then) = _$AircraftEconomicsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'HourlyProfit') double? hourlyProfit,@JsonKey(name: 'CostHourlyFuel') double? costHourlyFuel,@JsonKey(name: 'CostHourlyCrew') double? costHourlyCrew,@JsonKey(name: 'CostHourlyTotalMaintenance') double? costHourlyTotalMaintenance,@JsonKey(name: 'CostHourlyRentTotal') double? costHourlyRentTotal,@JsonKey(name: 'CostWeeklyLease') double? costWeeklyLease,@JsonKey(name: 'CostWeeklyOwning') double? costWeeklyOwning,@JsonKey(name: 'ProfitHourlyLease') double? profitHourlyLease,@JsonKey(name: 'ProfitHourlyOwning') double? profitHourlyOwning,@JsonKey(name: 'AverageWeeklyFlightHours') double? averageWeeklyFlightHours,@JsonKey(name: 'OperationalPayloadLbs') double? operationalPayloadLbs,@JsonKey(name: 'AverageCruiseSpeedKts') double? averageCruiseSpeedKts
});




}
/// @nodoc
class _$AircraftEconomicsCopyWithImpl<$Res>
    implements $AircraftEconomicsCopyWith<$Res> {
  _$AircraftEconomicsCopyWithImpl(this._self, this._then);

  final AircraftEconomics _self;
  final $Res Function(AircraftEconomics) _then;

/// Create a copy of AircraftEconomics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hourlyProfit = freezed,Object? costHourlyFuel = freezed,Object? costHourlyCrew = freezed,Object? costHourlyTotalMaintenance = freezed,Object? costHourlyRentTotal = freezed,Object? costWeeklyLease = freezed,Object? costWeeklyOwning = freezed,Object? profitHourlyLease = freezed,Object? profitHourlyOwning = freezed,Object? averageWeeklyFlightHours = freezed,Object? operationalPayloadLbs = freezed,Object? averageCruiseSpeedKts = freezed,}) {
  return _then(_self.copyWith(
hourlyProfit: freezed == hourlyProfit ? _self.hourlyProfit : hourlyProfit // ignore: cast_nullable_to_non_nullable
as double?,costHourlyFuel: freezed == costHourlyFuel ? _self.costHourlyFuel : costHourlyFuel // ignore: cast_nullable_to_non_nullable
as double?,costHourlyCrew: freezed == costHourlyCrew ? _self.costHourlyCrew : costHourlyCrew // ignore: cast_nullable_to_non_nullable
as double?,costHourlyTotalMaintenance: freezed == costHourlyTotalMaintenance ? _self.costHourlyTotalMaintenance : costHourlyTotalMaintenance // ignore: cast_nullable_to_non_nullable
as double?,costHourlyRentTotal: freezed == costHourlyRentTotal ? _self.costHourlyRentTotal : costHourlyRentTotal // ignore: cast_nullable_to_non_nullable
as double?,costWeeklyLease: freezed == costWeeklyLease ? _self.costWeeklyLease : costWeeklyLease // ignore: cast_nullable_to_non_nullable
as double?,costWeeklyOwning: freezed == costWeeklyOwning ? _self.costWeeklyOwning : costWeeklyOwning // ignore: cast_nullable_to_non_nullable
as double?,profitHourlyLease: freezed == profitHourlyLease ? _self.profitHourlyLease : profitHourlyLease // ignore: cast_nullable_to_non_nullable
as double?,profitHourlyOwning: freezed == profitHourlyOwning ? _self.profitHourlyOwning : profitHourlyOwning // ignore: cast_nullable_to_non_nullable
as double?,averageWeeklyFlightHours: freezed == averageWeeklyFlightHours ? _self.averageWeeklyFlightHours : averageWeeklyFlightHours // ignore: cast_nullable_to_non_nullable
as double?,operationalPayloadLbs: freezed == operationalPayloadLbs ? _self.operationalPayloadLbs : operationalPayloadLbs // ignore: cast_nullable_to_non_nullable
as double?,averageCruiseSpeedKts: freezed == averageCruiseSpeedKts ? _self.averageCruiseSpeedKts : averageCruiseSpeedKts // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [AircraftEconomics].
extension AircraftEconomicsPatterns on AircraftEconomics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AircraftEconomics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AircraftEconomics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AircraftEconomics value)  $default,){
final _that = this;
switch (_that) {
case _AircraftEconomics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AircraftEconomics value)?  $default,){
final _that = this;
switch (_that) {
case _AircraftEconomics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'HourlyProfit')  double? hourlyProfit, @JsonKey(name: 'CostHourlyFuel')  double? costHourlyFuel, @JsonKey(name: 'CostHourlyCrew')  double? costHourlyCrew, @JsonKey(name: 'CostHourlyTotalMaintenance')  double? costHourlyTotalMaintenance, @JsonKey(name: 'CostHourlyRentTotal')  double? costHourlyRentTotal, @JsonKey(name: 'CostWeeklyLease')  double? costWeeklyLease, @JsonKey(name: 'CostWeeklyOwning')  double? costWeeklyOwning, @JsonKey(name: 'ProfitHourlyLease')  double? profitHourlyLease, @JsonKey(name: 'ProfitHourlyOwning')  double? profitHourlyOwning, @JsonKey(name: 'AverageWeeklyFlightHours')  double? averageWeeklyFlightHours, @JsonKey(name: 'OperationalPayloadLbs')  double? operationalPayloadLbs, @JsonKey(name: 'AverageCruiseSpeedKts')  double? averageCruiseSpeedKts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AircraftEconomics() when $default != null:
return $default(_that.hourlyProfit,_that.costHourlyFuel,_that.costHourlyCrew,_that.costHourlyTotalMaintenance,_that.costHourlyRentTotal,_that.costWeeklyLease,_that.costWeeklyOwning,_that.profitHourlyLease,_that.profitHourlyOwning,_that.averageWeeklyFlightHours,_that.operationalPayloadLbs,_that.averageCruiseSpeedKts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'HourlyProfit')  double? hourlyProfit, @JsonKey(name: 'CostHourlyFuel')  double? costHourlyFuel, @JsonKey(name: 'CostHourlyCrew')  double? costHourlyCrew, @JsonKey(name: 'CostHourlyTotalMaintenance')  double? costHourlyTotalMaintenance, @JsonKey(name: 'CostHourlyRentTotal')  double? costHourlyRentTotal, @JsonKey(name: 'CostWeeklyLease')  double? costWeeklyLease, @JsonKey(name: 'CostWeeklyOwning')  double? costWeeklyOwning, @JsonKey(name: 'ProfitHourlyLease')  double? profitHourlyLease, @JsonKey(name: 'ProfitHourlyOwning')  double? profitHourlyOwning, @JsonKey(name: 'AverageWeeklyFlightHours')  double? averageWeeklyFlightHours, @JsonKey(name: 'OperationalPayloadLbs')  double? operationalPayloadLbs, @JsonKey(name: 'AverageCruiseSpeedKts')  double? averageCruiseSpeedKts)  $default,) {final _that = this;
switch (_that) {
case _AircraftEconomics():
return $default(_that.hourlyProfit,_that.costHourlyFuel,_that.costHourlyCrew,_that.costHourlyTotalMaintenance,_that.costHourlyRentTotal,_that.costWeeklyLease,_that.costWeeklyOwning,_that.profitHourlyLease,_that.profitHourlyOwning,_that.averageWeeklyFlightHours,_that.operationalPayloadLbs,_that.averageCruiseSpeedKts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'HourlyProfit')  double? hourlyProfit, @JsonKey(name: 'CostHourlyFuel')  double? costHourlyFuel, @JsonKey(name: 'CostHourlyCrew')  double? costHourlyCrew, @JsonKey(name: 'CostHourlyTotalMaintenance')  double? costHourlyTotalMaintenance, @JsonKey(name: 'CostHourlyRentTotal')  double? costHourlyRentTotal, @JsonKey(name: 'CostWeeklyLease')  double? costWeeklyLease, @JsonKey(name: 'CostWeeklyOwning')  double? costWeeklyOwning, @JsonKey(name: 'ProfitHourlyLease')  double? profitHourlyLease, @JsonKey(name: 'ProfitHourlyOwning')  double? profitHourlyOwning, @JsonKey(name: 'AverageWeeklyFlightHours')  double? averageWeeklyFlightHours, @JsonKey(name: 'OperationalPayloadLbs')  double? operationalPayloadLbs, @JsonKey(name: 'AverageCruiseSpeedKts')  double? averageCruiseSpeedKts)?  $default,) {final _that = this;
switch (_that) {
case _AircraftEconomics() when $default != null:
return $default(_that.hourlyProfit,_that.costHourlyFuel,_that.costHourlyCrew,_that.costHourlyTotalMaintenance,_that.costHourlyRentTotal,_that.costWeeklyLease,_that.costWeeklyOwning,_that.profitHourlyLease,_that.profitHourlyOwning,_that.averageWeeklyFlightHours,_that.operationalPayloadLbs,_that.averageCruiseSpeedKts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AircraftEconomics implements AircraftEconomics {
  const _AircraftEconomics({@JsonKey(name: 'HourlyProfit') this.hourlyProfit, @JsonKey(name: 'CostHourlyFuel') this.costHourlyFuel, @JsonKey(name: 'CostHourlyCrew') this.costHourlyCrew, @JsonKey(name: 'CostHourlyTotalMaintenance') this.costHourlyTotalMaintenance, @JsonKey(name: 'CostHourlyRentTotal') this.costHourlyRentTotal, @JsonKey(name: 'CostWeeklyLease') this.costWeeklyLease, @JsonKey(name: 'CostWeeklyOwning') this.costWeeklyOwning, @JsonKey(name: 'ProfitHourlyLease') this.profitHourlyLease, @JsonKey(name: 'ProfitHourlyOwning') this.profitHourlyOwning, @JsonKey(name: 'AverageWeeklyFlightHours') this.averageWeeklyFlightHours, @JsonKey(name: 'OperationalPayloadLbs') this.operationalPayloadLbs, @JsonKey(name: 'AverageCruiseSpeedKts') this.averageCruiseSpeedKts});
  factory _AircraftEconomics.fromJson(Map<String, dynamic> json) => _$AircraftEconomicsFromJson(json);

@override@JsonKey(name: 'HourlyProfit') final  double? hourlyProfit;
@override@JsonKey(name: 'CostHourlyFuel') final  double? costHourlyFuel;
@override@JsonKey(name: 'CostHourlyCrew') final  double? costHourlyCrew;
@override@JsonKey(name: 'CostHourlyTotalMaintenance') final  double? costHourlyTotalMaintenance;
@override@JsonKey(name: 'CostHourlyRentTotal') final  double? costHourlyRentTotal;
@override@JsonKey(name: 'CostWeeklyLease') final  double? costWeeklyLease;
@override@JsonKey(name: 'CostWeeklyOwning') final  double? costWeeklyOwning;
@override@JsonKey(name: 'ProfitHourlyLease') final  double? profitHourlyLease;
@override@JsonKey(name: 'ProfitHourlyOwning') final  double? profitHourlyOwning;
@override@JsonKey(name: 'AverageWeeklyFlightHours') final  double? averageWeeklyFlightHours;
@override@JsonKey(name: 'OperationalPayloadLbs') final  double? operationalPayloadLbs;
@override@JsonKey(name: 'AverageCruiseSpeedKts') final  double? averageCruiseSpeedKts;

/// Create a copy of AircraftEconomics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AircraftEconomicsCopyWith<_AircraftEconomics> get copyWith => __$AircraftEconomicsCopyWithImpl<_AircraftEconomics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AircraftEconomicsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AircraftEconomics&&(identical(other.hourlyProfit, hourlyProfit) || other.hourlyProfit == hourlyProfit)&&(identical(other.costHourlyFuel, costHourlyFuel) || other.costHourlyFuel == costHourlyFuel)&&(identical(other.costHourlyCrew, costHourlyCrew) || other.costHourlyCrew == costHourlyCrew)&&(identical(other.costHourlyTotalMaintenance, costHourlyTotalMaintenance) || other.costHourlyTotalMaintenance == costHourlyTotalMaintenance)&&(identical(other.costHourlyRentTotal, costHourlyRentTotal) || other.costHourlyRentTotal == costHourlyRentTotal)&&(identical(other.costWeeklyLease, costWeeklyLease) || other.costWeeklyLease == costWeeklyLease)&&(identical(other.costWeeklyOwning, costWeeklyOwning) || other.costWeeklyOwning == costWeeklyOwning)&&(identical(other.profitHourlyLease, profitHourlyLease) || other.profitHourlyLease == profitHourlyLease)&&(identical(other.profitHourlyOwning, profitHourlyOwning) || other.profitHourlyOwning == profitHourlyOwning)&&(identical(other.averageWeeklyFlightHours, averageWeeklyFlightHours) || other.averageWeeklyFlightHours == averageWeeklyFlightHours)&&(identical(other.operationalPayloadLbs, operationalPayloadLbs) || other.operationalPayloadLbs == operationalPayloadLbs)&&(identical(other.averageCruiseSpeedKts, averageCruiseSpeedKts) || other.averageCruiseSpeedKts == averageCruiseSpeedKts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hourlyProfit,costHourlyFuel,costHourlyCrew,costHourlyTotalMaintenance,costHourlyRentTotal,costWeeklyLease,costWeeklyOwning,profitHourlyLease,profitHourlyOwning,averageWeeklyFlightHours,operationalPayloadLbs,averageCruiseSpeedKts);

@override
String toString() {
  return 'AircraftEconomics(hourlyProfit: $hourlyProfit, costHourlyFuel: $costHourlyFuel, costHourlyCrew: $costHourlyCrew, costHourlyTotalMaintenance: $costHourlyTotalMaintenance, costHourlyRentTotal: $costHourlyRentTotal, costWeeklyLease: $costWeeklyLease, costWeeklyOwning: $costWeeklyOwning, profitHourlyLease: $profitHourlyLease, profitHourlyOwning: $profitHourlyOwning, averageWeeklyFlightHours: $averageWeeklyFlightHours, operationalPayloadLbs: $operationalPayloadLbs, averageCruiseSpeedKts: $averageCruiseSpeedKts)';
}


}

/// @nodoc
abstract mixin class _$AircraftEconomicsCopyWith<$Res> implements $AircraftEconomicsCopyWith<$Res> {
  factory _$AircraftEconomicsCopyWith(_AircraftEconomics value, $Res Function(_AircraftEconomics) _then) = __$AircraftEconomicsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'HourlyProfit') double? hourlyProfit,@JsonKey(name: 'CostHourlyFuel') double? costHourlyFuel,@JsonKey(name: 'CostHourlyCrew') double? costHourlyCrew,@JsonKey(name: 'CostHourlyTotalMaintenance') double? costHourlyTotalMaintenance,@JsonKey(name: 'CostHourlyRentTotal') double? costHourlyRentTotal,@JsonKey(name: 'CostWeeklyLease') double? costWeeklyLease,@JsonKey(name: 'CostWeeklyOwning') double? costWeeklyOwning,@JsonKey(name: 'ProfitHourlyLease') double? profitHourlyLease,@JsonKey(name: 'ProfitHourlyOwning') double? profitHourlyOwning,@JsonKey(name: 'AverageWeeklyFlightHours') double? averageWeeklyFlightHours,@JsonKey(name: 'OperationalPayloadLbs') double? operationalPayloadLbs,@JsonKey(name: 'AverageCruiseSpeedKts') double? averageCruiseSpeedKts
});




}
/// @nodoc
class __$AircraftEconomicsCopyWithImpl<$Res>
    implements _$AircraftEconomicsCopyWith<$Res> {
  __$AircraftEconomicsCopyWithImpl(this._self, this._then);

  final _AircraftEconomics _self;
  final $Res Function(_AircraftEconomics) _then;

/// Create a copy of AircraftEconomics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hourlyProfit = freezed,Object? costHourlyFuel = freezed,Object? costHourlyCrew = freezed,Object? costHourlyTotalMaintenance = freezed,Object? costHourlyRentTotal = freezed,Object? costWeeklyLease = freezed,Object? costWeeklyOwning = freezed,Object? profitHourlyLease = freezed,Object? profitHourlyOwning = freezed,Object? averageWeeklyFlightHours = freezed,Object? operationalPayloadLbs = freezed,Object? averageCruiseSpeedKts = freezed,}) {
  return _then(_AircraftEconomics(
hourlyProfit: freezed == hourlyProfit ? _self.hourlyProfit : hourlyProfit // ignore: cast_nullable_to_non_nullable
as double?,costHourlyFuel: freezed == costHourlyFuel ? _self.costHourlyFuel : costHourlyFuel // ignore: cast_nullable_to_non_nullable
as double?,costHourlyCrew: freezed == costHourlyCrew ? _self.costHourlyCrew : costHourlyCrew // ignore: cast_nullable_to_non_nullable
as double?,costHourlyTotalMaintenance: freezed == costHourlyTotalMaintenance ? _self.costHourlyTotalMaintenance : costHourlyTotalMaintenance // ignore: cast_nullable_to_non_nullable
as double?,costHourlyRentTotal: freezed == costHourlyRentTotal ? _self.costHourlyRentTotal : costHourlyRentTotal // ignore: cast_nullable_to_non_nullable
as double?,costWeeklyLease: freezed == costWeeklyLease ? _self.costWeeklyLease : costWeeklyLease // ignore: cast_nullable_to_non_nullable
as double?,costWeeklyOwning: freezed == costWeeklyOwning ? _self.costWeeklyOwning : costWeeklyOwning // ignore: cast_nullable_to_non_nullable
as double?,profitHourlyLease: freezed == profitHourlyLease ? _self.profitHourlyLease : profitHourlyLease // ignore: cast_nullable_to_non_nullable
as double?,profitHourlyOwning: freezed == profitHourlyOwning ? _self.profitHourlyOwning : profitHourlyOwning // ignore: cast_nullable_to_non_nullable
as double?,averageWeeklyFlightHours: freezed == averageWeeklyFlightHours ? _self.averageWeeklyFlightHours : averageWeeklyFlightHours // ignore: cast_nullable_to_non_nullable
as double?,operationalPayloadLbs: freezed == operationalPayloadLbs ? _self.operationalPayloadLbs : operationalPayloadLbs // ignore: cast_nullable_to_non_nullable
as double?,averageCruiseSpeedKts: freezed == averageCruiseSpeedKts ? _self.averageCruiseSpeedKts : averageCruiseSpeedKts // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
