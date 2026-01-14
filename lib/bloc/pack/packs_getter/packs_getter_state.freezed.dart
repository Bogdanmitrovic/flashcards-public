// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packs_getter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PacksGetterState {

 PagingState<int, Pack> get pagingState; bool? get hasCards;
/// Create a copy of PacksGetterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PacksGetterStateCopyWith<PacksGetterState> get copyWith => _$PacksGetterStateCopyWithImpl<PacksGetterState>(this as PacksGetterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PacksGetterState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&(identical(other.hasCards, hasCards) || other.hasCards == hasCards));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState,hasCards);

@override
String toString() {
  return 'PacksGetterState(pagingState: $pagingState, hasCards: $hasCards)';
}


}

/// @nodoc
abstract mixin class $PacksGetterStateCopyWith<$Res>  {
  factory $PacksGetterStateCopyWith(PacksGetterState value, $Res Function(PacksGetterState) _then) = _$PacksGetterStateCopyWithImpl;
@useResult
$Res call({
 PagingState<int, Pack> pagingState, bool? hasCards
});




}
/// @nodoc
class _$PacksGetterStateCopyWithImpl<$Res>
    implements $PacksGetterStateCopyWith<$Res> {
  _$PacksGetterStateCopyWithImpl(this._self, this._then);

  final PacksGetterState _self;
  final $Res Function(PacksGetterState) _then;

/// Create a copy of PacksGetterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagingState = null,Object? hasCards = freezed,}) {
  return _then(_self.copyWith(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, Pack>,hasCards: freezed == hasCards ? _self.hasCards : hasCards // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PacksGetterState].
extension PacksGetterStatePatterns on PacksGetterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PacksGetterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PacksGetterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PacksGetterState value)  $default,){
final _that = this;
switch (_that) {
case _PacksGetterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PacksGetterState value)?  $default,){
final _that = this;
switch (_that) {
case _PacksGetterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PagingState<int, Pack> pagingState,  bool? hasCards)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PacksGetterState() when $default != null:
return $default(_that.pagingState,_that.hasCards);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PagingState<int, Pack> pagingState,  bool? hasCards)  $default,) {final _that = this;
switch (_that) {
case _PacksGetterState():
return $default(_that.pagingState,_that.hasCards);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PagingState<int, Pack> pagingState,  bool? hasCards)?  $default,) {final _that = this;
switch (_that) {
case _PacksGetterState() when $default != null:
return $default(_that.pagingState,_that.hasCards);case _:
  return null;

}
}

}

/// @nodoc


class _PacksGetterState implements PacksGetterState {
  const _PacksGetterState({required this.pagingState, this.hasCards = null});
  

@override final  PagingState<int, Pack> pagingState;
@override@JsonKey() final  bool? hasCards;

/// Create a copy of PacksGetterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PacksGetterStateCopyWith<_PacksGetterState> get copyWith => __$PacksGetterStateCopyWithImpl<_PacksGetterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PacksGetterState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&(identical(other.hasCards, hasCards) || other.hasCards == hasCards));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState,hasCards);

@override
String toString() {
  return 'PacksGetterState(pagingState: $pagingState, hasCards: $hasCards)';
}


}

/// @nodoc
abstract mixin class _$PacksGetterStateCopyWith<$Res> implements $PacksGetterStateCopyWith<$Res> {
  factory _$PacksGetterStateCopyWith(_PacksGetterState value, $Res Function(_PacksGetterState) _then) = __$PacksGetterStateCopyWithImpl;
@override @useResult
$Res call({
 PagingState<int, Pack> pagingState, bool? hasCards
});




}
/// @nodoc
class __$PacksGetterStateCopyWithImpl<$Res>
    implements _$PacksGetterStateCopyWith<$Res> {
  __$PacksGetterStateCopyWithImpl(this._self, this._then);

  final _PacksGetterState _self;
  final $Res Function(_PacksGetterState) _then;

/// Create a copy of PacksGetterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagingState = null,Object? hasCards = freezed,}) {
  return _then(_PacksGetterState(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, Pack>,hasCards: freezed == hasCards ? _self.hasCards : hasCards // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
