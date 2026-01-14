// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'algolia_pack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AlgoliaPack {

 String get objectID; String get name; List<String> get tags; bool get isPaid;
/// Create a copy of AlgoliaPack
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlgoliaPackCopyWith<AlgoliaPack> get copyWith => _$AlgoliaPackCopyWithImpl<AlgoliaPack>(this as AlgoliaPack, _$identity);

  /// Serializes this AlgoliaPack to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlgoliaPack&&(identical(other.objectID, objectID) || other.objectID == objectID)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectID,name,const DeepCollectionEquality().hash(tags),isPaid);

@override
String toString() {
  return 'AlgoliaPack(objectID: $objectID, name: $name, tags: $tags, isPaid: $isPaid)';
}


}

/// @nodoc
abstract mixin class $AlgoliaPackCopyWith<$Res>  {
  factory $AlgoliaPackCopyWith(AlgoliaPack value, $Res Function(AlgoliaPack) _then) = _$AlgoliaPackCopyWithImpl;
@useResult
$Res call({
 String objectID, String name, List<String> tags, bool isPaid
});




}
/// @nodoc
class _$AlgoliaPackCopyWithImpl<$Res>
    implements $AlgoliaPackCopyWith<$Res> {
  _$AlgoliaPackCopyWithImpl(this._self, this._then);

  final AlgoliaPack _self;
  final $Res Function(AlgoliaPack) _then;

/// Create a copy of AlgoliaPack
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectID = null,Object? name = null,Object? tags = null,Object? isPaid = null,}) {
  return _then(_self.copyWith(
objectID: null == objectID ? _self.objectID : objectID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AlgoliaPack].
extension AlgoliaPackPatterns on AlgoliaPack {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlgoliaPack value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlgoliaPack() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlgoliaPack value)  $default,){
final _that = this;
switch (_that) {
case _AlgoliaPack():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlgoliaPack value)?  $default,){
final _that = this;
switch (_that) {
case _AlgoliaPack() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String objectID,  String name,  List<String> tags,  bool isPaid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlgoliaPack() when $default != null:
return $default(_that.objectID,_that.name,_that.tags,_that.isPaid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String objectID,  String name,  List<String> tags,  bool isPaid)  $default,) {final _that = this;
switch (_that) {
case _AlgoliaPack():
return $default(_that.objectID,_that.name,_that.tags,_that.isPaid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String objectID,  String name,  List<String> tags,  bool isPaid)?  $default,) {final _that = this;
switch (_that) {
case _AlgoliaPack() when $default != null:
return $default(_that.objectID,_that.name,_that.tags,_that.isPaid);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlgoliaPack implements AlgoliaPack {
  const _AlgoliaPack({required this.objectID, required this.name, required final  List<String> tags, required this.isPaid}): _tags = tags;
  factory _AlgoliaPack.fromJson(Map<String, dynamic> json) => _$AlgoliaPackFromJson(json);

@override final  String objectID;
@override final  String name;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  bool isPaid;

/// Create a copy of AlgoliaPack
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlgoliaPackCopyWith<_AlgoliaPack> get copyWith => __$AlgoliaPackCopyWithImpl<_AlgoliaPack>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlgoliaPackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlgoliaPack&&(identical(other.objectID, objectID) || other.objectID == objectID)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectID,name,const DeepCollectionEquality().hash(_tags),isPaid);

@override
String toString() {
  return 'AlgoliaPack(objectID: $objectID, name: $name, tags: $tags, isPaid: $isPaid)';
}


}

/// @nodoc
abstract mixin class _$AlgoliaPackCopyWith<$Res> implements $AlgoliaPackCopyWith<$Res> {
  factory _$AlgoliaPackCopyWith(_AlgoliaPack value, $Res Function(_AlgoliaPack) _then) = __$AlgoliaPackCopyWithImpl;
@override @useResult
$Res call({
 String objectID, String name, List<String> tags, bool isPaid
});




}
/// @nodoc
class __$AlgoliaPackCopyWithImpl<$Res>
    implements _$AlgoliaPackCopyWith<$Res> {
  __$AlgoliaPackCopyWithImpl(this._self, this._then);

  final _AlgoliaPack _self;
  final $Res Function(_AlgoliaPack) _then;

/// Create a copy of AlgoliaPack
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectID = null,Object? name = null,Object? tags = null,Object? isPaid = null,}) {
  return _then(_AlgoliaPack(
objectID: null == objectID ? _self.objectID : objectID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
