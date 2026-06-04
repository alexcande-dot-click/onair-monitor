// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onair_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnairNotification {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'Category') int get category;@JsonKey(name: 'Description') String get description;@JsonKey(name: 'ZuluEventTime', fromJson: utcFromJson) DateTime get eventTime;@JsonKey(name: 'IsRead') bool get isRead;@JsonKey(name: 'AircraftId') String? get aircraftId;@JsonKey(name: 'PeopleId') String? get peopleId;@JsonKey(name: 'AirportId') String? get airportId;
/// Create a copy of OnairNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnairNotificationCopyWith<OnairNotification> get copyWith => _$OnairNotificationCopyWithImpl<OnairNotification>(this as OnairNotification, _$identity);

  /// Serializes this OnairNotification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnairNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&(identical(other.eventTime, eventTime) || other.eventTime == eventTime)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.aircraftId, aircraftId) || other.aircraftId == aircraftId)&&(identical(other.peopleId, peopleId) || other.peopleId == peopleId)&&(identical(other.airportId, airportId) || other.airportId == airportId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,description,eventTime,isRead,aircraftId,peopleId,airportId);

@override
String toString() {
  return 'OnairNotification(id: $id, category: $category, description: $description, eventTime: $eventTime, isRead: $isRead, aircraftId: $aircraftId, peopleId: $peopleId, airportId: $airportId)';
}


}

