// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ignored_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IgnoredCardState {

 PagingState<int, IgnoredFlashcard> get pagingState; Map<String, bool> get forbidRemoval; Exception? get error;
/// Create a copy of IgnoredCardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IgnoredCardStateCopyWith<IgnoredCardState> get copyWith => _$IgnoredCardStateCopyWithImpl<IgnoredCardState>(this as IgnoredCardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IgnoredCardState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&const DeepCollectionEquality().equals(other.forbidRemoval, forbidRemoval)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState,const DeepCollectionEquality().hash(forbidRemoval),error);

@override
String toString() {
  return 'IgnoredCardState(pagingState: $pagingState, forbidRemoval: $forbidRemoval, error: $error)';
}


}

/// @nodoc
abstract mixin class $IgnoredCardStateCopyWith<$Res>  {
  factory $IgnoredCardStateCopyWith(IgnoredCardState value, $Res Function(IgnoredCardState) _then) = _$IgnoredCardStateCopyWithImpl;
@useResult
$Res call({
 PagingState<int, IgnoredFlashcard> pagingState, Map<String, bool> forbidRemoval, Exception? error
});




}
/// @nodoc
class _$IgnoredCardStateCopyWithImpl<$Res>
    implements $IgnoredCardStateCopyWith<$Res> {
  _$IgnoredCardStateCopyWithImpl(this._self, this._then);

  final IgnoredCardState _self;
  final $Res Function(IgnoredCardState) _then;

/// Create a copy of IgnoredCardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagingState = null,Object? forbidRemoval = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, IgnoredFlashcard>,forbidRemoval: null == forbidRemoval ? _self.forbidRemoval : forbidRemoval // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}

}


/// Adds pattern-matching-related methods to [IgnoredCardState].
extension IgnoredCardStatePatterns on IgnoredCardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IgnoredCardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IgnoredCardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IgnoredCardState value)  $default,){
final _that = this;
switch (_that) {
case _IgnoredCardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IgnoredCardState value)?  $default,){
final _that = this;
switch (_that) {
case _IgnoredCardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PagingState<int, IgnoredFlashcard> pagingState,  Map<String, bool> forbidRemoval,  Exception? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IgnoredCardState() when $default != null:
return $default(_that.pagingState,_that.forbidRemoval,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PagingState<int, IgnoredFlashcard> pagingState,  Map<String, bool> forbidRemoval,  Exception? error)  $default,) {final _that = this;
switch (_that) {
case _IgnoredCardState():
return $default(_that.pagingState,_that.forbidRemoval,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PagingState<int, IgnoredFlashcard> pagingState,  Map<String, bool> forbidRemoval,  Exception? error)?  $default,) {final _that = this;
switch (_that) {
case _IgnoredCardState() when $default != null:
return $default(_that.pagingState,_that.forbidRemoval,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _IgnoredCardState implements IgnoredCardState {
  const _IgnoredCardState({required this.pagingState, final  Map<String, bool> forbidRemoval = const {}, this.error}): _forbidRemoval = forbidRemoval;
  

@override final  PagingState<int, IgnoredFlashcard> pagingState;
 final  Map<String, bool> _forbidRemoval;
@override@JsonKey() Map<String, bool> get forbidRemoval {
  if (_forbidRemoval is EqualUnmodifiableMapView) return _forbidRemoval;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_forbidRemoval);
}

@override final  Exception? error;

/// Create a copy of IgnoredCardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IgnoredCardStateCopyWith<_IgnoredCardState> get copyWith => __$IgnoredCardStateCopyWithImpl<_IgnoredCardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IgnoredCardState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&const DeepCollectionEquality().equals(other._forbidRemoval, _forbidRemoval)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState,const DeepCollectionEquality().hash(_forbidRemoval),error);

@override
String toString() {
  return 'IgnoredCardState(pagingState: $pagingState, forbidRemoval: $forbidRemoval, error: $error)';
}


}

/// @nodoc
abstract mixin class _$IgnoredCardStateCopyWith<$Res> implements $IgnoredCardStateCopyWith<$Res> {
  factory _$IgnoredCardStateCopyWith(_IgnoredCardState value, $Res Function(_IgnoredCardState) _then) = __$IgnoredCardStateCopyWithImpl;
@override @useResult
$Res call({
 PagingState<int, IgnoredFlashcard> pagingState, Map<String, bool> forbidRemoval, Exception? error
});




}
/// @nodoc
class __$IgnoredCardStateCopyWithImpl<$Res>
    implements _$IgnoredCardStateCopyWith<$Res> {
  __$IgnoredCardStateCopyWithImpl(this._self, this._then);

  final _IgnoredCardState _self;
  final $Res Function(_IgnoredCardState) _then;

/// Create a copy of IgnoredCardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagingState = null,Object? forbidRemoval = null,Object? error = freezed,}) {
  return _then(_IgnoredCardState(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, IgnoredFlashcard>,forbidRemoval: null == forbidRemoval ? _self._forbidRemoval : forbidRemoval // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
