// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_with_tags.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchResultWithTags<T> {

 List<T> get hits; List<MapEntry<Tag, int>> get tagCounts; int get pageKey; int? get nextPageKey; bool get isLastPage; int get hitCount;
/// Create a copy of SearchResultWithTags
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultWithTagsCopyWith<T, SearchResultWithTags<T>> get copyWith => _$SearchResultWithTagsCopyWithImpl<T, SearchResultWithTags<T>>(this as SearchResultWithTags<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultWithTags<T>&&const DeepCollectionEquality().equals(other.hits, hits)&&const DeepCollectionEquality().equals(other.tagCounts, tagCounts)&&(identical(other.pageKey, pageKey) || other.pageKey == pageKey)&&(identical(other.nextPageKey, nextPageKey) || other.nextPageKey == nextPageKey)&&(identical(other.isLastPage, isLastPage) || other.isLastPage == isLastPage)&&(identical(other.hitCount, hitCount) || other.hitCount == hitCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(hits),const DeepCollectionEquality().hash(tagCounts),pageKey,nextPageKey,isLastPage,hitCount);

@override
String toString() {
  return 'SearchResultWithTags<$T>(hits: $hits, tagCounts: $tagCounts, pageKey: $pageKey, nextPageKey: $nextPageKey, isLastPage: $isLastPage, hitCount: $hitCount)';
}


}

/// @nodoc
abstract mixin class $SearchResultWithTagsCopyWith<T,$Res>  {
  factory $SearchResultWithTagsCopyWith(SearchResultWithTags<T> value, $Res Function(SearchResultWithTags<T>) _then) = _$SearchResultWithTagsCopyWithImpl;
@useResult
$Res call({
 List<T> hits, List<MapEntry<Tag, int>> tagCounts, int pageKey, int? nextPageKey, bool isLastPage, int hitCount
});




}
/// @nodoc
class _$SearchResultWithTagsCopyWithImpl<T,$Res>
    implements $SearchResultWithTagsCopyWith<T, $Res> {
  _$SearchResultWithTagsCopyWithImpl(this._self, this._then);

  final SearchResultWithTags<T> _self;
  final $Res Function(SearchResultWithTags<T>) _then;

/// Create a copy of SearchResultWithTags
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hits = null,Object? tagCounts = null,Object? pageKey = null,Object? nextPageKey = freezed,Object? isLastPage = null,Object? hitCount = null,}) {
  return _then(_self.copyWith(
hits: null == hits ? _self.hits : hits // ignore: cast_nullable_to_non_nullable
as List<T>,tagCounts: null == tagCounts ? _self.tagCounts : tagCounts // ignore: cast_nullable_to_non_nullable
as List<MapEntry<Tag, int>>,pageKey: null == pageKey ? _self.pageKey : pageKey // ignore: cast_nullable_to_non_nullable
as int,nextPageKey: freezed == nextPageKey ? _self.nextPageKey : nextPageKey // ignore: cast_nullable_to_non_nullable
as int?,isLastPage: null == isLastPage ? _self.isLastPage : isLastPage // ignore: cast_nullable_to_non_nullable
as bool,hitCount: null == hitCount ? _self.hitCount : hitCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchResultWithTags].
extension SearchResultWithTagsPatterns<T> on SearchResultWithTags<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResultWithTags<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResultWithTags() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResultWithTags<T> value)  $default,){
final _that = this;
switch (_that) {
case _SearchResultWithTags():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResultWithTags<T> value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResultWithTags() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> hits,  List<MapEntry<Tag, int>> tagCounts,  int pageKey,  int? nextPageKey,  bool isLastPage,  int hitCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResultWithTags() when $default != null:
return $default(_that.hits,_that.tagCounts,_that.pageKey,_that.nextPageKey,_that.isLastPage,_that.hitCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> hits,  List<MapEntry<Tag, int>> tagCounts,  int pageKey,  int? nextPageKey,  bool isLastPage,  int hitCount)  $default,) {final _that = this;
switch (_that) {
case _SearchResultWithTags():
return $default(_that.hits,_that.tagCounts,_that.pageKey,_that.nextPageKey,_that.isLastPage,_that.hitCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> hits,  List<MapEntry<Tag, int>> tagCounts,  int pageKey,  int? nextPageKey,  bool isLastPage,  int hitCount)?  $default,) {final _that = this;
switch (_that) {
case _SearchResultWithTags() when $default != null:
return $default(_that.hits,_that.tagCounts,_that.pageKey,_that.nextPageKey,_that.isLastPage,_that.hitCount);case _:
  return null;

}
}

}

/// @nodoc


class _SearchResultWithTags<T> implements SearchResultWithTags<T> {
  const _SearchResultWithTags({required final  List<T> hits, required final  List<MapEntry<Tag, int>> tagCounts, required this.pageKey, required this.nextPageKey, required this.isLastPage, required this.hitCount}): _hits = hits,_tagCounts = tagCounts;
  

