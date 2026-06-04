// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassCertification {

@JsonKey(name: 'AircraftClass') AircraftClass? get aircraftClass;
/// Create a copy of ClassCertification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassCertificationCopyWith<ClassCertification> get copyWith => _$ClassCertificationCopyWithImpl<ClassCertification>(this as ClassCertification, _$identity);

  /// Serializes this ClassCertification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassCertification&&(identical(other.aircraftClass, aircraftClass) || other.aircraftClass == aircraftClass));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,aircraftClass);

@override
String toString() {
  return 'ClassCertification(aircraftClass: $aircraftClass)';
}


}

/// @nodoc
abstract mixin class $ClassCertificationCopyWith<$Res>  {
  factory $ClassCertificationCopyWith(ClassCertification value, $Res Function(ClassCertification) _then) = _$ClassCertificationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'AircraftClass') AircraftClass? aircraftClass
});


$AircraftClassCopyWith<$Res>? get aircraftClass;

}
/// @nodoc
class _$ClassCertificationCopyWithImpl<$Res>
    implements $ClassCertificationCopyWith<$Res> {
  _$ClassCertificationCopyWithImpl(this._self, this._then);

  final ClassCertification _self;
  final $Res Function(ClassCertification) _then;

/// Create a copy of ClassCertification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? aircraftClass = freezed,}) {
  return _then(_self.copyWith(
aircraftClass: freezed == aircraftClass ? _self.aircraftClass : aircraftClass // ignore: cast_nullable_to_non_nullable
as AircraftClass?,
  ));
}
/// Create a copy of ClassCertification
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


/// Adds pattern-matching-related methods to [ClassCertification].
extension ClassCertificationPatterns on ClassCertification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassCertification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassCertification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassCertification value)  $default,){
final _that = this;
switch (_that) {
case _ClassCertification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassCertification value)?  $default,){
final _that = this;
switch (_that) {
case _ClassCertification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'AircraftClass')  AircraftClass? aircraftClass)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassCertification() when $default != null:
return $default(_that.aircraftClass);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'AircraftClass')  AircraftClass? aircraftClass)  $default,) {final _that = this;
switch (_that) {
case _ClassCertification():
return $default(_that.aircraftClass);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'AircraftClass')  AircraftClass? aircraftClass)?  $default,) {final _that = this;
switch (_that) {
case _ClassCertification() when $default != null:
return $default(_that.aircraftClass);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassCertification implements ClassCertification {
  const _ClassCertification({@JsonKey(name: 'AircraftClass') this.aircraftClass});
  factory _ClassCertification.fromJson(Map<String, dynamic> json) => _$ClassCertificationFromJson(json);

@override@JsonKey(name: 'AircraftClass') final  AircraftClass? aircraftClass;

/// Create a copy of ClassCertification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassCertificationCopyWith<_ClassCertification> get copyWith => __$ClassCertificationCopyWithImpl<_ClassCertification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassCertificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassCertification&&(identical(other.aircraftClass, aircraftClass) || other.aircraftClass == aircraftClass));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,aircraftClass);

@override
String toString() {
  return 'ClassCertification(aircraftClass: $aircraftClass)';
}


}

/// @nodoc
abstract mixin class _$ClassCertificationCopyWith<$Res> implements $ClassCertificationCopyWith<$Res> {
  factory _$ClassCertificationCopyWith(_ClassCertification value, $Res Function(_ClassCertification) _then) = __$ClassCertificationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'AircraftClass') AircraftClass? aircraftClass
});


@override $AircraftClassCopyWith<$Res>? get aircraftClass;

}
/// @nodoc
class __$ClassCertificationCopyWithImpl<$Res>
    implements _$ClassCertificationCopyWith<$Res> {
  __$ClassCertificationCopyWithImpl(this._self, this._then);

  final _ClassCertification _self;
  final $Res Function(_ClassCertification) _then;

/// Create a copy of ClassCertification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? aircraftClass = freezed,}) {
  return _then(_ClassCertification(
aircraftClass: freezed == aircraftClass ? _self.aircraftClass : aircraftClass // ignore: cast_nullable_to_non_nullable
as AircraftClass?,
  ));
}

