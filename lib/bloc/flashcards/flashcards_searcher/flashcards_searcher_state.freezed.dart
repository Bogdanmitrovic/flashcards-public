// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcards_searcher_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FlashcardsSearcherState {

 FlashcardsSearcherStatus get status; PagingState<int, AlgoliaFlashcard> get pagingState; String get lastQuerySent; List<MapEntry<Tag, int>> get tagCounts; Map<Tag, bool> get selectedTags; int get hitsCount; bool? get hasCards; Exception? get error;
/// Create a copy of FlashcardsSearcherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlashcardsSearcherStateCopyWith<FlashcardsSearcherState> get copyWith => _$FlashcardsSearcherStateCopyWithImpl<FlashcardsSearcherState>(this as FlashcardsSearcherState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlashcardsSearcherState&&(identical(other.status, status) || other.status == status)&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&(identical(other.lastQuerySent, lastQuerySent) || other.lastQuerySent == lastQuerySent)&&const DeepCollectionEquality().equals(other.tagCounts, tagCounts)&&const DeepCollectionEquality().equals(other.selectedTags, selectedTags)&&(identical(other.hitsCount, hitsCount) || other.hitsCount == hitsCount)&&(identical(other.hasCards, hasCards) || other.hasCards == hasCards)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,pagingState,lastQuerySent,const DeepCollectionEquality().hash(tagCounts),const DeepCollectionEquality().hash(selectedTags),hitsCount,hasCards,error);

@override
String toString() {
  return 'FlashcardsSearcherState(status: $status, pagingState: $pagingState, lastQuerySent: $lastQuerySent, tagCounts: $tagCounts, selectedTags: $selectedTags, hitsCount: $hitsCount, hasCards: $hasCards, error: $error)';
}


}

/// @nodoc
abstract mixin class $FlashcardsSearcherStateCopyWith<$Res>  {
  factory $FlashcardsSearcherStateCopyWith(FlashcardsSearcherState value, $Res Function(FlashcardsSearcherState) _then) = _$FlashcardsSearcherStateCopyWithImpl;
@useResult
$Res call({
 FlashcardsSearcherStatus status, PagingState<int, AlgoliaFlashcard> pagingState, String lastQuerySent, List<MapEntry<Tag, int>> tagCounts, Map<Tag, bool> selectedTags, int hitsCount, bool? hasCards, Exception? error
});




}
/// @nodoc
class _$FlashcardsSearcherStateCopyWithImpl<$Res>
    implements $FlashcardsSearcherStateCopyWith<$Res> {
  _$FlashcardsSearcherStateCopyWithImpl(this._self, this._then);

  final FlashcardsSearcherState _self;
  final $Res Function(FlashcardsSearcherState) _then;

/// Create a copy of FlashcardsSearcherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? pagingState = null,Object? lastQuerySent = null,Object? tagCounts = null,Object? selectedTags = null,Object? hitsCount = null,Object? hasCards = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FlashcardsSearcherStatus,pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, AlgoliaFlashcard>,lastQuerySent: null == lastQuerySent ? _self.lastQuerySent : lastQuerySent // ignore: cast_nullable_to_non_nullable
as String,tagCounts: null == tagCounts ? _self.tagCounts : tagCounts // ignore: cast_nullable_to_non_nullable
as List<MapEntry<Tag, int>>,selectedTags: null == selectedTags ? _self.selectedTags : selectedTags // ignore: cast_nullable_to_non_nullable
as Map<Tag, bool>,hitsCount: null == hitsCount ? _self.hitsCount : hitsCount // ignore: cast_nullable_to_non_nullable
as int,hasCards: freezed == hasCards ? _self.hasCards : hasCards // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}

}


