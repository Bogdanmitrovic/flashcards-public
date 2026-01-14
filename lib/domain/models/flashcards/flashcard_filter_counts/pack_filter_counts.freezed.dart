// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pack_filter_counts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PackFilterCounts {

 int get allCount; int get seenCount; int get bookmarkedCount; int get ignoredCount;
/// Create a copy of PackFilterCounts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackFilterCountsCopyWith<PackFilterCounts> get copyWith => _$PackFilterCountsCopyWithImpl<PackFilterCounts>(this as PackFilterCounts, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackFilterCounts&&(identical(other.allCount, allCount) || other.allCount == allCount)&&(identical(other.seenCount, seenCount) || other.seenCount == seenCount)&&(identical(other.bookmarkedCount, bookmarkedCount) || other.bookmarkedCount == bookmarkedCount)&&(identical(other.ignoredCount, ignoredCount) || other.ignoredCount == ignoredCount));
}


@override
int get hashCode => Object.hash(runtimeType,allCount,seenCount,bookmarkedCount,ignoredCount);

@override
String toString() {
  return 'PackFilterCounts(allCount: $allCount, seenCount: $seenCount, bookmarkedCount: $bookmarkedCount, ignoredCount: $ignoredCount)';
}


}

/// @nodoc
abstract mixin class $PackFilterCountsCopyWith<$Res>  {
  factory $PackFilterCountsCopyWith(PackFilterCounts value, $Res Function(PackFilterCounts) _then) = _$PackFilterCountsCopyWithImpl;
@useResult
$Res call({
 int allCount, int seenCount, int bookmarkedCount, int ignoredCount
});




}
/// @nodoc
class _$PackFilterCountsCopyWithImpl<$Res>
    implements $PackFilterCountsCopyWith<$Res> {
  _$PackFilterCountsCopyWithImpl(this._self, this._then);

  final PackFilterCounts _self;
  final $Res Function(PackFilterCounts) _then;

/// Create a copy of PackFilterCounts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allCount = null,Object? seenCount = null,Object? bookmarkedCount = null,Object? ignoredCount = null,}) {
  return _then(_self.copyWith(
allCount: null == allCount ? _self.allCount : allCount // ignore: cast_nullable_to_non_nullable
as int,seenCount: null == seenCount ? _self.seenCount : seenCount // ignore: cast_nullable_to_non_nullable
as int,bookmarkedCount: null == bookmarkedCount ? _self.bookmarkedCount : bookmarkedCount // ignore: cast_nullable_to_non_nullable
as int,ignoredCount: null == ignoredCount ? _self.ignoredCount : ignoredCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PackFilterCounts].
extension PackFilterCountsPatterns on PackFilterCounts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackFilterCounts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackFilterCounts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackFilterCounts value)  $default,){
final _that = this;
switch (_that) {
case _PackFilterCounts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackFilterCounts value)?  $default,){
final _that = this;
switch (_that) {
case _PackFilterCounts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int allCount,  int seenCount,  int bookmarkedCount,  int ignoredCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackFilterCounts() when $default != null:
return $default(_that.allCount,_that.seenCount,_that.bookmarkedCount,_that.ignoredCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int allCount,  int seenCount,  int bookmarkedCount,  int ignoredCount)  $default,) {final _that = this;
switch (_that) {
case _PackFilterCounts():
return $default(_that.allCount,_that.seenCount,_that.bookmarkedCount,_that.ignoredCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int allCount,  int seenCount,  int bookmarkedCount,  int ignoredCount)?  $default,) {final _that = this;
switch (_that) {
case _PackFilterCounts() when $default != null:
return $default(_that.allCount,_that.seenCount,_that.bookmarkedCount,_that.ignoredCount);case _:
  return null;

}
}

}

/// @nodoc


class _PackFilterCounts implements PackFilterCounts {
  const _PackFilterCounts({required this.allCount, required this.seenCount, required this.bookmarkedCount, required this.ignoredCount});
  

@override final  int allCount;
@override final  int seenCount;
@override final  int bookmarkedCount;
@override final  int ignoredCount;

/// Create a copy of PackFilterCounts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackFilterCountsCopyWith<_PackFilterCounts> get copyWith => __$PackFilterCountsCopyWithImpl<_PackFilterCounts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackFilterCounts&&(identical(other.allCount, allCount) || other.allCount == allCount)&&(identical(other.seenCount, seenCount) || other.seenCount == seenCount)&&(identical(other.bookmarkedCount, bookmarkedCount) || other.bookmarkedCount == bookmarkedCount)&&(identical(other.ignoredCount, ignoredCount) || other.ignoredCount == ignoredCount));
}


@override
int get hashCode => Object.hash(runtimeType,allCount,seenCount,bookmarkedCount,ignoredCount);

@override
String toString() {
  return 'PackFilterCounts(allCount: $allCount, seenCount: $seenCount, bookmarkedCount: $bookmarkedCount, ignoredCount: $ignoredCount)';
}


}

/// @nodoc
abstract mixin class _$PackFilterCountsCopyWith<$Res> implements $PackFilterCountsCopyWith<$Res> {
  factory _$PackFilterCountsCopyWith(_PackFilterCounts value, $Res Function(_PackFilterCounts) _then) = __$PackFilterCountsCopyWithImpl;
@override @useResult
$Res call({
 int allCount, int seenCount, int bookmarkedCount, int ignoredCount
});




}
/// @nodoc
class __$PackFilterCountsCopyWithImpl<$Res>
    implements _$PackFilterCountsCopyWith<$Res> {
  __$PackFilterCountsCopyWithImpl(this._self, this._then);

  final _PackFilterCounts _self;
  final $Res Function(_PackFilterCounts) _then;

/// Create a copy of PackFilterCounts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allCount = null,Object? seenCount = null,Object? bookmarkedCount = null,Object? ignoredCount = null,}) {
  return _then(_PackFilterCounts(
allCount: null == allCount ? _self.allCount : allCount // ignore: cast_nullable_to_non_nullable
as int,seenCount: null == seenCount ? _self.seenCount : seenCount // ignore: cast_nullable_to_non_nullable
as int,bookmarkedCount: null == bookmarkedCount ? _self.bookmarkedCount : bookmarkedCount // ignore: cast_nullable_to_non_nullable
as int,ignoredCount: null == ignoredCount ? _self.ignoredCount : ignoredCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