/// Create a copy of ClassCertification
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


/// @nodoc
mixin _$Employee {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'Pseudo') String get pseudo;@JsonKey(name: 'Category') int get categoryCode;@JsonKey(name: 'Status') int get statusCode;@JsonKey(name: 'ClassCertifications') List<ClassCertification> get classCertifications;@JsonKey(name: 'Fatigue') double get fatigue;@JsonKey(name: 'Punctuality') double get punctuality;@JsonKey(name: 'Comfort') double get comfort;@JsonKey(name: 'Happiness') double get happiness;@JsonKey(name: 'FlightHoursInCompany') double get flightHoursInCompany;@JsonKey(name: 'FlightHoursGrandTotal') double get flightHoursGrandTotal;@JsonKey(name: 'PerFlightHourWages') double get perFlightHourWages;@JsonKey(name: 'WeeklyGarantedSalary') double get weeklyGuaranteedSalary;@JsonKey(name: 'Weight') double get weight;@JsonKey(name: 'IsOnline') bool get isOnline;@JsonKey(name: 'BusyUntil', fromJson: utcFromJsonNullable) DateTime? get busyUntil;@JsonKey(name: 'HomeAirport') Airport? get homeAirport;@JsonKey(name: 'CurrentAirport') Airport? get currentAirport;@JsonKey(name: 'CurrentAircraftId') String? get currentAircraftId;
/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeCopyWith<Employee> get copyWith => _$EmployeeCopyWithImpl<Employee>(this as Employee, _$identity);

  /// Serializes this Employee to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Employee&&(identical(other.id, id) || other.id == id)&&(identical(other.pseudo, pseudo) || other.pseudo == pseudo)&&(identical(other.categoryCode, categoryCode) || other.categoryCode == categoryCode)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other.classCertifications, classCertifications)&&(identical(other.fatigue, fatigue) || other.fatigue == fatigue)&&(identical(other.punctuality, punctuality) || other.punctuality == punctuality)&&(identical(other.comfort, comfort) || other.comfort == comfort)&&(identical(other.happiness, happiness) || other.happiness == happiness)&&(identical(other.flightHoursInCompany, flightHoursInCompany) || other.flightHoursInCompany == flightHoursInCompany)&&(identical(other.flightHoursGrandTotal, flightHoursGrandTotal) || other.flightHoursGrandTotal == flightHoursGrandTotal)&&(identical(other.perFlightHourWages, perFlightHourWages) || other.perFlightHourWages == perFlightHourWages)&&(identical(other.weeklyGuaranteedSalary, weeklyGuaranteedSalary) || other.weeklyGuaranteedSalary == weeklyGuaranteedSalary)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.busyUntil, busyUntil) || other.busyUntil == busyUntil)&&(identical(other.homeAirport, homeAirport) || other.homeAirport == homeAirport)&&(identical(other.currentAirport, currentAirport) || other.currentAirport == currentAirport)&&(identical(other.currentAircraftId, currentAircraftId) || other.currentAircraftId == currentAircraftId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,pseudo,categoryCode,statusCode,const DeepCollectionEquality().hash(classCertifications),fatigue,punctuality,comfort,happiness,flightHoursInCompany,flightHoursGrandTotal,perFlightHourWages,weeklyGuaranteedSalary,weight,isOnline,busyUntil,homeAirport,currentAirport,currentAircraftId]);

@override
String toString() {
  return 'Employee(id: $id, pseudo: $pseudo, categoryCode: $categoryCode, statusCode: $statusCode, classCertifications: $classCertifications, fatigue: $fatigue, punctuality: $punctuality, comfort: $comfort, happiness: $happiness, flightHoursInCompany: $flightHoursInCompany, flightHoursGrandTotal: $flightHoursGrandTotal, perFlightHourWages: $perFlightHourWages, weeklyGuaranteedSalary: $weeklyGuaranteedSalary, weight: $weight, isOnline: $isOnline, busyUntil: $busyUntil, homeAirport: $homeAirport, currentAirport: $currentAirport, currentAircraftId: $currentAircraftId)';
}


}