/// @nodoc
abstract mixin class $OnairNotificationCopyWith<$Res>  {
  factory $OnairNotificationCopyWith(OnairNotification value, $Res Function(OnairNotification) _then) = _$OnairNotificationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Category') int category,@JsonKey(name: 'Description') String description,@JsonKey(name: 'ZuluEventTime', fromJson: utcFromJson) DateTime eventTime,@JsonKey(name: 'IsRead') bool isRead,@JsonKey(name: 'AircraftId') String? aircraftId,@JsonKey(name: 'PeopleId') String? peopleId,@JsonKey(name: 'AirportId') String? airportId
});




}
/// @nodoc
class _$OnairNotificationCopyWithImpl<$Res>
    implements $OnairNotificationCopyWith<$Res> {
  _$OnairNotificationCopyWithImpl(this._self, this._then);

  final OnairNotification _self;
  final $Res Function(OnairNotification) _then;

/// Create a copy of OnairNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? category = null,Object? description = null,Object? eventTime = null,Object? isRead = null,Object? aircraftId = freezed,Object? peopleId = freezed,Object? airportId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,eventTime: null == eventTime ? _self.eventTime : eventTime // ignore: cast_nullable_to_non_nullable
as DateTime,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,aircraftId: freezed == aircraftId ? _self.aircraftId : aircraftId // ignore: cast_nullable_to_non_nullable
as String?,peopleId: freezed == peopleId ? _self.peopleId : peopleId // ignore: cast_nullable_to_non_nullable
as String?,airportId: freezed == airportId ? _self.airportId : airportId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OnairNotification].
extension OnairNotificationPatterns on OnairNotification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnairNotification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnairNotification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnairNotification value)  $default,){
final _that = this;
switch (_that) {
case _OnairNotification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnairNotification value)?  $default,){
final _that = this;
switch (_that) {
case _OnairNotification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Category')  int category, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'ZuluEventTime', fromJson: utcFromJson)  DateTime eventTime, @JsonKey(name: 'IsRead')  bool isRead, @JsonKey(name: 'AircraftId')  String? aircraftId, @JsonKey(name: 'PeopleId')  String? peopleId, @JsonKey(name: 'AirportId')  String? airportId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnairNotification() when $default != null:
return $default(_that.id,_that.category,_that.description,_that.eventTime,_that.isRead,_that.aircraftId,_that.peopleId,_that.airportId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Category')  int category, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'ZuluEventTime', fromJson: utcFromJson)  DateTime eventTime, @JsonKey(name: 'IsRead')  bool isRead, @JsonKey(name: 'AircraftId')  String? aircraftId, @JsonKey(name: 'PeopleId')  String? peopleId, @JsonKey(name: 'AirportId')  String? airportId)  $default,) {final _that = this;
switch (_that) {
case _OnairNotification():
return $default(_that.id,_that.category,_that.description,_that.eventTime,_that.isRead,_that.aircraftId,_that.peopleId,_that.airportId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Category')  int category, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'ZuluEventTime', fromJson: utcFromJson)  DateTime eventTime, @JsonKey(name: 'IsRead')  bool isRead, @JsonKey(name: 'AircraftId')  String? aircraftId, @JsonKey(name: 'PeopleId')  String? peopleId, @JsonKey(name: 'AirportId')  String? airportId)?  $default,) {final _that = this;
switch (_that) {
case _OnairNotification() when $default != null:
return $default(_that.id,_that.category,_that.description,_that.eventTime,_that.isRead,_that.aircraftId,_that.peopleId,_that.airportId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OnairNotification implements OnairNotification {
  const _OnairNotification({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Category') this.category = 0, @JsonKey(name: 'Description') this.description = '', @JsonKey(name: 'ZuluEventTime', fromJson: utcFromJson) required this.eventTime, @JsonKey(name: 'IsRead') this.isRead = false, @JsonKey(name: 'AircraftId') this.aircraftId, @JsonKey(name: 'PeopleId') this.peopleId, @JsonKey(name: 'AirportId') this.airportId});
  factory _OnairNotification.fromJson(Map<String, dynamic> json) => _$OnairNotificationFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'Category') final  int category;
@override@JsonKey(name: 'Description') final  String description;
@override@JsonKey(name: 'ZuluEventTime', fromJson: utcFromJson) final  DateTime eventTime;
@override@JsonKey(name: 'IsRead') final  bool isRead;
@override@JsonKey(name: 'AircraftId') final  String? aircraftId;
@override@JsonKey(name: 'PeopleId') final  String? peopleId;
@override@JsonKey(name: 'AirportId') final  String? airportId;

/// Create a copy of OnairNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnairNotificationCopyWith<_OnairNotification> get copyWith => __$OnairNotificationCopyWithImpl<_OnairNotification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnairNotificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnairNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&(identical(other.eventTime, eventTime) || other.eventTime == eventTime)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.aircraftId, aircraftId) || other.aircraftId == aircraftId)&&(identical(other.peopleId, peopleId) || other.peopleId == peopleId)&&(identical(other.airportId, airportId) || other.airportId == airportId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,description,eventTime,isRead,aircraftId,peopleId,airportId);

@override
String toString() {
  return 'OnairNotification(id: $id, category: $category, description: $description, eventTime: $eventTime, isRead: $isRead, aircraftId: $aircraftId, peopleId: $peopleId, airportId: $airportId)';
}


}

/// @nodoc
abstract mixin class _$OnairNotificationCopyWith<$Res> implements $OnairNotificationCopyWith<$Res> {
  factory _$OnairNotificationCopyWith(_OnairNotification value, $Res Function(_OnairNotification) _then) = __$OnairNotificationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Category') int category,@JsonKey(name: 'Description') String description,@JsonKey(name: 'ZuluEventTime', fromJson: utcFromJson) DateTime eventTime,@JsonKey(name: 'IsRead') bool isRead,@JsonKey(name: 'AircraftId') String? aircraftId,@JsonKey(name: 'PeopleId') String? peopleId,@JsonKey(name: 'AirportId') String? airportId
});




}
/// @nodoc
class __$OnairNotificationCopyWithImpl<$Res>
    implements _$OnairNotificationCopyWith<$Res> {
  __$OnairNotificationCopyWithImpl(this._self, this._then);

  final _OnairNotification _self;
  final $Res Function(_OnairNotification) _then;

/// Create a copy of OnairNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? category = null,Object? description = null,Object? eventTime = null,Object? isRead = null,Object? aircraftId = freezed,Object? peopleId = freezed,Object? airportId = freezed,}) {
  return _then(_OnairNotification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,eventTime: null == eventTime ? _self.eventTime : eventTime // ignore: cast_nullable_to_non_nullable
as DateTime,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,aircraftId: freezed == aircraftId ? _self.aircraftId : aircraftId // ignore: cast_nullable_to_non_nullable
as String?,peopleId: freezed == peopleId ? _self.peopleId : peopleId // ignore: cast_nullable_to_non_nullable
as String?,airportId: freezed == airportId ? _self.airportId : airportId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
