// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'osce_attempts_getter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OsceAttemptsGetterState {

 String get osceId; PagingState<int, OsceAttempt> get pagingState;
/// Create a copy of OsceAttemptsGetterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OsceAttemptsGetterStateCopyWith<OsceAttemptsGetterState> get copyWith => _$OsceAttemptsGetterStateCopyWithImpl<OsceAttemptsGetterState>(this as OsceAttemptsGetterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OsceAttemptsGetterState&&(identical(other.osceId, osceId) || other.osceId == osceId)&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState));
}


@override
int get hashCode => Object.hash(runtimeType,osceId,pagingState);

@override
String toString() {
  return 'OsceAttemptsGetterState(osceId: $osceId, pagingState: $pagingState)';
}


}

/// @nodoc
abstract mixin class $OsceAttemptsGetterStateCopyWith<$Res>  {
  factory $OsceAttemptsGetterStateCopyWith(OsceAttemptsGetterState value, $Res Function(OsceAttemptsGetterState) _then) = _$OsceAttemptsGetterStateCopyWithImpl;
@useResult
$Res call({
 String osceId, PagingState<int, OsceAttempt> pagingState
});




}
/// @nodoc
class _$OsceAttemptsGetterStateCopyWithImpl<$Res>
    implements $OsceAttemptsGetterStateCopyWith<$Res> {
  _$OsceAttemptsGetterStateCopyWithImpl(this._self, this._then);

  final OsceAttemptsGetterState _self;
  final $Res Function(OsceAttemptsGetterState) _then;

/// Create a copy of OsceAttemptsGetterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? osceId = null,Object? pagingState = null,}) {
  return _then(_self.copyWith(
osceId: null == osceId ? _self.osceId : osceId // ignore: cast_nullable_to_non_nullable
as String,pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, OsceAttempt>,
  ));
}

}


/// Adds pattern-matching-related methods to [OsceAttemptsGetterState].
extension OsceAttemptsGetterStatePatterns on OsceAttemptsGetterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OsceAttemptsGetterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OsceAttemptsGetterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OsceAttemptsGetterState value)  $default,){
final _that = this;
switch (_that) {
case _OsceAttemptsGetterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OsceAttemptsGetterState value)?  $default,){
final _that = this;
switch (_that) {
case _OsceAttemptsGetterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String osceId,  PagingState<int, OsceAttempt> pagingState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OsceAttemptsGetterState() when $default != null:
return $default(_that.osceId,_that.pagingState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String osceId,  PagingState<int, OsceAttempt> pagingState)  $default,) {final _that = this;
switch (_that) {
case _OsceAttemptsGetterState():
return $default(_that.osceId,_that.pagingState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String osceId,  PagingState<int, OsceAttempt> pagingState)?  $default,) {final _that = this;
switch (_that) {
case _OsceAttemptsGetterState() when $default != null:
return $default(_that.osceId,_that.pagingState);case _:
  return null;

}
}

}

/// @nodoc


class _OsceAttemptsGetterState implements OsceAttemptsGetterState {
  const _OsceAttemptsGetterState({required this.osceId, required this.pagingState});
  

@override final  String osceId;
@override final  PagingState<int, OsceAttempt> pagingState;

/// Create a copy of OsceAttemptsGetterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OsceAttemptsGetterStateCopyWith<_OsceAttemptsGetterState> get copyWith => __$OsceAttemptsGetterStateCopyWithImpl<_OsceAttemptsGetterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OsceAttemptsGetterState&&(identical(other.osceId, osceId) || other.osceId == osceId)&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState));
}


@override
int get hashCode => Object.hash(runtimeType,osceId,pagingState);

@override
String toString() {
  return 'OsceAttemptsGetterState(osceId: $osceId, pagingState: $pagingState)';
}


}

/// @nodoc
abstract mixin class _$OsceAttemptsGetterStateCopyWith<$Res> implements $OsceAttemptsGetterStateCopyWith<$Res> {
  factory _$OsceAttemptsGetterStateCopyWith(_OsceAttemptsGetterState value, $Res Function(_OsceAttemptsGetterState) _then) = __$OsceAttemptsGetterStateCopyWithImpl;
@override @useResult
$Res call({
 String osceId, PagingState<int, OsceAttempt> pagingState
});




}
/// @nodoc
class __$OsceAttemptsGetterStateCopyWithImpl<$Res>
    implements _$OsceAttemptsGetterStateCopyWith<$Res> {
  __$OsceAttemptsGetterStateCopyWithImpl(this._self, this._then);

  final _OsceAttemptsGetterState _self;
  final $Res Function(_OsceAttemptsGetterState) _then;

/// Create a copy of OsceAttemptsGetterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? osceId = null,Object? pagingState = null,}) {
  return _then(_OsceAttemptsGetterState(
osceId: null == osceId ? _self.osceId : osceId // ignore: cast_nullable_to_non_nullable
as String,pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, OsceAttempt>,
  ));
}


}

// dart format on