/// Adds pattern-matching-related methods to [FlashcardsSearcherState].
extension FlashcardsSearcherStatePatterns on FlashcardsSearcherState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlashcardsSearcherState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlashcardsSearcherState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlashcardsSearcherState value)  $default,){
final _that = this;
switch (_that) {
case _FlashcardsSearcherState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlashcardsSearcherState value)?  $default,){
final _that = this;
switch (_that) {
case _FlashcardsSearcherState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FlashcardsSearcherStatus status,  PagingState<int, AlgoliaFlashcard> pagingState,  String lastQuerySent,  List<MapEntry<Tag, int>> tagCounts,  Map<Tag, bool> selectedTags,  int hitsCount,  bool? hasCards,  Exception? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlashcardsSearcherState() when $default != null:
return $default(_that.status,_that.pagingState,_that.lastQuerySent,_that.tagCounts,_that.selectedTags,_that.hitsCount,_that.hasCards,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FlashcardsSearcherStatus status,  PagingState<int, AlgoliaFlashcard> pagingState,  String lastQuerySent,  List<MapEntry<Tag, int>> tagCounts,  Map<Tag, bool> selectedTags,  int hitsCount,  bool? hasCards,  Exception? error)  $default,) {final _that = this;
switch (_that) {
case _FlashcardsSearcherState():
return $default(_that.status,_that.pagingState,_that.lastQuerySent,_that.tagCounts,_that.selectedTags,_that.hitsCount,_that.hasCards,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FlashcardsSearcherStatus status,  PagingState<int, AlgoliaFlashcard> pagingState,  String lastQuerySent,  List<MapEntry<Tag, int>> tagCounts,  Map<Tag, bool> selectedTags,  int hitsCount,  bool? hasCards,  Exception? error)?  $default,) {final _that = this;
switch (_that) {
case _FlashcardsSearcherState() when $default != null:
return $default(_that.status,_that.pagingState,_that.lastQuerySent,_that.tagCounts,_that.selectedTags,_that.hitsCount,_that.hasCards,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _FlashcardsSearcherState implements FlashcardsSearcherState {
  const _FlashcardsSearcherState({this.status = FlashcardsSearcherStatus.initial, required this.pagingState, this.lastQuerySent = '', final  List<MapEntry<Tag, int>> tagCounts = const [], final  Map<Tag, bool> selectedTags = const {}, this.hitsCount = 0, this.hasCards, this.error}): _tagCounts = tagCounts,_selectedTags = selectedTags;
  

@override@JsonKey() final  FlashcardsSearcherStatus status;
@override final  PagingState<int, AlgoliaFlashcard> pagingState;
@override@JsonKey() final  String lastQuerySent;
 final  List<MapEntry<Tag, int>> _tagCounts;
@override@JsonKey() List<MapEntry<Tag, int>> get tagCounts {
  if (_tagCounts is EqualUnmodifiableListView) return _tagCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tagCounts);
}

 final  Map<Tag, bool> _selectedTags;
@override@JsonKey() Map<Tag, bool> get selectedTags {
  if (_selectedTags is EqualUnmodifiableMapView) return _selectedTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selectedTags);
}

@override@JsonKey() final  int hitsCount;
@override final  bool? hasCards;
@override final  Exception? error;

/// Create a copy of FlashcardsSearcherState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlashcardsSearcherStateCopyWith<_FlashcardsSearcherState> get copyWith => __$FlashcardsSearcherStateCopyWithImpl<_FlashcardsSearcherState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlashcardsSearcherState&&(identical(other.status, status) || other.status == status)&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&(identical(other.lastQuerySent, lastQuerySent) || other.lastQuerySent == lastQuerySent)&&const DeepCollectionEquality().equals(other._tagCounts, _tagCounts)&&const DeepCollectionEquality().equals(other._selectedTags, _selectedTags)&&(identical(other.hitsCount, hitsCount) || other.hitsCount == hitsCount)&&(identical(other.hasCards, hasCards) || other.hasCards == hasCards)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,pagingState,lastQuerySent,const DeepCollectionEquality().hash(_tagCounts),const DeepCollectionEquality().hash(_selectedTags),hitsCount,hasCards,error);

@override
String toString() {
  return 'FlashcardsSearcherState(status: $status, pagingState: $pagingState, lastQuerySent: $lastQuerySent, tagCounts: $tagCounts, selectedTags: $selectedTags, hitsCount: $hitsCount, hasCards: $hasCards, error: $error)';
}


}

/// @nodoc
abstract mixin class _$FlashcardsSearcherStateCopyWith<$Res> implements $FlashcardsSearcherStateCopyWith<$Res> {
  factory _$FlashcardsSearcherStateCopyWith(_FlashcardsSearcherState value, $Res Function(_FlashcardsSearcherState) _then) = __$FlashcardsSearcherStateCopyWithImpl;
@override @useResult
$Res call({
 FlashcardsSearcherStatus status, PagingState<int, AlgoliaFlashcard> pagingState, String lastQuerySent, List<MapEntry<Tag, int>> tagCounts, Map<Tag, bool> selectedTags, int hitsCount, bool? hasCards, Exception? error
});




}
/// @nodoc
class __$FlashcardsSearcherStateCopyWithImpl<$Res>
    implements _$FlashcardsSearcherStateCopyWith<$Res> {
  __$FlashcardsSearcherStateCopyWithImpl(this._self, this._then);

  final _FlashcardsSearcherState _self;
  final $Res Function(_FlashcardsSearcherState) _then;

/// Create a copy of FlashcardsSearcherState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? pagingState = null,Object? lastQuerySent = null,Object? tagCounts = null,Object? selectedTags = null,Object? hitsCount = null,Object? hasCards = freezed,Object? error = freezed,}) {
  return _then(_FlashcardsSearcherState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FlashcardsSearcherStatus,pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, AlgoliaFlashcard>,lastQuerySent: null == lastQuerySent ? _self.lastQuerySent : lastQuerySent // ignore: cast_nullable_to_non_nullable
as String,tagCounts: null == tagCounts ? _self._tagCounts : tagCounts // ignore: cast_nullable_to_non_nullable
as List<MapEntry<Tag, int>>,selectedTags: null == selectedTags ? _self._selectedTags : selectedTags // ignore: cast_nullable_to_non_nullable
as Map<Tag, bool>,hitsCount: null == hitsCount ? _self.hitsCount : hitsCount // ignore: cast_nullable_to_non_nullable
as int,hasCards: freezed == hasCards ? _self.hasCards : hasCards // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
