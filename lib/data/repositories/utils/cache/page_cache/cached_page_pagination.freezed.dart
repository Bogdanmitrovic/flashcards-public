// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cached_page_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CachedPagePagination<T> {

 List<T> get data; DateTime get fetchedAt; DocumentSnapshot<JsonMap>? get lastDocument;
/// Create a copy of CachedPagePagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CachedPagePaginationCopyWith<T, CachedPagePagination<T>> get copyWith => _$CachedPagePaginationCopyWithImpl<T, CachedPagePagination<T>>(this as CachedPagePagination<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CachedPagePagination<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.fetchedAt, fetchedAt) || other.fetchedAt == fetchedAt)&&(identical(other.lastDocument, lastDocument) || other.lastDocument == lastDocument));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),fetchedAt,lastDocument);

@override
String toString() {
  return 'CachedPagePagination<$T>(data: $data, fetchedAt: $fetchedAt, lastDocument: $lastDocument)';
}


}

/// @nodoc
abstract mixin class $CachedPagePaginationCopyWith<T,$Res>  {
  factory $CachedPagePaginationCopyWith(CachedPagePagination<T> value, $Res Function(CachedPagePagination<T>) _then) = _$CachedPagePaginationCopyWithImpl;
@useResult
$Res call({
 List<T> data, DateTime fetchedAt, DocumentSnapshot<JsonMap>? lastDocument
});




}
/// @nodoc
class _$CachedPagePaginationCopyWithImpl<T,$Res>
    implements $CachedPagePaginationCopyWith<T, $Res> {
  _$CachedPagePaginationCopyWithImpl(this._self, this._then);

  final CachedPagePagination<T> _self;
  final $Res Function(CachedPagePagination<T>) _then;

/// Create a copy of CachedPagePagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? fetchedAt = null,Object? lastDocument = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>,fetchedAt: null == fetchedAt ? _self.fetchedAt : fetchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastDocument: freezed == lastDocument ? _self.lastDocument : lastDocument // ignore: cast_nullable_to_non_nullable
as DocumentSnapshot<JsonMap>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CachedPagePagination].
extension CachedPagePaginationPatterns<T> on CachedPagePagination<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CachedPagePagination<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CachedPagePagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CachedPagePagination<T> value)  $default,){
final _that = this;
switch (_that) {
case _CachedPagePagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CachedPagePagination<T> value)?  $default,){
final _that = this;
switch (_that) {
case _CachedPagePagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> data,  DateTime fetchedAt,  DocumentSnapshot<JsonMap>? lastDocument)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CachedPagePagination() when $default != null:
return $default(_that.data,_that.fetchedAt,_that.lastDocument);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> data,  DateTime fetchedAt,  DocumentSnapshot<JsonMap>? lastDocument)  $default,) {final _that = this;
switch (_that) {
case _CachedPagePagination():
return $default(_that.data,_that.fetchedAt,_that.lastDocument);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> data,  DateTime fetchedAt,  DocumentSnapshot<JsonMap>? lastDocument)?  $default,) {final _that = this;
switch (_that) {
case _CachedPagePagination() when $default != null:
return $default(_that.data,_that.fetchedAt,_that.lastDocument);case _:
  return null;

}
}

}

/// @nodoc


class _CachedPagePagination<T> implements CachedPagePagination<T> {
  const _CachedPagePagination({required final  List<T> data, required this.fetchedAt, required this.lastDocument}): _data = data;
  

 final  List<T> _data;
@override List<T> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  DateTime fetchedAt;
@override final  DocumentSnapshot<JsonMap>? lastDocument;

/// Create a copy of CachedPagePagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CachedPagePaginationCopyWith<T, _CachedPagePagination<T>> get copyWith => __$CachedPagePaginationCopyWithImpl<T, _CachedPagePagination<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CachedPagePagination<T>&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.fetchedAt, fetchedAt) || other.fetchedAt == fetchedAt)&&(identical(other.lastDocument, lastDocument) || other.lastDocument == lastDocument));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),fetchedAt,lastDocument);

@override
String toString() {
  return 'CachedPagePagination<$T>(data: $data, fetchedAt: $fetchedAt, lastDocument: $lastDocument)';
}


}

/// @nodoc
abstract mixin class _$CachedPagePaginationCopyWith<T,$Res> implements $CachedPagePaginationCopyWith<T, $Res> {
  factory _$CachedPagePaginationCopyWith(_CachedPagePagination<T> value, $Res Function(_CachedPagePagination<T>) _then) = __$CachedPagePaginationCopyWithImpl;
@override @useResult
$Res call({
 List<T> data, DateTime fetchedAt, DocumentSnapshot<JsonMap>? lastDocument
});




}
/// @nodoc
class __$CachedPagePaginationCopyWithImpl<T,$Res>
    implements _$CachedPagePaginationCopyWith<T, $Res> {
  __$CachedPagePaginationCopyWithImpl(this._self, this._then);

  final _CachedPagePagination<T> _self;
  final $Res Function(_CachedPagePagination<T>) _then;

/// Create a copy of CachedPagePagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? fetchedAt = null,Object? lastDocument = freezed,}) {
  return _then(_CachedPagePagination<T>(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>,fetchedAt: null == fetchedAt ? _self.fetchedAt : fetchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastDocument: freezed == lastDocument ? _self.lastDocument : lastDocument // ignore: cast_nullable_to_non_nullable
as DocumentSnapshot<JsonMap>?,
  ));
}


}

// dart format on
