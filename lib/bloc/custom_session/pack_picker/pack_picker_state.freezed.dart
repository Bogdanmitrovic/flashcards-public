// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pack_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PackPickerState {

 PagingState<int, SimplePack> get pagingState; Map<SimplePack, bool> get selectedPacksMap; dynamic get flashcardSum; int get selectedCount; bool? get hasCards;
/// Create a copy of PackPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackPickerStateCopyWith<PackPickerState> get copyWith => _$PackPickerStateCopyWithImpl<PackPickerState>(this as PackPickerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackPickerState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&const DeepCollectionEquality().equals(other.selectedPacksMap, selectedPacksMap)&&const DeepCollectionEquality().equals(other.flashcardSum, flashcardSum)&&(identical(other.selectedCount, selectedCount) || other.selectedCount == selectedCount)&&(identical(other.hasCards, hasCards) || other.hasCards == hasCards));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState,const DeepCollectionEquality().hash(selectedPacksMap),const DeepCollectionEquality().hash(flashcardSum),selectedCount,hasCards);

@override
String toString() {
  return 'PackPickerState(pagingState: $pagingState, selectedPacksMap: $selectedPacksMap, flashcardSum: $flashcardSum, selectedCount: $selectedCount, hasCards: $hasCards)';
}


}

/// @nodoc
abstract mixin class $PackPickerStateCopyWith<$Res>  {
  factory $PackPickerStateCopyWith(PackPickerState value, $Res Function(PackPickerState) _then) = _$PackPickerStateCopyWithImpl;
@useResult
$Res call({
 PagingState<int, SimplePack> pagingState, Map<SimplePack, bool> selectedPacksMap, dynamic flashcardSum, int selectedCount, bool? hasCards
});




}
/// @nodoc
class _$PackPickerStateCopyWithImpl<$Res>
    implements $PackPickerStateCopyWith<$Res> {
  _$PackPickerStateCopyWithImpl(this._self, this._then);

  final PackPickerState _self;
  final $Res Function(PackPickerState) _then;

/// Create a copy of PackPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagingState = null,Object? selectedPacksMap = null,Object? flashcardSum = freezed,Object? selectedCount = null,Object? hasCards = freezed,}) {
  return _then(_self.copyWith(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, SimplePack>,selectedPacksMap: null == selectedPacksMap ? _self.selectedPacksMap : selectedPacksMap // ignore: cast_nullable_to_non_nullable
as Map<SimplePack, bool>,flashcardSum: freezed == flashcardSum ? _self.flashcardSum : flashcardSum // ignore: cast_nullable_to_non_nullable
as dynamic,selectedCount: null == selectedCount ? _self.selectedCount : selectedCount // ignore: cast_nullable_to_non_nullable
as int,hasCards: freezed == hasCards ? _self.hasCards : hasCards // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PackPickerState].
extension PackPickerStatePatterns on PackPickerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackPickerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackPickerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackPickerState value)  $default,){
final _that = this;
switch (_that) {
case _PackPickerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackPickerState value)?  $default,){
final _that = this;
switch (_that) {
case _PackPickerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PagingState<int, SimplePack> pagingState,  Map<SimplePack, bool> selectedPacksMap,  dynamic flashcardSum,  int selectedCount,  bool? hasCards)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackPickerState() when $default != null:
return $default(_that.pagingState,_that.selectedPacksMap,_that.flashcardSum,_that.selectedCount,_that.hasCards);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PagingState<int, SimplePack> pagingState,  Map<SimplePack, bool> selectedPacksMap,  dynamic flashcardSum,  int selectedCount,  bool? hasCards)  $default,) {final _that = this;
switch (_that) {
case _PackPickerState():
return $default(_that.pagingState,_that.selectedPacksMap,_that.flashcardSum,_that.selectedCount,_that.hasCards);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PagingState<int, SimplePack> pagingState,  Map<SimplePack, bool> selectedPacksMap,  dynamic flashcardSum,  int selectedCount,  bool? hasCards)?  $default,) {final _that = this;
switch (_that) {
case _PackPickerState() when $default != null:
return $default(_that.pagingState,_that.selectedPacksMap,_that.flashcardSum,_that.selectedCount,_that.hasCards);case _:
  return null;

}
}

}

/// @nodoc


class _PackPickerState implements PackPickerState {
  const _PackPickerState({required this.pagingState, final  Map<SimplePack, bool> selectedPacksMap = const {}, this.flashcardSum = 0, this.selectedCount = 0, this.hasCards}): _selectedPacksMap = selectedPacksMap;
  

@override final  PagingState<int, SimplePack> pagingState;
 final  Map<SimplePack, bool> _selectedPacksMap;
@override@JsonKey() Map<SimplePack, bool> get selectedPacksMap {
  if (_selectedPacksMap is EqualUnmodifiableMapView) return _selectedPacksMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selectedPacksMap);
}

@override@JsonKey() final  dynamic flashcardSum;
@override@JsonKey() final  int selectedCount;
@override final  bool? hasCards;

/// Create a copy of PackPickerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackPickerStateCopyWith<_PackPickerState> get copyWith => __$PackPickerStateCopyWithImpl<_PackPickerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackPickerState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&const DeepCollectionEquality().equals(other._selectedPacksMap, _selectedPacksMap)&&const DeepCollectionEquality().equals(other.flashcardSum, flashcardSum)&&(identical(other.selectedCount, selectedCount) || other.selectedCount == selectedCount)&&(identical(other.hasCards, hasCards) || other.hasCards == hasCards));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState,const DeepCollectionEquality().hash(_selectedPacksMap),const DeepCollectionEquality().hash(flashcardSum),selectedCount,hasCards);

@override
String toString() {
  return 'PackPickerState(pagingState: $pagingState, selectedPacksMap: $selectedPacksMap, flashcardSum: $flashcardSum, selectedCount: $selectedCount, hasCards: $hasCards)';
}


}

/// @nodoc
abstract mixin class _$PackPickerStateCopyWith<$Res> implements $PackPickerStateCopyWith<$Res> {
  factory _$PackPickerStateCopyWith(_PackPickerState value, $Res Function(_PackPickerState) _then) = __$PackPickerStateCopyWithImpl;
@override @useResult
$Res call({
 PagingState<int, SimplePack> pagingState, Map<SimplePack, bool> selectedPacksMap, dynamic flashcardSum, int selectedCount, bool? hasCards
});




}
/// @nodoc
class __$PackPickerStateCopyWithImpl<$Res>
    implements _$PackPickerStateCopyWith<$Res> {
  __$PackPickerStateCopyWithImpl(this._self, this._then);

  final _PackPickerState _self;
  final $Res Function(_PackPickerState) _then;

/// Create a copy of PackPickerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagingState = null,Object? selectedPacksMap = null,Object? flashcardSum = freezed,Object? selectedCount = null,Object? hasCards = freezed,}) {
  return _then(_PackPickerState(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, SimplePack>,selectedPacksMap: null == selectedPacksMap ? _self._selectedPacksMap : selectedPacksMap // ignore: cast_nullable_to_non_nullable
as Map<SimplePack, bool>,flashcardSum: freezed == flashcardSum ? _self.flashcardSum : flashcardSum // ignore: cast_nullable_to_non_nullable
as dynamic,selectedCount: null == selectedCount ? _self.selectedCount : selectedCount // ignore: cast_nullable_to_non_nullable
as int,hasCards: freezed == hasCards ? _self.hasCards : hasCards // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
