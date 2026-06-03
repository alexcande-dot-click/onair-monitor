// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkOrderAction {

@JsonKey(name: 'Name') String? get name;
/// Create a copy of WorkOrderAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkOrderActionCopyWith<WorkOrderAction> get copyWith => _$WorkOrderActionCopyWithImpl<WorkOrderAction>(this as WorkOrderAction, _$identity);

  /// Serializes this WorkOrderAction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkOrderAction&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'WorkOrderAction(name: $name)';
}


}

/// @nodoc
abstract mixin class $WorkOrderActionCopyWith<$Res>  {
  factory $WorkOrderActionCopyWith(WorkOrderAction value, $Res Function(WorkOrderAction) _then) = _$WorkOrderActionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Name') String? name
});




}
/// @nodoc
class _$WorkOrderActionCopyWithImpl<$Res>
    implements $WorkOrderActionCopyWith<$Res> {
  _$WorkOrderActionCopyWithImpl(this._self, this._then);

  final WorkOrderAction _self;
  final $Res Function(WorkOrderAction) _then;

/// Create a copy of WorkOrderAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkOrderAction].
extension WorkOrderActionPatterns on WorkOrderAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkOrderAction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkOrderAction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkOrderAction value)  $default,){
final _that = this;
switch (_that) {
case _WorkOrderAction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkOrderAction value)?  $default,){
final _that = this;
switch (_that) {
case _WorkOrderAction() when $default != null:
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
case _WorkOrderAction() when $default != null:
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
case _WorkOrderAction():
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
case _WorkOrderAction() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkOrderAction implements WorkOrderAction {
  const _WorkOrderAction({@JsonKey(name: 'Name') this.name});
  factory _WorkOrderAction.fromJson(Map<String, dynamic> json) => _$WorkOrderActionFromJson(json);

@override@JsonKey(name: 'Name') final  String? name;

/// Create a copy of WorkOrderAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkOrderActionCopyWith<_WorkOrderAction> get copyWith => __$WorkOrderActionCopyWithImpl<_WorkOrderAction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkOrderActionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkOrderAction&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'WorkOrderAction(name: $name)';
}


}

/// @nodoc
abstract mixin class _$WorkOrderActionCopyWith<$Res> implements $WorkOrderActionCopyWith<$Res> {
  factory _$WorkOrderActionCopyWith(_WorkOrderAction value, $Res Function(_WorkOrderAction) _then) = __$WorkOrderActionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Name') String? name
});




}
/// @nodoc
class __$WorkOrderActionCopyWithImpl<$Res>
    implements _$WorkOrderActionCopyWith<$Res> {
  __$WorkOrderActionCopyWithImpl(this._self, this._then);

  final _WorkOrderAction _self;
  final $Res Function(_WorkOrderAction) _then;

/// Create a copy of WorkOrderAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_WorkOrderAction(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WorkOrder {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'AircraftId') String? get aircraftId;@JsonKey(name: 'Name') String get name;@JsonKey(name: 'StartDate') DateTime? get startDate;@JsonKey(name: 'Status') int get statusCode;@JsonKey(name: 'IsTicking') bool get isTicking;@JsonKey(name: 'DepartureAirportId') String? get departureAirportId;@JsonKey(name: 'Actions') List<WorkOrderAction> get actions;@JsonKey(name: 'Crews') List<Object?> get crews;
/// Create a copy of WorkOrder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkOrderCopyWith<WorkOrder> get copyWith => _$WorkOrderCopyWithImpl<WorkOrder>(this as WorkOrder, _$identity);

  /// Serializes this WorkOrder to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.aircraftId, aircraftId) || other.aircraftId == aircraftId)&&(identical(other.name, name) || other.name == name)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.isTicking, isTicking) || other.isTicking == isTicking)&&(identical(other.departureAirportId, departureAirportId) || other.departureAirportId == departureAirportId)&&const DeepCollectionEquality().equals(other.actions, actions)&&const DeepCollectionEquality().equals(other.crews, crews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,aircraftId,name,startDate,statusCode,isTicking,departureAirportId,const DeepCollectionEquality().hash(actions),const DeepCollectionEquality().hash(crews));

@override
String toString() {
  return 'WorkOrder(id: $id, aircraftId: $aircraftId, name: $name, startDate: $startDate, statusCode: $statusCode, isTicking: $isTicking, departureAirportId: $departureAirportId, actions: $actions, crews: $crews)';
}


}

