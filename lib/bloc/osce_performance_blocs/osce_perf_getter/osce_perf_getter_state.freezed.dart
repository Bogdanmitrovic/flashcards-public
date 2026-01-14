// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'osce_perf_getter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OscePerfGetterState {

 PagingState<int, OscePerformance> get pagingState;
/// Create a copy of OscePerfGetterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OscePerfGetterStateCopyWith<OscePerfGetterState> get copyWith => _$OscePerfGetterStateCopyWithImpl<OscePerfGetterState>(this as OscePerfGetterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OscePerfGetterState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState);

@override
String toString() {
  return 'OscePerfGetterState(pagingState: $pagingState)';
}


}

/// @nodoc
abstract mixin class $OscePerfGetterStateCopyWith<$Res>  {
  factory $OscePerfGetterStateCopyWith(OscePerfGetterState value, $Res Function(OscePerfGetterState) _then) = _$OscePerfGetterStateCopyWithImpl;
@useResult
$Res call({
 PagingState<int, OscePerformance> pagingState
});




}
/// @nodoc
class _$OscePerfGetterStateCopyWithImpl<$Res>
    implements $OscePerfGetterStateCopyWith<$Res> {
  _$OscePerfGetterStateCopyWithImpl(this._self, this._then);

  final OscePerfGetterState _self;
  final $Res Function(OscePerfGetterState) _then;

/// Create a copy of OscePerfGetterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagingState = null,}) {
  return _then(_self.copyWith(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, OscePerformance>,
  ));
}

}


/// Adds pattern-matching-related methods to [OscePerfGetterState].
extension OscePerfGetterStatePatterns on OscePerfGetterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OscePerfGetterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OscePerfGetterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OscePerfGetterState value)  $default,){
final _that = this;
switch (_that) {
case _OscePerfGetterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OscePerfGetterState value)?  $default,){
final _that = this;
switch (_that) {
case _OscePerfGetterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PagingState<int, OscePerformance> pagingState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OscePerfGetterState() when $default != null:
return $default(_that.pagingState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PagingState<int, OscePerformance> pagingState)  $default,) {final _that = this;
switch (_that) {
case _OscePerfGetterState():
return $default(_that.pagingState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PagingState<int, OscePerformance> pagingState)?  $default,) {final _that = this;
switch (_that) {
case _OscePerfGetterState() when $default != null:
return $default(_that.pagingState);case _:
  return null;

}
}

}

/// @nodoc


class _OscePerfGetterState implements OscePerfGetterState {
  const _OscePerfGetterState({required this.pagingState});
  

@override final  PagingState<int, OscePerformance> pagingState;

/// Create a copy of OscePerfGetterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OscePerfGetterStateCopyWith<_OscePerfGetterState> get copyWith => __$OscePerfGetterStateCopyWithImpl<_OscePerfGetterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OscePerfGetterState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState);

@override
String toString() {
  return 'OscePerfGetterState(pagingState: $pagingState)';
}


}

/// @nodoc
abstract mixin class _$OscePerfGetterStateCopyWith<$Res> implements $OscePerfGetterStateCopyWith<$Res> {
  factory _$OscePerfGetterStateCopyWith(_OscePerfGetterState value, $Res Function(_OscePerfGetterState) _then) = __$OscePerfGetterStateCopyWithImpl;
@override @useResult
$Res call({
 PagingState<int, OscePerformance> pagingState
});




}
/// @nodoc
class __$OscePerfGetterStateCopyWithImpl<$Res>
    implements _$OscePerfGetterStateCopyWith<$Res> {
  __$OscePerfGetterStateCopyWithImpl(this._self, this._then);

  final _OscePerfGetterState _self;
  final $Res Function(_OscePerfGetterState) _then;

/// Create a copy of OscePerfGetterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagingState = null,}) {
  return _then(_OscePerfGetterState(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, OscePerformance>,
  ));
}


}

// dart format on
