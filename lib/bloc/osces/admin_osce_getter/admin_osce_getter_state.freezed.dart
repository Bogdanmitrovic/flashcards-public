// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_osce_getter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdminOsceGetterState {

 PagingState<int, SimpleOsce> get pagingState;
/// Create a copy of AdminOsceGetterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminOsceGetterStateCopyWith<AdminOsceGetterState> get copyWith => _$AdminOsceGetterStateCopyWithImpl<AdminOsceGetterState>(this as AdminOsceGetterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminOsceGetterState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState);

@override
String toString() {
  return 'AdminOsceGetterState(pagingState: $pagingState)';
}


}

/// @nodoc
abstract mixin class $AdminOsceGetterStateCopyWith<$Res>  {
  factory $AdminOsceGetterStateCopyWith(AdminOsceGetterState value, $Res Function(AdminOsceGetterState) _then) = _$AdminOsceGetterStateCopyWithImpl;
@useResult
$Res call({
 PagingState<int, SimpleOsce> pagingState
});




}
/// @nodoc
class _$AdminOsceGetterStateCopyWithImpl<$Res>
    implements $AdminOsceGetterStateCopyWith<$Res> {
  _$AdminOsceGetterStateCopyWithImpl(this._self, this._then);

  final AdminOsceGetterState _self;
  final $Res Function(AdminOsceGetterState) _then;

/// Create a copy of AdminOsceGetterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagingState = null,}) {
  return _then(_self.copyWith(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, SimpleOsce>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminOsceGetterState].
extension AdminOsceGetterStatePatterns on AdminOsceGetterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminOsceGetterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminOsceGetterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminOsceGetterState value)  $default,){
final _that = this;
switch (_that) {
case _AdminOsceGetterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminOsceGetterState value)?  $default,){
final _that = this;
switch (_that) {
case _AdminOsceGetterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PagingState<int, SimpleOsce> pagingState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminOsceGetterState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PagingState<int, SimpleOsce> pagingState)  $default,) {final _that = this;
switch (_that) {
case _AdminOsceGetterState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PagingState<int, SimpleOsce> pagingState)?  $default,) {final _that = this;
switch (_that) {
case _AdminOsceGetterState() when $default != null:
return $default(_that.pagingState);case _:
  return null;

}
}

}

/// @nodoc


class _AdminOsceGetterState implements AdminOsceGetterState {
  const _AdminOsceGetterState({required this.pagingState});
  

@override final  PagingState<int, SimpleOsce> pagingState;

/// Create a copy of AdminOsceGetterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminOsceGetterStateCopyWith<_AdminOsceGetterState> get copyWith => __$AdminOsceGetterStateCopyWithImpl<_AdminOsceGetterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminOsceGetterState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState);

@override
String toString() {
  return 'AdminOsceGetterState(pagingState: $pagingState)';
}


}

/// @nodoc
abstract mixin class _$AdminOsceGetterStateCopyWith<$Res> implements $AdminOsceGetterStateCopyWith<$Res> {
  factory _$AdminOsceGetterStateCopyWith(_AdminOsceGetterState value, $Res Function(_AdminOsceGetterState) _then) = __$AdminOsceGetterStateCopyWithImpl;
@override @useResult
$Res call({
 PagingState<int, SimpleOsce> pagingState
});




}
/// @nodoc
class __$AdminOsceGetterStateCopyWithImpl<$Res>
    implements _$AdminOsceGetterStateCopyWith<$Res> {
  __$AdminOsceGetterStateCopyWithImpl(this._self, this._then);

  final _AdminOsceGetterState _self;
  final $Res Function(_AdminOsceGetterState) _then;

/// Create a copy of AdminOsceGetterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagingState = null,}) {
  return _then(_AdminOsceGetterState(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, SimpleOsce>,
  ));
}


}

// dart format on