/// @nodoc
abstract mixin class $WorkOrderCopyWith<$Res>  {
  factory $WorkOrderCopyWith(WorkOrder value, $Res Function(WorkOrder) _then) = _$WorkOrderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'AircraftId') String? aircraftId,@JsonKey(name: 'Name') String name,@JsonKey(name: 'StartDate') DateTime? startDate,@JsonKey(name: 'Status') int statusCode,@JsonKey(name: 'IsTicking') bool isTicking,@JsonKey(name: 'DepartureAirportId') String? departureAirportId,@JsonKey(name: 'Actions') List<WorkOrderAction> actions,@JsonKey(name: 'Crews') List<Object?> crews
});




}
/// @nodoc
class _$WorkOrderCopyWithImpl<$Res>
    implements $WorkOrderCopyWith<$Res> {
  _$WorkOrderCopyWithImpl(this._self, this._then);

  final WorkOrder _self;
  final $Res Function(WorkOrder) _then;

/// Create a copy of WorkOrder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? aircraftId = freezed,Object? name = null,Object? startDate = freezed,Object? statusCode = null,Object? isTicking = null,Object? departureAirportId = freezed,Object? actions = null,Object? crews = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,aircraftId: freezed == aircraftId ? _self.aircraftId : aircraftId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,isTicking: null == isTicking ? _self.isTicking : isTicking // ignore: cast_nullable_to_non_nullable
as bool,departureAirportId: freezed == departureAirportId ? _self.departureAirportId : departureAirportId // ignore: cast_nullable_to_non_nullable
as String?,actions: null == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<WorkOrderAction>,crews: null == crews ? _self.crews : crews // ignore: cast_nullable_to_non_nullable
as List<Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkOrder].
extension WorkOrderPatterns on WorkOrder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkOrder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkOrder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkOrder value)  $default,){
final _that = this;
switch (_that) {
case _WorkOrder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkOrder value)?  $default,){
final _that = this;
switch (_that) {
case _WorkOrder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'AircraftId')  String? aircraftId, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'StartDate')  DateTime? startDate, @JsonKey(name: 'Status')  int statusCode, @JsonKey(name: 'IsTicking')  bool isTicking, @JsonKey(name: 'DepartureAirportId')  String? departureAirportId, @JsonKey(name: 'Actions')  List<WorkOrderAction> actions, @JsonKey(name: 'Crews')  List<Object?> crews)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkOrder() when $default != null:
return $default(_that.id,_that.aircraftId,_that.name,_that.startDate,_that.statusCode,_that.isTicking,_that.departureAirportId,_that.actions,_that.crews);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'AircraftId')  String? aircraftId, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'StartDate')  DateTime? startDate, @JsonKey(name: 'Status')  int statusCode, @JsonKey(name: 'IsTicking')  bool isTicking, @JsonKey(name: 'DepartureAirportId')  String? departureAirportId, @JsonKey(name: 'Actions')  List<WorkOrderAction> actions, @JsonKey(name: 'Crews')  List<Object?> crews)  $default,) {final _that = this;
switch (_that) {
case _WorkOrder():
return $default(_that.id,_that.aircraftId,_that.name,_that.startDate,_that.statusCode,_that.isTicking,_that.departureAirportId,_that.actions,_that.crews);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'AircraftId')  String? aircraftId, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'StartDate')  DateTime? startDate, @JsonKey(name: 'Status')  int statusCode, @JsonKey(name: 'IsTicking')  bool isTicking, @JsonKey(name: 'DepartureAirportId')  String? departureAirportId, @JsonKey(name: 'Actions')  List<WorkOrderAction> actions, @JsonKey(name: 'Crews')  List<Object?> crews)?  $default,) {final _that = this;
switch (_that) {
case _WorkOrder() when $default != null:
return $default(_that.id,_that.aircraftId,_that.name,_that.startDate,_that.statusCode,_that.isTicking,_that.departureAirportId,_that.actions,_that.crews);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkOrder extends WorkOrder {
  const _WorkOrder({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'AircraftId') this.aircraftId, @JsonKey(name: 'Name') this.name = '', @JsonKey(name: 'StartDate') this.startDate, @JsonKey(name: 'Status') this.statusCode = 0, @JsonKey(name: 'IsTicking') this.isTicking = false, @JsonKey(name: 'DepartureAirportId') this.departureAirportId, @JsonKey(name: 'Actions') final  List<WorkOrderAction> actions = const [], @JsonKey(name: 'Crews') final  List<Object?> crews = const []}): _actions = actions,_crews = crews,super._();
  factory _WorkOrder.fromJson(Map<String, dynamic> json) => _$WorkOrderFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'AircraftId') final  String? aircraftId;
@override@JsonKey(name: 'Name') final  String name;
@override@JsonKey(name: 'StartDate') final  DateTime? startDate;
@override@JsonKey(name: 'Status') final  int statusCode;
@override@JsonKey(name: 'IsTicking') final  bool isTicking;
@override@JsonKey(name: 'DepartureAirportId') final  String? departureAirportId;
 final  List<WorkOrderAction> _actions;
@override@JsonKey(name: 'Actions') List<WorkOrderAction> get actions {
  if (_actions is EqualUnmodifiableListView) return _actions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_actions);
}

 final  List<Object?> _crews;
