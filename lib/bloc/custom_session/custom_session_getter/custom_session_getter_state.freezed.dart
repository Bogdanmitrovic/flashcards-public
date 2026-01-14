// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_session_getter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomSessionGetterState {

 CustomSessionGetterStatus get status; PagingState<int, CustomSessionSummary> get pagingState; bool? get hasCards; Exception? get error;
/// Create a copy of CustomSessionGetterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomSessionGetterStateCopyWith<CustomSessionGetterState> get copyWith => _$CustomSessionGetterStateCopyWithImpl<CustomSessionGetterState>(this as CustomSessionGetterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomSessionGetterState&&(identical(other.status, status) || other.status == status)&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&(identical(other.hasCards, hasCards) || other.hasCards == hasCards)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,pagingState,hasCards,error);

@override
String toString() {
  return 'CustomSessionGetterState(status: $status, pagingState: $pagingState, hasCards: $hasCards, error: $error)';
}


}

/// @nodoc
abstract mixin class $CustomSessionGetterStateCopyWith<$Res>  {
  factory $CustomSessionGetterStateCopyWith(CustomSessionGetterState value, $Res Function(CustomSessionGetterState) _then) = _$CustomSessionGetterStateCopyWithImpl;
@useResult
$Res call({
 CustomSessionGetterStatus status, PagingState<int, CustomSessionSummary> pagingState, bool? hasCards, Exception? error
});




}
/// @nodoc
class _$CustomSessionGetterStateCopyWithImpl<$Res>
    implements $CustomSessionGetterStateCopyWith<$Res> {
  _$CustomSessionGetterStateCopyWithImpl(this._self, this._then);

  final CustomSessionGetterState _self;
  final $Res Function(CustomSessionGetterState) _then;

/// Create a copy of CustomSessionGetterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? pagingState = null,Object? hasCards = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CustomSessionGetterStatus,pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, CustomSessionSummary>,hasCards: freezed == hasCards ? _self.hasCards : hasCards // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomSessionGetterState].
extension CustomSessionGetterStatePatterns on CustomSessionGetterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomSessionGetterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomSessionGetterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomSessionGetterState value)  $default,){
final _that = this;
switch (_that) {
case _CustomSessionGetterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomSessionGetterState value)?  $default,){
final _that = this;
switch (_that) {
case _CustomSessionGetterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CustomSessionGetterStatus status,  PagingState<int, CustomSessionSummary> pagingState,  bool? hasCards,  Exception? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomSessionGetterState() when $default != null:
return $default(_that.status,_that.pagingState,_that.hasCards,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CustomSessionGetterStatus status,  PagingState<int, CustomSessionSummary> pagingState,  bool? hasCards,  Exception? error)  $default,) {final _that = this;
switch (_that) {
case _CustomSessionGetterState():
return $default(_that.status,_that.pagingState,_that.hasCards,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CustomSessionGetterStatus status,  PagingState<int, CustomSessionSummary> pagingState,  bool? hasCards,  Exception? error)?  $default,) {final _that = this;
switch (_that) {
case _CustomSessionGetterState() when $default != null:
return $default(_that.status,_that.pagingState,_that.hasCards,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _CustomSessionGetterState implements CustomSessionGetterState {
  const _CustomSessionGetterState({this.status = CustomSessionGetterStatus.initial, required this.pagingState, this.hasCards, this.error});
  

@override@JsonKey() final  CustomSessionGetterStatus status;
@override final  PagingState<int, CustomSessionSummary> pagingState;
@override final  bool? hasCards;
@override final  Exception? error;

/// Create a copy of CustomSessionGetterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomSessionGetterStateCopyWith<_CustomSessionGetterState> get copyWith => __$CustomSessionGetterStateCopyWithImpl<_CustomSessionGetterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomSessionGetterState&&(identical(other.status, status) || other.status == status)&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&(identical(other.hasCards, hasCards) || other.hasCards == hasCards)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,pagingState,hasCards,error);

@override
String toString() {
  return 'CustomSessionGetterState(status: $status, pagingState: $pagingState, hasCards: $hasCards, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CustomSessionGetterStateCopyWith<$Res> implements $CustomSessionGetterStateCopyWith<$Res> {
  factory _$CustomSessionGetterStateCopyWith(_CustomSessionGetterState value, $Res Function(_CustomSessionGetterState) _then) = __$CustomSessionGetterStateCopyWithImpl;
@override @useResult
$Res call({
 CustomSessionGetterStatus status, PagingState<int, CustomSessionSummary> pagingState, bool? hasCards, Exception? error
});




}
/// @nodoc
class __$CustomSessionGetterStateCopyWithImpl<$Res>
    implements _$CustomSessionGetterStateCopyWith<$Res> {
  __$CustomSessionGetterStateCopyWithImpl(this._self, this._then);

  final _CustomSessionGetterState _self;
  final $Res Function(_CustomSessionGetterState) _then;

/// Create a copy of CustomSessionGetterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? pagingState = null,Object? hasCards = freezed,Object? error = freezed,}) {
  return _then(_CustomSessionGetterState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CustomSessionGetterStatus,pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, CustomSessionSummary>,hasCards: freezed == hasCards ? _self.hasCards : hasCards // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