 final  List<T> _hits;
@override List<T> get hits {
  if (_hits is EqualUnmodifiableListView) return _hits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hits);
}

 final  List<MapEntry<Tag, int>> _tagCounts;
@override List<MapEntry<Tag, int>> get tagCounts {
  if (_tagCounts is EqualUnmodifiableListView) return _tagCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tagCounts);
}

@override final  int pageKey;
@override final  int? nextPageKey;
@override final  bool isLastPage;
@override final  int hitCount;

/// Create a copy of SearchResultWithTags
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResultWithTagsCopyWith<T, _SearchResultWithTags<T>> get copyWith => __$SearchResultWithTagsCopyWithImpl<T, _SearchResultWithTags<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResultWithTags<T>&&const DeepCollectionEquality().equals(other._hits, _hits)&&const DeepCollectionEquality().equals(other._tagCounts, _tagCounts)&&(identical(other.pageKey, pageKey) || other.pageKey == pageKey)&&(identical(other.nextPageKey, nextPageKey) || other.nextPageKey == nextPageKey)&&(identical(other.isLastPage, isLastPage) || other.isLastPage == isLastPage)&&(identical(other.hitCount, hitCount) || other.hitCount == hitCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_hits),const DeepCollectionEquality().hash(_tagCounts),pageKey,nextPageKey,isLastPage,hitCount);

@override
String toString() {
  return 'SearchResultWithTags<$T>(hits: $hits, tagCounts: $tagCounts, pageKey: $pageKey, nextPageKey: $nextPageKey, isLastPage: $isLastPage, hitCount: $hitCount)';
}


}

/// @nodoc
abstract mixin class _$SearchResultWithTagsCopyWith<T,$Res> implements $SearchResultWithTagsCopyWith<T, $Res> {
  factory _$SearchResultWithTagsCopyWith(_SearchResultWithTags<T> value, $Res Function(_SearchResultWithTags<T>) _then) = __$SearchResultWithTagsCopyWithImpl;
@override @useResult
$Res call({
 List<T> hits, List<MapEntry<Tag, int>> tagCounts, int pageKey, int? nextPageKey, bool isLastPage, int hitCount
});




}
/// @nodoc
class __$SearchResultWithTagsCopyWithImpl<T,$Res>
    implements _$SearchResultWithTagsCopyWith<T, $Res> {
  __$SearchResultWithTagsCopyWithImpl(this._self, this._then);

  final _SearchResultWithTags<T> _self;
  final $Res Function(_SearchResultWithTags<T>) _then;

/// Create a copy of SearchResultWithTags
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hits = null,Object? tagCounts = null,Object? pageKey = null,Object? nextPageKey = freezed,Object? isLastPage = null,Object? hitCount = null,}) {
  return _then(_SearchResultWithTags<T>(
hits: null == hits ? _self._hits : hits // ignore: cast_nullable_to_non_nullable
as List<T>,tagCounts: null == tagCounts ? _self._tagCounts : tagCounts // ignore: cast_nullable_to_non_nullable
as List<MapEntry<Tag, int>>,pageKey: null == pageKey ? _self.pageKey : pageKey // ignore: cast_nullable_to_non_nullable
as int,nextPageKey: freezed == nextPageKey ? _self.nextPageKey : nextPageKey // ignore: cast_nullable_to_non_nullable
as int?,isLastPage: null == isLastPage ? _self.isLastPage : isLastPage // ignore: cast_nullable_to_non_nullable
as bool,hitCount: null == hitCount ? _self.hitCount : hitCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
