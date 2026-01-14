// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'started_packs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StartedPacksState {

 StartedPacksLoadedStatus get status; PagingState<int, PackProgress> get pagingState; Exception? get error;
/// Create a copy of StartedPacksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartedPacksStateCopyWith<StartedPacksState> get copyWith => _$StartedPacksStateCopyWithImpl<StartedPacksState>(this as StartedPacksState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartedPacksState&&(identical(other.status, status) || other.status == status)&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,pagingState,error);

@override
String toString() {
  return 'StartedPacksState(status: $status, pagingState: $pagingState, error: $error)';
}


}

/// @nodoc
abstract mixin class $StartedPacksStateCopyWith<$Res>  {
  factory $StartedPacksStateCopyWith(StartedPacksState value, $Res Function(StartedPacksState) _then) = _$StartedPacksStateCopyWithImpl;
@useResult
$Res call({
 StartedPacksLoadedStatus status, PagingState<int, PackProgress> pagingState, Exception? error
});




}
/// @nodoc
class _$StartedPacksStateCopyWithImpl<$Res>
    implements $StartedPacksStateCopyWith<$Res> {
  _$StartedPacksStateCopyWithImpl(this._self, this._then);

  final StartedPacksState _self;
  final $Res Function(StartedPacksState) _then;

/// Create a copy of StartedPacksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? pagingState = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StartedPacksLoadedStatus,pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, PackProgress>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}

}


/// Adds pattern-matching-related methods to [StartedPacksState].
extension StartedPacksStatePatterns on StartedPacksState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StartedPacksState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartedPacksState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StartedPacksState value)  $default,){
final _that = this;
switch (_that) {
case _StartedPacksState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StartedPacksState value)?  $default,){
final _that = this;
switch (_that) {
case _StartedPacksState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StartedPacksLoadedStatus status,  PagingState<int, PackProgress> pagingState,  Exception? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartedPacksState() when $default != null:
return $default(_that.status,_that.pagingState,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StartedPacksLoadedStatus status,  PagingState<int, PackProgress> pagingState,  Exception? error)  $default,) {final _that = this;
switch (_that) {
case _StartedPacksState():
return $default(_that.status,_that.pagingState,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StartedPacksLoadedStatus status,  PagingState<int, PackProgress> pagingState,  Exception? error)?  $default,) {final _that = this;
switch (_that) {
case _StartedPacksState() when $default != null:
return $default(_that.status,_that.pagingState,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _StartedPacksState implements StartedPacksState {
  const _StartedPacksState({this.status = StartedPacksLoadedStatus.initial, required this.pagingState, this.error});
  

@override@JsonKey() final  StartedPacksLoadedStatus status;
@override final  PagingState<int, PackProgress> pagingState;
@override final  Exception? error;

/// Create a copy of StartedPacksState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedPacksStateCopyWith<_StartedPacksState> get copyWith => __$StartedPacksStateCopyWithImpl<_StartedPacksState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartedPacksState&&(identical(other.status, status) || other.status == status)&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,pagingState,error);

@override
String toString() {
  return 'StartedPacksState(status: $status, pagingState: $pagingState, error: $error)';
}


}

/// @nodoc
abstract mixin class _$StartedPacksStateCopyWith<$Res> implements $StartedPacksStateCopyWith<$Res> {
  factory _$StartedPacksStateCopyWith(_StartedPacksState value, $Res Function(_StartedPacksState) _then) = __$StartedPacksStateCopyWithImpl;
@override @useResult
$Res call({
 StartedPacksLoadedStatus status, PagingState<int, PackProgress> pagingState, Exception? error
});




}
/// @nodoc
class __$StartedPacksStateCopyWithImpl<$Res>
    implements _$StartedPacksStateCopyWith<$Res> {
  __$StartedPacksStateCopyWithImpl(this._self, this._then);

  final _StartedPacksState _self;
  final $Res Function(_StartedPacksState) _then;

/// Create a copy of StartedPacksState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? pagingState = null,Object? error = freezed,}) {
  return _then(_StartedPacksState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StartedPacksLoadedStatus,pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, PackProgress>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
