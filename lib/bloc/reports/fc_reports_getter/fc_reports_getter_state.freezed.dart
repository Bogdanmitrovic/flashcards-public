// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fc_reports_getter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FcReportsGetterState {

 PagingState<int, FlashcardReport> get pagingState;
/// Create a copy of FcReportsGetterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcReportsGetterStateCopyWith<FcReportsGetterState> get copyWith => _$FcReportsGetterStateCopyWithImpl<FcReportsGetterState>(this as FcReportsGetterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcReportsGetterState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState);

@override
String toString() {
  return 'FcReportsGetterState(pagingState: $pagingState)';
}


}

/// @nodoc
abstract mixin class $FcReportsGetterStateCopyWith<$Res>  {
  factory $FcReportsGetterStateCopyWith(FcReportsGetterState value, $Res Function(FcReportsGetterState) _then) = _$FcReportsGetterStateCopyWithImpl;
@useResult
$Res call({
 PagingState<int, FlashcardReport> pagingState
});




}
/// @nodoc
class _$FcReportsGetterStateCopyWithImpl<$Res>
    implements $FcReportsGetterStateCopyWith<$Res> {
  _$FcReportsGetterStateCopyWithImpl(this._self, this._then);

  final FcReportsGetterState _self;
  final $Res Function(FcReportsGetterState) _then;

/// Create a copy of FcReportsGetterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagingState = null,}) {
  return _then(_self.copyWith(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, FlashcardReport>,
  ));
}

}


/// Adds pattern-matching-related methods to [FcReportsGetterState].
extension FcReportsGetterStatePatterns on FcReportsGetterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcReportsGetterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcReportsGetterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcReportsGetterState value)  $default,){
final _that = this;
switch (_that) {
case _FcReportsGetterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcReportsGetterState value)?  $default,){
final _that = this;
switch (_that) {
case _FcReportsGetterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PagingState<int, FlashcardReport> pagingState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcReportsGetterState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PagingState<int, FlashcardReport> pagingState)  $default,) {final _that = this;
switch (_that) {
case _FcReportsGetterState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PagingState<int, FlashcardReport> pagingState)?  $default,) {final _that = this;
switch (_that) {
case _FcReportsGetterState() when $default != null:
return $default(_that.pagingState);case _:
  return null;

}
}

}

/// @nodoc


class _FcReportsGetterState implements FcReportsGetterState {
  const _FcReportsGetterState({required this.pagingState});
  

@override final  PagingState<int, FlashcardReport> pagingState;

/// Create a copy of FcReportsGetterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcReportsGetterStateCopyWith<_FcReportsGetterState> get copyWith => __$FcReportsGetterStateCopyWithImpl<_FcReportsGetterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcReportsGetterState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState);

@override
String toString() {
  return 'FcReportsGetterState(pagingState: $pagingState)';
}


}

/// @nodoc
abstract mixin class _$FcReportsGetterStateCopyWith<$Res> implements $FcReportsGetterStateCopyWith<$Res> {
  factory _$FcReportsGetterStateCopyWith(_FcReportsGetterState value, $Res Function(_FcReportsGetterState) _then) = __$FcReportsGetterStateCopyWithImpl;
@override @useResult
$Res call({
 PagingState<int, FlashcardReport> pagingState
});




}
/// @nodoc
class __$FcReportsGetterStateCopyWithImpl<$Res>
    implements _$FcReportsGetterStateCopyWith<$Res> {
  __$FcReportsGetterStateCopyWithImpl(this._self, this._then);

  final _FcReportsGetterState _self;
  final $Res Function(_FcReportsGetterState) _then;

/// Create a copy of FcReportsGetterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagingState = null,}) {
  return _then(_FcReportsGetterState(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, FlashcardReport>,
  ));
}


}

// dart format on
