// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_review_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookmarkReviewState {

 PagingState<int, Bookmark> get pagingState; Map<String, bool> get visibleAnswers; Map<String, bool> get forbidRemoval; Exception? get error;
/// Create a copy of BookmarkReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkReviewStateCopyWith<BookmarkReviewState> get copyWith => _$BookmarkReviewStateCopyWithImpl<BookmarkReviewState>(this as BookmarkReviewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkReviewState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&const DeepCollectionEquality().equals(other.visibleAnswers, visibleAnswers)&&const DeepCollectionEquality().equals(other.forbidRemoval, forbidRemoval)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState,const DeepCollectionEquality().hash(visibleAnswers),const DeepCollectionEquality().hash(forbidRemoval),error);

@override
String toString() {
  return 'BookmarkReviewState(pagingState: $pagingState, visibleAnswers: $visibleAnswers, forbidRemoval: $forbidRemoval, error: $error)';
}


}

/// @nodoc
abstract mixin class $BookmarkReviewStateCopyWith<$Res>  {
  factory $BookmarkReviewStateCopyWith(BookmarkReviewState value, $Res Function(BookmarkReviewState) _then) = _$BookmarkReviewStateCopyWithImpl;
@useResult
$Res call({
 PagingState<int, Bookmark> pagingState, Map<String, bool> visibleAnswers, Map<String, bool> forbidRemoval, Exception? error
});




}
/// @nodoc
class _$BookmarkReviewStateCopyWithImpl<$Res>
    implements $BookmarkReviewStateCopyWith<$Res> {
  _$BookmarkReviewStateCopyWithImpl(this._self, this._then);

  final BookmarkReviewState _self;
  final $Res Function(BookmarkReviewState) _then;

/// Create a copy of BookmarkReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagingState = null,Object? visibleAnswers = null,Object? forbidRemoval = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, Bookmark>,visibleAnswers: null == visibleAnswers ? _self.visibleAnswers : visibleAnswers // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,forbidRemoval: null == forbidRemoval ? _self.forbidRemoval : forbidRemoval // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookmarkReviewState].
extension BookmarkReviewStatePatterns on BookmarkReviewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookmarkReviewState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookmarkReviewState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookmarkReviewState value)  $default,){
final _that = this;
switch (_that) {
case _BookmarkReviewState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookmarkReviewState value)?  $default,){
final _that = this;
switch (_that) {
case _BookmarkReviewState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PagingState<int, Bookmark> pagingState,  Map<String, bool> visibleAnswers,  Map<String, bool> forbidRemoval,  Exception? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookmarkReviewState() when $default != null:
return $default(_that.pagingState,_that.visibleAnswers,_that.forbidRemoval,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PagingState<int, Bookmark> pagingState,  Map<String, bool> visibleAnswers,  Map<String, bool> forbidRemoval,  Exception? error)  $default,) {final _that = this;
switch (_that) {
case _BookmarkReviewState():
return $default(_that.pagingState,_that.visibleAnswers,_that.forbidRemoval,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PagingState<int, Bookmark> pagingState,  Map<String, bool> visibleAnswers,  Map<String, bool> forbidRemoval,  Exception? error)?  $default,) {final _that = this;
switch (_that) {
case _BookmarkReviewState() when $default != null:
return $default(_that.pagingState,_that.visibleAnswers,_that.forbidRemoval,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _BookmarkReviewState implements BookmarkReviewState {
  const _BookmarkReviewState({required this.pagingState, final  Map<String, bool> visibleAnswers = const {}, final  Map<String, bool> forbidRemoval = const {}, this.error}): _visibleAnswers = visibleAnswers,_forbidRemoval = forbidRemoval;
  

@override final  PagingState<int, Bookmark> pagingState;
 final  Map<String, bool> _visibleAnswers;
@override@JsonKey() Map<String, bool> get visibleAnswers {
  if (_visibleAnswers is EqualUnmodifiableMapView) return _visibleAnswers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_visibleAnswers);
}

 final  Map<String, bool> _forbidRemoval;
@override@JsonKey() Map<String, bool> get forbidRemoval {
  if (_forbidRemoval is EqualUnmodifiableMapView) return _forbidRemoval;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_forbidRemoval);
}

@override final  Exception? error;

/// Create a copy of BookmarkReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookmarkReviewStateCopyWith<_BookmarkReviewState> get copyWith => __$BookmarkReviewStateCopyWithImpl<_BookmarkReviewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookmarkReviewState&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState)&&const DeepCollectionEquality().equals(other._visibleAnswers, _visibleAnswers)&&const DeepCollectionEquality().equals(other._forbidRemoval, _forbidRemoval)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,pagingState,const DeepCollectionEquality().hash(_visibleAnswers),const DeepCollectionEquality().hash(_forbidRemoval),error);

@override
String toString() {
  return 'BookmarkReviewState(pagingState: $pagingState, visibleAnswers: $visibleAnswers, forbidRemoval: $forbidRemoval, error: $error)';
}


}

/// @nodoc
abstract mixin class _$BookmarkReviewStateCopyWith<$Res> implements $BookmarkReviewStateCopyWith<$Res> {
  factory _$BookmarkReviewStateCopyWith(_BookmarkReviewState value, $Res Function(_BookmarkReviewState) _then) = __$BookmarkReviewStateCopyWithImpl;
@override @useResult
$Res call({
 PagingState<int, Bookmark> pagingState, Map<String, bool> visibleAnswers, Map<String, bool> forbidRemoval, Exception? error
});




}
/// @nodoc
class __$BookmarkReviewStateCopyWithImpl<$Res>
    implements _$BookmarkReviewStateCopyWith<$Res> {
  __$BookmarkReviewStateCopyWithImpl(this._self, this._then);

  final _BookmarkReviewState _self;
  final $Res Function(_BookmarkReviewState) _then;

/// Create a copy of BookmarkReviewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagingState = null,Object? visibleAnswers = null,Object? forbidRemoval = null,Object? error = freezed,}) {
  return _then(_BookmarkReviewState(
pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState<int, Bookmark>,visibleAnswers: null == visibleAnswers ? _self._visibleAnswers : visibleAnswers // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,forbidRemoval: null == forbidRemoval ? _self._forbidRemoval : forbidRemoval // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