/// @nodoc
abstract mixin class $EmployeeCopyWith<$Res>  {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) _then) = _$EmployeeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Pseudo') String pseudo,@JsonKey(name: 'Category') int categoryCode,@JsonKey(name: 'Status') int statusCode,@JsonKey(name: 'ClassCertifications') List<ClassCertification> classCertifications,@JsonKey(name: 'Fatigue') double fatigue,@JsonKey(name: 'Punctuality') double punctuality,@JsonKey(name: 'Comfort') double comfort,@JsonKey(name: 'Happiness') double happiness,@JsonKey(name: 'FlightHoursInCompany') double flightHoursInCompany,@JsonKey(name: 'FlightHoursGrandTotal') double flightHoursGrandTotal,@JsonKey(name: 'PerFlightHourWages') double perFlightHourWages,@JsonKey(name: 'WeeklyGarantedSalary') double weeklyGuaranteedSalary,@JsonKey(name: 'Weight') double weight,@JsonKey(name: 'IsOnline') bool isOnline,@JsonKey(name: 'BusyUntil', fromJson: utcFromJsonNullable) DateTime? busyUntil,@JsonKey(name: 'HomeAirport') Airport? homeAirport,@JsonKey(name: 'CurrentAirport') Airport? currentAirport,@JsonKey(name: 'CurrentAircraftId') String? currentAircraftId
});


$AirportCopyWith<$Res>? get homeAirport;$AirportCopyWith<$Res>? get currentAirport;

}
/// @nodoc
class _$EmployeeCopyWithImpl<$Res>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._self, this._then);

  final Employee _self;
  final $Res Function(Employee) _then;

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? pseudo = null,Object? categoryCode = null,Object? statusCode = null,Object? classCertifications = null,Object? fatigue = null,Object? punctuality = null,Object? comfort = null,Object? happiness = null,Object? flightHoursInCompany = null,Object? flightHoursGrandTotal = null,Object? perFlightHourWages = null,Object? weeklyGuaranteedSalary = null,Object? weight = null,Object? isOnline = null,Object? busyUntil = freezed,Object? homeAirport = freezed,Object? currentAirport = freezed,Object? currentAircraftId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pseudo: null == pseudo ? _self.pseudo : pseudo // ignore: cast_nullable_to_non_nullable
as String,categoryCode: null == categoryCode ? _self.categoryCode : categoryCode // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,classCertifications: null == classCertifications ? _self.classCertifications : classCertifications // ignore: cast_nullable_to_non_nullable
as List<ClassCertification>,fatigue: null == fatigue ? _self.fatigue : fatigue // ignore: cast_nullable_to_non_nullable
as double,punctuality: null == punctuality ? _self.punctuality : punctuality // ignore: cast_nullable_to_non_nullable
as double,comfort: null == comfort ? _self.comfort : comfort // ignore: cast_nullable_to_non_nullable
as double,happiness: null == happiness ? _self.happiness : happiness // ignore: cast_nullable_to_non_nullable
as double,flightHoursInCompany: null == flightHoursInCompany ? _self.flightHoursInCompany : flightHoursInCompany // ignore: cast_nullable_to_non_nullable
as double,flightHoursGrandTotal: null == flightHoursGrandTotal ? _self.flightHoursGrandTotal : flightHoursGrandTotal // ignore: cast_nullable_to_non_nullable
as double,perFlightHourWages: null == perFlightHourWages ? _self.perFlightHourWages : perFlightHourWages // ignore: cast_nullable_to_non_nullable
as double,weeklyGuaranteedSalary: null == weeklyGuaranteedSalary ? _self.weeklyGuaranteedSalary : weeklyGuaranteedSalary // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,busyUntil: freezed == busyUntil ? _self.busyUntil : busyUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,homeAirport: freezed == homeAirport ? _self.homeAirport : homeAirport // ignore: cast_nullable_to_non_nullable
as Airport?,currentAirport: freezed == currentAirport ? _self.currentAirport : currentAirport // ignore: cast_nullable_to_non_nullable
as Airport?,currentAircraftId: freezed == currentAircraftId ? _self.currentAircraftId : currentAircraftId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get homeAirport {
    if (_self.homeAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.homeAirport!, (value) {
    return _then(_self.copyWith(homeAirport: value));
  });
}/// Create a copy of Employee
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


