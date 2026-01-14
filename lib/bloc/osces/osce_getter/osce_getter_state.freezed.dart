// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'osce_getter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OsceGetterState {

 PagingState<int, SimpleOsce> get pagingState; bool? get hasOsce;
/// Create a copy of OsceGetterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OsceGetterStateCopyWith<OsceGetterState> get copyWith => _$OsceGetterStateCopyWithImpl<OsceGetterState>(this as OsceGetterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OsceGetterState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&(identical(other.hasOsce, hasOsce) || other.hasOsce == hasOsce));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState,hasOsce);

@override
String toString() {
  return 'OsceGetterState(pagingState: $pagingState, hasOsce: $hasOsce)';
}


}

/// @nodoc
abstract mixin class $OsceGetterStateCopyWith<$Res>  {
  factory $OsceGetterStateCopyWith(OsceGetterState value, $Res Function(OsceGetterState) _then) = _$OsceGetterStateCopyWithImpl;
@useResult
$Res call({
 PagingState<int, SimpleOsce> pagingState, bool? hasOsce
});




}
/// @nodoc
class _$OsceGetterStateCopyWithImpl<$Res>
    implements $OsceGetterStateCopyWith<$Res> {
  _$OsceGetterStateCopyWithImpl(this._self, this._then);

  final OsceGetterState _self;
  final $Res Function(OsceGetterState) _then;

/// Create a copy of OsceGetterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagingState = null,Object? hasOsce = freezed,}) {
  return _then(_self.copyWith(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, SimpleOsce>,hasOsce: freezed == hasOsce ? _self.hasOsce : hasOsce // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [OsceGetterState].
extension OsceGetterStatePatterns on OsceGetterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OsceGetterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OsceGetterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OsceGetterState value)  $default,){
final _that = this;
switch (_that) {
case _OsceGetterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OsceGetterState value)?  $default,){
final _that = this;
switch (_that) {
case _OsceGetterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PagingState<int, SimpleOsce> pagingState,  bool? hasOsce)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OsceGetterState() when $default != null:
return $default(_that.pagingState,_that.hasOsce);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PagingState<int, SimpleOsce> pagingState,  bool? hasOsce)  $default,) {final _that = this;
switch (_that) {
case _OsceGetterState():
return $default(_that.pagingState,_that.hasOsce);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PagingState<int, SimpleOsce> pagingState,  bool? hasOsce)?  $default,) {final _that = this;
switch (_that) {
case _OsceGetterState() when $default != null:
return $default(_that.pagingState,_that.hasOsce);case _:
  return null;

}
}

}

/// @nodoc


class _OsceGetterState implements OsceGetterState {
  const _OsceGetterState({required this.pagingState, this.hasOsce = null});
  

@override final  PagingState<int, SimpleOsce> pagingState;
@override@JsonKey() final  bool? hasOsce;

/// Create a copy of OsceGetterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OsceGetterStateCopyWith<_OsceGetterState> get copyWith => __$OsceGetterStateCopyWithImpl<_OsceGetterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OsceGetterState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&(identical(other.hasOsce, hasOsce) || other.hasOsce == hasOsce));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState,hasOsce);

@override
String toString() {
  return 'OsceGetterState(pagingState: $pagingState, hasOsce: $hasOsce)';
}


}

/// @nodoc
abstract mixin class _$OsceGetterStateCopyWith<$Res> implements $OsceGetterStateCopyWith<$Res> {
  factory _$OsceGetterStateCopyWith(_OsceGetterState value, $Res Function(_OsceGetterState) _then) = __$OsceGetterStateCopyWithImpl;
@override @useResult
$Res call({
 PagingState<int, SimpleOsce> pagingState, bool? hasOsce
});




}
/// @nodoc
class __$OsceGetterStateCopyWithImpl<$Res>
    implements _$OsceGetterStateCopyWith<$Res> {
  __$OsceGetterStateCopyWithImpl(this._self, this._then);

  final _OsceGetterState _self;
  final $Res Function(_OsceGetterState) _then;

/// Create a copy of OsceGetterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagingState = null,Object? hasOsce = freezed,}) {
  return _then(_OsceGetterState(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, SimpleOsce>,hasOsce: freezed == hasOsce ? _self.hasOsce : hasOsce // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
