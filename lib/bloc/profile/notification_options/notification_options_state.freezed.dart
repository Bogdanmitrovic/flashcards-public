// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_options_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationOptionsState {

 OptionsStatus get status; NotificationFrequency get frequency; Exception? get error;
/// Create a copy of NotificationOptionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationOptionsStateCopyWith<NotificationOptionsState> get copyWith => _$NotificationOptionsStateCopyWithImpl<NotificationOptionsState>(this as NotificationOptionsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationOptionsState&&(identical(other.status, status) || other.status == status)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,frequency,error);

@override
String toString() {
  return 'NotificationOptionsState(status: $status, frequency: $frequency, error: $error)';
}


}

/// @nodoc
abstract mixin class $NotificationOptionsStateCopyWith<$Res>  {
  factory $NotificationOptionsStateCopyWith(NotificationOptionsState value, $Res Function(NotificationOptionsState) _then) = _$NotificationOptionsStateCopyWithImpl;
@useResult
$Res call({
 OptionsStatus status, NotificationFrequency frequency, Exception? error
});




}
/// @nodoc
class _$NotificationOptionsStateCopyWithImpl<$Res>
    implements $NotificationOptionsStateCopyWith<$Res> {
  _$NotificationOptionsStateCopyWithImpl(this._self, this._then);

  final NotificationOptionsState _self;
  final $Res Function(NotificationOptionsState) _then;

/// Create a copy of NotificationOptionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? frequency = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OptionsStatus,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as NotificationFrequency,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationOptionsState].
extension NotificationOptionsStatePatterns on NotificationOptionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationOptionsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationOptionsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationOptionsState value)  $default,){
final _that = this;
switch (_that) {
case _NotificationOptionsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationOptionsState value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationOptionsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OptionsStatus status,  NotificationFrequency frequency,  Exception? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationOptionsState() when $default != null:
return $default(_that.status,_that.frequency,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OptionsStatus status,  NotificationFrequency frequency,  Exception? error)  $default,) {final _that = this;
switch (_that) {
case _NotificationOptionsState():
return $default(_that.status,_that.frequency,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OptionsStatus status,  NotificationFrequency frequency,  Exception? error)?  $default,) {final _that = this;
switch (_that) {
case _NotificationOptionsState() when $default != null:
return $default(_that.status,_that.frequency,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationOptionsState implements NotificationOptionsState {
  const _NotificationOptionsState({this.status = OptionsStatus.loading, this.frequency = NotificationFrequency.none, this.error});
  

@override@JsonKey() final  OptionsStatus status;
@override@JsonKey() final  NotificationFrequency frequency;
@override final  Exception? error;

/// Create a copy of NotificationOptionsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationOptionsStateCopyWith<_NotificationOptionsState> get copyWith => __$NotificationOptionsStateCopyWithImpl<_NotificationOptionsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationOptionsState&&(identical(other.status, status) || other.status == status)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,frequency,error);

@override
String toString() {
  return 'NotificationOptionsState(status: $status, frequency: $frequency, error: $error)';
}


}

/// @nodoc
abstract mixin class _$NotificationOptionsStateCopyWith<$Res> implements $NotificationOptionsStateCopyWith<$Res> {
  factory _$NotificationOptionsStateCopyWith(_NotificationOptionsState value, $Res Function(_NotificationOptionsState) _then) = __$NotificationOptionsStateCopyWithImpl;
@override @useResult
$Res call({
 OptionsStatus status, NotificationFrequency frequency, Exception? error
});




}
/// @nodoc
class __$NotificationOptionsStateCopyWithImpl<$Res>
    implements _$NotificationOptionsStateCopyWith<$Res> {
  __$NotificationOptionsStateCopyWithImpl(this._self, this._then);

  final _NotificationOptionsState _self;
  final $Res Function(_NotificationOptionsState) _then;

/// Create a copy of NotificationOptionsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? frequency = null,Object? error = freezed,}) {
  return _then(_NotificationOptionsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OptionsStatus,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as NotificationFrequency,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