/// Adds pattern-matching-related methods to [Employee].
extension EmployeePatterns on Employee {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Employee value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Employee() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Employee value)  $default,){
final _that = this;
switch (_that) {
case _Employee():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Employee value)?  $default,){
final _that = this;
switch (_that) {
case _Employee() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Pseudo')  String pseudo, @JsonKey(name: 'Category')  int categoryCode, @JsonKey(name: 'Status')  int statusCode, @JsonKey(name: 'ClassCertifications')  List<ClassCertification> classCertifications, @JsonKey(name: 'Fatigue')  double fatigue, @JsonKey(name: 'Punctuality')  double punctuality, @JsonKey(name: 'Comfort')  double comfort, @JsonKey(name: 'Happiness')  double happiness, @JsonKey(name: 'FlightHoursInCompany')  double flightHoursInCompany, @JsonKey(name: 'FlightHoursGrandTotal')  double flightHoursGrandTotal, @JsonKey(name: 'PerFlightHourWages')  double perFlightHourWages, @JsonKey(name: 'WeeklyGarantedSalary')  double weeklyGuaranteedSalary, @JsonKey(name: 'Weight')  double weight, @JsonKey(name: 'IsOnline')  bool isOnline, @JsonKey(name: 'BusyUntil', fromJson: utcFromJsonNullable)  DateTime? busyUntil, @JsonKey(name: 'HomeAirport')  Airport? homeAirport, @JsonKey(name: 'CurrentAirport')  Airport? currentAirport, @JsonKey(name: 'CurrentAircraftId')  String? currentAircraftId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Employee() when $default != null:
return $default(_that.id,_that.pseudo,_that.categoryCode,_that.statusCode,_that.classCertifications,_that.fatigue,_that.punctuality,_that.comfort,_that.happiness,_that.flightHoursInCompany,_that.flightHoursGrandTotal,_that.perFlightHourWages,_that.weeklyGuaranteedSalary,_that.weight,_that.isOnline,_that.busyUntil,_that.homeAirport,_that.currentAirport,_that.currentAircraftId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Pseudo')  String pseudo, @JsonKey(name: 'Category')  int categoryCode, @JsonKey(name: 'Status')  int statusCode, @JsonKey(name: 'ClassCertifications')  List<ClassCertification> classCertifications, @JsonKey(name: 'Fatigue')  double fatigue, @JsonKey(name: 'Punctuality')  double punctuality, @JsonKey(name: 'Comfort')  double comfort, @JsonKey(name: 'Happiness')  double happiness, @JsonKey(name: 'FlightHoursInCompany')  double flightHoursInCompany, @JsonKey(name: 'FlightHoursGrandTotal')  double flightHoursGrandTotal, @JsonKey(name: 'PerFlightHourWages')  double perFlightHourWages, @JsonKey(name: 'WeeklyGarantedSalary')  double weeklyGuaranteedSalary, @JsonKey(name: 'Weight')  double weight, @JsonKey(name: 'IsOnline')  bool isOnline, @JsonKey(name: 'BusyUntil', fromJson: utcFromJsonNullable)  DateTime? busyUntil, @JsonKey(name: 'HomeAirport')  Airport? homeAirport, @JsonKey(name: 'CurrentAirport')  Airport? currentAirport, @JsonKey(name: 'CurrentAircraftId')  String? currentAircraftId)  $default,) {final _that = this;
switch (_that) {
case _Employee():
return $default(_that.id,_that.pseudo,_that.categoryCode,_that.statusCode,_that.classCertifications,_that.fatigue,_that.punctuality,_that.comfort,_that.happiness,_that.flightHoursInCompany,_that.flightHoursGrandTotal,_that.perFlightHourWages,_that.weeklyGuaranteedSalary,_that.weight,_that.isOnline,_that.busyUntil,_that.homeAirport,_that.currentAirport,_that.currentAircraftId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Pseudo')  String pseudo, @JsonKey(name: 'Category')  int categoryCode, @JsonKey(name: 'Status')  int statusCode, @JsonKey(name: 'ClassCertifications')  List<ClassCertification> classCertifications, @JsonKey(name: 'Fatigue')  double fatigue, @JsonKey(name: 'Punctuality')  double punctuality, @JsonKey(name: 'Comfort')  double comfort, @JsonKey(name: 'Happiness')  double happiness, @JsonKey(name: 'FlightHoursInCompany')  double flightHoursInCompany, @JsonKey(name: 'FlightHoursGrandTotal')  double flightHoursGrandTotal, @JsonKey(name: 'PerFlightHourWages')  double perFlightHourWages, @JsonKey(name: 'WeeklyGarantedSalary')  double weeklyGuaranteedSalary, @JsonKey(name: 'Weight')  double weight, @JsonKey(name: 'IsOnline')  bool isOnline, @JsonKey(name: 'BusyUntil', fromJson: utcFromJsonNullable)  DateTime? busyUntil, @JsonKey(name: 'HomeAirport')  Airport? homeAirport, @JsonKey(name: 'CurrentAirport')  Airport? currentAirport, @JsonKey(name: 'CurrentAircraftId')  String? currentAircraftId)?  $default,) {final _that = this;
switch (_that) {
case _Employee() when $default != null:
return $default(_that.id,_that.pseudo,_that.categoryCode,_that.statusCode,_that.classCertifications,_that.fatigue,_that.punctuality,_that.comfort,_that.happiness,_that.flightHoursInCompany,_that.flightHoursGrandTotal,_that.perFlightHourWages,_that.weeklyGuaranteedSalary,_that.weight,_that.isOnline,_that.busyUntil,_that.homeAirport,_that.currentAirport,_that.currentAircraftId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Employee extends Employee {
  const _Employee({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Pseudo') this.pseudo = '', @JsonKey(name: 'Category') this.categoryCode = 0, @JsonKey(name: 'Status') this.statusCode = 0, @JsonKey(name: 'ClassCertifications') final  List<ClassCertification> classCertifications = const [], @JsonKey(name: 'Fatigue') this.fatigue = 0, @JsonKey(name: 'Punctuality') this.punctuality = 0, @JsonKey(name: 'Comfort') this.comfort = 0, @JsonKey(name: 'Happiness') this.happiness = 0, @JsonKey(name: 'FlightHoursInCompany') this.flightHoursInCompany = 0, @JsonKey(name: 'FlightHoursGrandTotal') this.flightHoursGrandTotal = 0, @JsonKey(name: 'PerFlightHourWages') this.perFlightHourWages = 0, @JsonKey(name: 'WeeklyGarantedSalary') this.weeklyGuaranteedSalary = 0, @JsonKey(name: 'Weight') this.weight = 0, @JsonKey(name: 'IsOnline') this.isOnline = false, @JsonKey(name: 'BusyUntil', fromJson: utcFromJsonNullable) this.busyUntil, @JsonKey(name: 'HomeAirport') this.homeAirport, @JsonKey(name: 'CurrentAirport') this.currentAirport, @JsonKey(name: 'CurrentAircraftId') this.currentAircraftId}): _classCertifications = classCertifications,super._();
  factory _Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'Pseudo') final  String pseudo;
@override@JsonKey(name: 'Category') final  int categoryCode;
@override@JsonKey(name: 'Status') final  int statusCode;
 final  List<ClassCertification> _classCertifications;
@override@JsonKey(name: 'ClassCertifications') List<ClassCertification> get classCertifications {
  if (_classCertifications is EqualUnmodifiableListView) return _classCertifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_classCertifications);
}

@override@JsonKey(name: 'Fatigue') final  double fatigue;
@override@JsonKey(name: 'Punctuality') final  double punctuality;
@override@JsonKey(name: 'Comfort') final  double comfort;
@override@JsonKey(name: 'Happiness') final  double happiness;
@override@JsonKey(name: 'FlightHoursInCompany') final  double flightHoursInCompany;
@override@JsonKey(name: 'FlightHoursGrandTotal') final  double flightHoursGrandTotal;
@override@JsonKey(name: 'PerFlightHourWages') final  double perFlightHourWages;
@override@JsonKey(name: 'WeeklyGarantedSalary') final  double weeklyGuaranteedSalary;
@override@JsonKey(name: 'Weight') final  double weight;
@override@JsonKey(name: 'IsOnline') final  bool isOnline;
@override@JsonKey(name: 'BusyUntil', fromJson: utcFromJsonNullable) final  DateTime? busyUntil;
@override@JsonKey(name: 'HomeAirport') final  Airport? homeAirport;
@override@JsonKey(name: 'CurrentAirport') final  Airport? currentAirport;
@override@JsonKey(name: 'CurrentAircraftId') final  String? currentAircraftId;

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeCopyWith<_Employee> get copyWith => __$EmployeeCopyWithImpl<_Employee>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Employee&&(identical(other.id, id) || other.id == id)&&(identical(other.pseudo, pseudo) || other.pseudo == pseudo)&&(identical(other.categoryCode, categoryCode) || other.categoryCode == categoryCode)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other._classCertifications, _classCertifications)&&(identical(other.fatigue, fatigue) || other.fatigue == fatigue)&&(identical(other.punctuality, punctuality) || other.punctuality == punctuality)&&(identical(other.comfort, comfort) || other.comfort == comfort)&&(identical(other.happiness, happiness) || other.happiness == happiness)&&(identical(other.flightHoursInCompany, flightHoursInCompany) || other.flightHoursInCompany == flightHoursInCompany)&&(identical(other.flightHoursGrandTotal, flightHoursGrandTotal) || other.flightHoursGrandTotal == flightHoursGrandTotal)&&(identical(other.perFlightHourWages, perFlightHourWages) || other.perFlightHourWages == perFlightHourWages)&&(identical(other.weeklyGuaranteedSalary, weeklyGuaranteedSalary) || other.weeklyGuaranteedSalary == weeklyGuaranteedSalary)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.busyUntil, busyUntil) || other.busyUntil == busyUntil)&&(identical(other.homeAirport, homeAirport) || other.homeAirport == homeAirport)&&(identical(other.currentAirport, currentAirport) || other.currentAirport == currentAirport)&&(identical(other.currentAircraftId, currentAircraftId) || other.currentAircraftId == currentAircraftId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,pseudo,categoryCode,statusCode,const DeepCollectionEquality().hash(_classCertifications),fatigue,punctuality,comfort,happiness,flightHoursInCompany,flightHoursGrandTotal,perFlightHourWages,weeklyGuaranteedSalary,weight,isOnline,busyUntil,homeAirport,currentAirport,currentAircraftId]);

@override
String toString() {
  return 'Employee(id: $id, pseudo: $pseudo, categoryCode: $categoryCode, statusCode: $statusCode, classCertifications: $classCertifications, fatigue: $fatigue, punctuality: $punctuality, comfort: $comfort, happiness: $happiness, flightHoursInCompany: $flightHoursInCompany, flightHoursGrandTotal: $flightHoursGrandTotal, perFlightHourWages: $perFlightHourWages, weeklyGuaranteedSalary: $weeklyGuaranteedSalary, weight: $weight, isOnline: $isOnline, busyUntil: $busyUntil, homeAirport: $homeAirport, currentAirport: $currentAirport, currentAircraftId: $currentAircraftId)';
}


}

/// @nodoc
abstract mixin class _$EmployeeCopyWith<$Res> implements $EmployeeCopyWith<$Res> {
  factory _$EmployeeCopyWith(_Employee value, $Res Function(_Employee) _then) = __$EmployeeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Pseudo') String pseudo,@JsonKey(name: 'Category') int categoryCode,@JsonKey(name: 'Status') int statusCode,@JsonKey(name: 'ClassCertifications') List<ClassCertification> classCertifications,@JsonKey(name: 'Fatigue') double fatigue,@JsonKey(name: 'Punctuality') double punctuality,@JsonKey(name: 'Comfort') double comfort,@JsonKey(name: 'Happiness') double happiness,@JsonKey(name: 'FlightHoursInCompany') double flightHoursInCompany,@JsonKey(name: 'FlightHoursGrandTotal') double flightHoursGrandTotal,@JsonKey(name: 'PerFlightHourWages') double perFlightHourWages,@JsonKey(name: 'WeeklyGarantedSalary') double weeklyGuaranteedSalary,@JsonKey(name: 'Weight') double weight,@JsonKey(name: 'IsOnline') bool isOnline,@JsonKey(name: 'BusyUntil', fromJson: utcFromJsonNullable) DateTime? busyUntil,@JsonKey(name: 'HomeAirport') Airport? homeAirport,@JsonKey(name: 'CurrentAirport') Airport? currentAirport,@JsonKey(name: 'CurrentAircraftId') String? currentAircraftId
});


@override $AirportCopyWith<$Res>? get homeAirport;@override $AirportCopyWith<$Res>? get currentAirport;

}
/// @nodoc
class __$EmployeeCopyWithImpl<$Res>
    implements _$EmployeeCopyWith<$Res> {
  __$EmployeeCopyWithImpl(this._self, this._then);

  final _Employee _self;
  final $Res Function(_Employee) _then;

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? pseudo = null,Object? categoryCode = null,Object? statusCode = null,Object? classCertifications = null,Object? fatigue = null,Object? punctuality = null,Object? comfort = null,Object? happiness = null,Object? flightHoursInCompany = null,Object? flightHoursGrandTotal = null,Object? perFlightHourWages = null,Object? weeklyGuaranteedSalary = null,Object? weight = null,Object? isOnline = null,Object? busyUntil = freezed,Object? homeAirport = freezed,Object? currentAirport = freezed,Object? currentAircraftId = freezed,}) {
  return _then(_Employee(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pseudo: null == pseudo ? _self.pseudo : pseudo // ignore: cast_nullable_to_non_nullable
as String,categoryCode: null == categoryCode ? _self.categoryCode : categoryCode // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,classCertifications: null == classCertifications ? _self._classCertifications : classCertifications // ignore: cast_nullable_to_non_nullable
as List<ClassCertification>,fatigue: null == fatigue ? _self.fatigue : fatigue // ignore: cast_nullable_to_non_nullable
as double,punctuality: null == punctuality ? _self.punctuality : punctuality // ignore: cast_nullable_to_non_nullable
as double,comfort: null == comfort ? _self.comfort : comfort // ignore: cast_nullable_to_non_nullable
as double,happiness: null == happiness ? _self.happiness : happiness // ignore: cast_nullable_to_non_nullable
as double,flightHoursInCompany: null == flightHoursInCompany ? _self.flightHoursInCompany : flightHoursInCompany // ignore: cast_nullable_to_non_nullable
as double,flightHoursGrandTotal: null == flightHoursGrandTotal ? _self.flightHoursGrandTotal : flightHoursGrandTotal // ignore: cast_nullable_to_non_nullable
as double,perFlightHourWages: null == perFlightHourWages ? _self.perFlightHourWages : perFlightHourWages // ignore: cast_nullable_to_non_nullable
as double,weeklyGuaranteedSalary: null == weeklyGuaranteedSalary ? _self.weeklyGuaranteedSalary : weeklyGuaranteedSalary // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,busyUntil: freezed == busyUntil ? _self.busyUntil : busyUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,homeAirport: freezed == homeAirport ? _self.homeAirport : homeAirport // ignore: cast_nullable_to_non_nullable
as Airport?,currentAirport: freezed == currentAirport ? _self.currentAirport : currentAirport // ignore: cast_nullable_to_non_nullable
as Airport?,currentAircraftId: freezed == currentAircraftId ? _self.currentAircraftId : currentAircraftId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res>? get homeAirport {
    if (_self.homeAirport == null) {
    return null;
  }

  return $AirportCopyWith<$Res>(_self.homeAirport!, (value) {
    return _then(_self.copyWith(homeAirport: value));
  });
}/// Create a copy of Employee
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
