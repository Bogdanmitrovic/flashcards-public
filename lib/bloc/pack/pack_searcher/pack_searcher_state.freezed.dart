// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pack_searcher_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PackSearcherState {

 PackSearcherStatus get status; PagingState<int, AlgoliaPack> get pagingState; String get lastQuerySent; List<MapEntry<Tag, int>> get tagCounts; Map<Tag, bool> get selectedTags; int get hitsCount; bool? get hasCards; Exception? get error;
/// Create a copy of PackSearcherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackSearcherStateCopyWith<PackSearcherState> get copyWith => _$PackSearcherStateCopyWithImpl<PackSearcherState>(this as PackSearcherState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackSearcherState&&(identical(other.status, status) || other.status == status)&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&(identical(other.lastQuerySent, lastQuerySent) || other.lastQuerySent == lastQuerySent)&&const DeepCollectionEquality().equals(other.tagCounts, tagCounts)&&const DeepCollectionEquality().equals(other.selectedTags, selectedTags)&&(identical(other.hitsCount, hitsCount) || other.hitsCount == hitsCount)&&(identical(other.hasCards, hasCards) || other.hasCards == hasCards)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,pagingState,lastQuerySent,const DeepCollectionEquality().hash(tagCounts),const DeepCollectionEquality().hash(selectedTags),hitsCount,hasCards,error);

@override
String toString() {
  return 'PackSearcherState(status: $status, pagingState: $pagingState, lastQuerySent: $lastQuerySent, tagCounts: $tagCounts, selectedTags: $selectedTags, hitsCount: $hitsCount, hasCards: $hasCards, error: $error)';
}


}

/// @nodoc
abstract mixin class $PackSearcherStateCopyWith<$Res>  {
  factory $PackSearcherStateCopyWith(PackSearcherState value, $Res Function(PackSearcherState) _then) = _$PackSearcherStateCopyWithImpl;
@useResult
$Res call({
 PackSearcherStatus status, PagingState<int, AlgoliaPack> pagingState, String lastQuerySent, List<MapEntry<Tag, int>> tagCounts, Map<Tag, bool> selectedTags, int hitsCount, bool? hasCards, Exception? error
});




}
/// @nodoc
class _$PackSearcherStateCopyWithImpl<$Res>
    implements $PackSearcherStateCopyWith<$Res> {
  _$PackSearcherStateCopyWithImpl(this._self, this._then);

  final PackSearcherState _self;
  final $Res Function(PackSearcherState) _then;

/// Create a copy of PackSearcherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? pagingState = null,Object? lastQuerySent = null,Object? tagCounts = null,Object? selectedTags = null,Object? hitsCount = null,Object? hasCards = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PackSearcherStatus,pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, AlgoliaPack>,lastQuerySent: null == lastQuerySent ? _self.lastQuerySent : lastQuerySent // ignore: cast_nullable_to_non_nullable
as String,tagCounts: null == tagCounts ? _self.tagCounts : tagCounts // ignore: cast_nullable_to_non_nullable
as List<MapEntry<Tag, int>>,selectedTags: null == selectedTags ? _self.selectedTags : selectedTags // ignore: cast_nullable_to_non_nullable
as Map<Tag, bool>,hitsCount: null == hitsCount ? _self.hitsCount : hitsCount // ignore: cast_nullable_to_non_nullable
as int,hasCards: freezed == hasCards ? _self.hasCards : hasCards // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}

}


