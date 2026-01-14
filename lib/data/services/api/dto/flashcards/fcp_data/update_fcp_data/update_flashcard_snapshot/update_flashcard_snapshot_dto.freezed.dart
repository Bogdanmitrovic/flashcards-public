// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_flashcard_snapshot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateFlashcardSnapshotDto {

 String? get packId; String? get question; String? get answer; List<String>? get tags;
/// Create a copy of UpdateFlashcardSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFlashcardSnapshotDtoCopyWith<UpdateFlashcardSnapshotDto> get copyWith => _$UpdateFlashcardSnapshotDtoCopyWithImpl<UpdateFlashcardSnapshotDto>(this as UpdateFlashcardSnapshotDto, _$identity);

  /// Serializes this UpdateFlashcardSnapshotDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFlashcardSnapshotDto&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packId,question,answer,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'UpdateFlashcardSnapshotDto(packId: $packId, question: $question, answer: $answer, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $UpdateFlashcardSnapshotDtoCopyWith<$Res>  {
  factory $UpdateFlashcardSnapshotDtoCopyWith(UpdateFlashcardSnapshotDto value, $Res Function(UpdateFlashcardSnapshotDto) _then) = _$UpdateFlashcardSnapshotDtoCopyWithImpl;
@useResult
$Res call({
 String? packId, String? question, String? answer, List<String>? tags
});




}
/// @nodoc
class _$UpdateFlashcardSnapshotDtoCopyWithImpl<$Res>
    implements $UpdateFlashcardSnapshotDtoCopyWith<$Res> {
  _$UpdateFlashcardSnapshotDtoCopyWithImpl(this._self, this._then);

  final UpdateFlashcardSnapshotDto _self;
  final $Res Function(UpdateFlashcardSnapshotDto) _then;

/// Create a copy of UpdateFlashcardSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packId = freezed,Object? question = freezed,Object? answer = freezed,Object? tags = freezed,}) {
  return _then(_self.copyWith(
packId: freezed == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateFlashcardSnapshotDto].
extension UpdateFlashcardSnapshotDtoPatterns on UpdateFlashcardSnapshotDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFlashcardSnapshotDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFlashcardSnapshotDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFlashcardSnapshotDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFlashcardSnapshotDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFlashcardSnapshotDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFlashcardSnapshotDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? packId,  String? question,  String? answer,  List<String>? tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFlashcardSnapshotDto() when $default != null:
return $default(_that.packId,_that.question,_that.answer,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? packId,  String? question,  String? answer,  List<String>? tags)  $default,) {final _that = this;
switch (_that) {
case _UpdateFlashcardSnapshotDto():
return $default(_that.packId,_that.question,_that.answer,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? packId,  String? question,  String? answer,  List<String>? tags)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFlashcardSnapshotDto() when $default != null:
return $default(_that.packId,_that.question,_that.answer,_that.tags);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _UpdateFlashcardSnapshotDto implements UpdateFlashcardSnapshotDto {
  const _UpdateFlashcardSnapshotDto({this.packId, this.question, this.answer, final  List<String>? tags}): _tags = tags;
  factory _UpdateFlashcardSnapshotDto.fromJson(Map<String, dynamic> json) => _$UpdateFlashcardSnapshotDtoFromJson(json);

@override final  String? packId;
@override final  String? question;
@override final  String? answer;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UpdateFlashcardSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFlashcardSnapshotDtoCopyWith<_UpdateFlashcardSnapshotDto> get copyWith => __$UpdateFlashcardSnapshotDtoCopyWithImpl<_UpdateFlashcardSnapshotDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateFlashcardSnapshotDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFlashcardSnapshotDto&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packId,question,answer,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'UpdateFlashcardSnapshotDto(packId: $packId, question: $question, answer: $answer, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$UpdateFlashcardSnapshotDtoCopyWith<$Res> implements $UpdateFlashcardSnapshotDtoCopyWith<$Res> {
  factory _$UpdateFlashcardSnapshotDtoCopyWith(_UpdateFlashcardSnapshotDto value, $Res Function(_UpdateFlashcardSnapshotDto) _then) = __$UpdateFlashcardSnapshotDtoCopyWithImpl;
@override @useResult
$Res call({
 String? packId, String? question, String? answer, List<String>? tags
});




}
/// @nodoc
class __$UpdateFlashcardSnapshotDtoCopyWithImpl<$Res>
    implements _$UpdateFlashcardSnapshotDtoCopyWith<$Res> {
  __$UpdateFlashcardSnapshotDtoCopyWithImpl(this._self, this._then);

  final _UpdateFlashcardSnapshotDto _self;
  final $Res Function(_UpdateFlashcardSnapshotDto) _then;

/// Create a copy of UpdateFlashcardSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packId = freezed,Object? question = freezed,Object? answer = freezed,Object? tags = freezed,}) {
  return _then(_UpdateFlashcardSnapshotDto(
packId: freezed == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
