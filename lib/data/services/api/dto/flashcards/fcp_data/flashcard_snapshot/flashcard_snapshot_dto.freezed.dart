// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_snapshot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FlashcardSnapshotDto {

 String get packId; String get question; String get answer; String? get questionImageUrl; String? get answerImageUrl; List<String> get tags;
/// Create a copy of FlashcardSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlashcardSnapshotDtoCopyWith<FlashcardSnapshotDto> get copyWith => _$FlashcardSnapshotDtoCopyWithImpl<FlashcardSnapshotDto>(this as FlashcardSnapshotDto, _$identity);

  /// Serializes this FlashcardSnapshotDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlashcardSnapshotDto&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.questionImageUrl, questionImageUrl) || other.questionImageUrl == questionImageUrl)&&(identical(other.answerImageUrl, answerImageUrl) || other.answerImageUrl == answerImageUrl)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packId,question,answer,questionImageUrl,answerImageUrl,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'FlashcardSnapshotDto(packId: $packId, question: $question, answer: $answer, questionImageUrl: $questionImageUrl, answerImageUrl: $answerImageUrl, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $FlashcardSnapshotDtoCopyWith<$Res>  {
  factory $FlashcardSnapshotDtoCopyWith(FlashcardSnapshotDto value, $Res Function(FlashcardSnapshotDto) _then) = _$FlashcardSnapshotDtoCopyWithImpl;
@useResult
$Res call({
 String packId, String question, String answer, String? questionImageUrl, String? answerImageUrl, List<String> tags
});




}
/// @nodoc
class _$FlashcardSnapshotDtoCopyWithImpl<$Res>
    implements $FlashcardSnapshotDtoCopyWith<$Res> {
  _$FlashcardSnapshotDtoCopyWithImpl(this._self, this._then);

  final FlashcardSnapshotDto _self;
  final $Res Function(FlashcardSnapshotDto) _then;

/// Create a copy of FlashcardSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packId = null,Object? question = null,Object? answer = null,Object? questionImageUrl = freezed,Object? answerImageUrl = freezed,Object? tags = null,}) {
  return _then(_self.copyWith(
packId: null == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,questionImageUrl: freezed == questionImageUrl ? _self.questionImageUrl : questionImageUrl // ignore: cast_nullable_to_non_nullable
as String?,answerImageUrl: freezed == answerImageUrl ? _self.answerImageUrl : answerImageUrl // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [FlashcardSnapshotDto].
extension FlashcardSnapshotDtoPatterns on FlashcardSnapshotDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlashcardSnapshotDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlashcardSnapshotDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlashcardSnapshotDto value)  $default,){
final _that = this;
switch (_that) {
case _FlashcardSnapshotDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlashcardSnapshotDto value)?  $default,){
final _that = this;
switch (_that) {
case _FlashcardSnapshotDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String packId,  String question,  String answer,  String? questionImageUrl,  String? answerImageUrl,  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlashcardSnapshotDto() when $default != null:
return $default(_that.packId,_that.question,_that.answer,_that.questionImageUrl,_that.answerImageUrl,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String packId,  String question,  String answer,  String? questionImageUrl,  String? answerImageUrl,  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _FlashcardSnapshotDto():
return $default(_that.packId,_that.question,_that.answer,_that.questionImageUrl,_that.answerImageUrl,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String packId,  String question,  String answer,  String? questionImageUrl,  String? answerImageUrl,  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _FlashcardSnapshotDto() when $default != null:
return $default(_that.packId,_that.question,_that.answer,_that.questionImageUrl,_that.answerImageUrl,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FlashcardSnapshotDto implements FlashcardSnapshotDto {
  const _FlashcardSnapshotDto({required this.packId, required this.question, required this.answer, required this.questionImageUrl, required this.answerImageUrl, final  List<String> tags = const []}): _tags = tags;
  factory _FlashcardSnapshotDto.fromJson(Map<String, dynamic> json) => _$FlashcardSnapshotDtoFromJson(json);

@override final  String packId;
@override final  String question;
@override final  String answer;
@override final  String? questionImageUrl;
@override final  String? answerImageUrl;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of FlashcardSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlashcardSnapshotDtoCopyWith<_FlashcardSnapshotDto> get copyWith => __$FlashcardSnapshotDtoCopyWithImpl<_FlashcardSnapshotDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlashcardSnapshotDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlashcardSnapshotDto&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.questionImageUrl, questionImageUrl) || other.questionImageUrl == questionImageUrl)&&(identical(other.answerImageUrl, answerImageUrl) || other.answerImageUrl == answerImageUrl)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packId,question,answer,questionImageUrl,answerImageUrl,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'FlashcardSnapshotDto(packId: $packId, question: $question, answer: $answer, questionImageUrl: $questionImageUrl, answerImageUrl: $answerImageUrl, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$FlashcardSnapshotDtoCopyWith<$Res> implements $FlashcardSnapshotDtoCopyWith<$Res> {
  factory _$FlashcardSnapshotDtoCopyWith(_FlashcardSnapshotDto value, $Res Function(_FlashcardSnapshotDto) _then) = __$FlashcardSnapshotDtoCopyWithImpl;
@override @useResult
$Res call({
 String packId, String question, String answer, String? questionImageUrl, String? answerImageUrl, List<String> tags
});




}
/// @nodoc
class __$FlashcardSnapshotDtoCopyWithImpl<$Res>
    implements _$FlashcardSnapshotDtoCopyWith<$Res> {
  __$FlashcardSnapshotDtoCopyWithImpl(this._self, this._then);

  final _FlashcardSnapshotDto _self;
  final $Res Function(_FlashcardSnapshotDto) _then;

/// Create a copy of FlashcardSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packId = null,Object? question = null,Object? answer = null,Object? questionImageUrl = freezed,Object? answerImageUrl = freezed,Object? tags = null,}) {
  return _then(_FlashcardSnapshotDto(
packId: null == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,questionImageUrl: freezed == questionImageUrl ? _self.questionImageUrl : questionImageUrl // ignore: cast_nullable_to_non_nullable
as String?,answerImageUrl: freezed == answerImageUrl ? _self.answerImageUrl : answerImageUrl // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