@override@JsonKey(name: 'Crews') List<Object?> get crews {
  if (_crews is EqualUnmodifiableListView) return _crews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_crews);
}


/// Create a copy of WorkOrder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkOrderCopyWith<_WorkOrder> get copyWith => __$WorkOrderCopyWithImpl<_WorkOrder>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkOrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.aircraftId, aircraftId) || other.aircraftId == aircraftId)&&(identical(other.name, name) || other.name == name)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.isTicking, isTicking) || other.isTicking == isTicking)&&(identical(other.departureAirportId, departureAirportId) || other.departureAirportId == departureAirportId)&&const DeepCollectionEquality().equals(other._actions, _actions)&&const DeepCollectionEquality().equals(other._crews, _crews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,aircraftId,name,startDate,statusCode,isTicking,departureAirportId,const DeepCollectionEquality().hash(_actions),const DeepCollectionEquality().hash(_crews));

@override
String toString() {
  return 'WorkOrder(id: $id, aircraftId: $aircraftId, name: $name, startDate: $startDate, statusCode: $statusCode, isTicking: $isTicking, departureAirportId: $departureAirportId, actions: $actions, crews: $crews)';
}


}

/// @nodoc
abstract mixin class _$WorkOrderCopyWith<$Res> implements $WorkOrderCopyWith<$Res> {
  factory _$WorkOrderCopyWith(_WorkOrder value, $Res Function(_WorkOrder) _then) = __$WorkOrderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'AircraftId') String? aircraftId,@JsonKey(name: 'Name') String name,@JsonKey(name: 'StartDate') DateTime? startDate,@JsonKey(name: 'Status') int statusCode,@JsonKey(name: 'IsTicking') bool isTicking,@JsonKey(name: 'DepartureAirportId') String? departureAirportId,@JsonKey(name: 'Actions') List<WorkOrderAction> actions,@JsonKey(name: 'Crews') List<Object?> crews
});




}
/// @nodoc
class __$WorkOrderCopyWithImpl<$Res>
    implements _$WorkOrderCopyWith<$Res> {
  __$WorkOrderCopyWithImpl(this._self, this._then);

  final _WorkOrder _self;
  final $Res Function(_WorkOrder) _then;

/// Create a copy of WorkOrder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? aircraftId = freezed,Object? name = null,Object? startDate = freezed,Object? statusCode = null,Object? isTicking = null,Object? departureAirportId = freezed,Object? actions = null,Object? crews = null,}) {
  return _then(_WorkOrder(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,aircraftId: freezed == aircraftId ? _self.aircraftId : aircraftId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,isTicking: null == isTicking ? _self.isTicking : isTicking // ignore: cast_nullable_to_non_nullable
as bool,departureAirportId: freezed == departureAirportId ? _self.departureAirportId : departureAirportId // ignore: cast_nullable_to_non_nullable
as String?,actions: null == actions ? _self._actions : actions // ignore: cast_nullable_to_non_nullable
as List<WorkOrderAction>,crews: null == crews ? _self._crews : crews // ignore: cast_nullable_to_non_nullable
as List<Object?>,
  ));
}


}

// dart format on