/// Adds pattern-matching-related methods to [PackSearcherState].
extension PackSearcherStatePatterns on PackSearcherState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackSearcherState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackSearcherState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackSearcherState value)  $default,){
final _that = this;
switch (_that) {
case _PackSearcherState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackSearcherState value)?  $default,){
final _that = this;
switch (_that) {
case _PackSearcherState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PackSearcherStatus status,  PagingState<int, AlgoliaPack> pagingState,  String lastQuerySent,  List<MapEntry<Tag, int>> tagCounts,  Map<Tag, bool> selectedTags,  int hitsCount,  bool? hasCards,  Exception? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackSearcherState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PackSearcherStatus status,  PagingState<int, AlgoliaPack> pagingState,  String lastQuerySent,  List<MapEntry<Tag, int>> tagCounts,  Map<Tag, bool> selectedTags,  int hitsCount,  bool? hasCards,  Exception? error)  $default,) {final _that = this;
switch (_that) {
case _PackSearcherState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PackSearcherStatus status,  PagingState<int, AlgoliaPack> pagingState,  String lastQuerySent,  List<MapEntry<Tag, int>> tagCounts,  Map<Tag, bool> selectedTags,  int hitsCount,  bool? hasCards,  Exception? error)?  $default,) {final _that = this;
switch (_that) {
case _PackSearcherState() when $default != null:
return $default(_that.status,_that.pagingState,_that.lastQuerySent,_that.tagCounts,_that.selectedTags,_that.hitsCount,_that.hasCards,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _PackSearcherState implements PackSearcherState {
  const _PackSearcherState({this.status = PackSearcherStatus.initial, required this.pagingState, this.lastQuerySent = '', final  List<MapEntry<Tag, int>> tagCounts = const [], final  Map<Tag, bool> selectedTags = const {}, this.hitsCount = 0, this.hasCards, this.error}): _tagCounts = tagCounts,_selectedTags = selectedTags;
  

@override@JsonKey() final  PackSearcherStatus status;
@override final  PagingState<int, AlgoliaPack> pagingState;
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

/// Create a copy of PackSearcherState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackSearcherStateCopyWith<_PackSearcherState> get copyWith => __$PackSearcherStateCopyWithImpl<_PackSearcherState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackSearcherState&&(identical(other.status, status) || other.status == status)&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&(identical(other.lastQuerySent, lastQuerySent) || other.lastQuerySent == lastQuerySent)&&const DeepCollectionEquality().equals(other._tagCounts, _tagCounts)&&const DeepCollectionEquality().equals(other._selectedTags, _selectedTags)&&(identical(other.hitsCount, hitsCount) || other.hitsCount == hitsCount)&&(identical(other.hasCards, hasCards) || other.hasCards == hasCards)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,pagingState,lastQuerySent,const DeepCollectionEquality().hash(_tagCounts),const DeepCollectionEquality().hash(_selectedTags),hitsCount,hasCards,error);

@override
String toString() {
  return 'PackSearcherState(status: $status, pagingState: $pagingState, lastQuerySent: $lastQuerySent, tagCounts: $tagCounts, selectedTags: $selectedTags, hitsCount: $hitsCount, hasCards: $hasCards, error: $error)';
}


}

/// @nodoc
abstract mixin class _$PackSearcherStateCopyWith<$Res> implements $PackSearcherStateCopyWith<$Res> {
  factory _$PackSearcherStateCopyWith(_PackSearcherState value, $Res Function(_PackSearcherState) _then) = __$PackSearcherStateCopyWithImpl;
@override @useResult
$Res call({
 PackSearcherStatus status, PagingState<int, AlgoliaPack> pagingState, String lastQuerySent, List<MapEntry<Tag, int>> tagCounts, Map<Tag, bool> selectedTags, int hitsCount, bool? hasCards, Exception? error
});




}
/// @nodoc
class __$PackSearcherStateCopyWithImpl<$Res>
    implements _$PackSearcherStateCopyWith<$Res> {
  __$PackSearcherStateCopyWithImpl(this._self, this._then);

  final _PackSearcherState _self;
  final $Res Function(_PackSearcherState) _then;

/// Create a copy of PackSearcherState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? pagingState = null,Object? lastQuerySent = null,Object? tagCounts = null,Object? selectedTags = null,Object? hitsCount = null,Object? hasCards = freezed,Object? error = freezed,}) {
  return _then(_PackSearcherState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PackSearcherStatus,pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, AlgoliaPack>,lastQuerySent: null == lastQuerySent ? _self.lastQuerySent : lastQuerySent // ignore: cast_nullable_to_non_nullable
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
