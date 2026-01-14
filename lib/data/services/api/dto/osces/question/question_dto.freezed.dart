// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestionDto {

@JsonKey(includeToJson: false) String? get id; String? get imageDownloadUrl; String get text; List<CheckDto> get checks; int get index;
/// Create a copy of QuestionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionDtoCopyWith<QuestionDto> get copyWith => _$QuestionDtoCopyWithImpl<QuestionDto>(this as QuestionDto, _$identity);

  /// Serializes this QuestionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.imageDownloadUrl, imageDownloadUrl) || other.imageDownloadUrl == imageDownloadUrl)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.checks, checks)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageDownloadUrl,text,const DeepCollectionEquality().hash(checks),index);

@override
String toString() {
  return 'QuestionDto(id: $id, imageDownloadUrl: $imageDownloadUrl, text: $text, checks: $checks, index: $index)';
}


}

/// @nodoc
abstract mixin class $QuestionDtoCopyWith<$Res>  {
  factory $QuestionDtoCopyWith(QuestionDto value, $Res Function(QuestionDto) _then) = _$QuestionDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) String? id, String? imageDownloadUrl, String text, List<CheckDto> checks, int index
});




}
/// @nodoc
class _$QuestionDtoCopyWithImpl<$Res>
    implements $QuestionDtoCopyWith<$Res> {
  _$QuestionDtoCopyWithImpl(this._self, this._then);

  final QuestionDto _self;
  final $Res Function(QuestionDto) _then;

/// Create a copy of QuestionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? imageDownloadUrl = freezed,Object? text = null,Object? checks = null,Object? index = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,imageDownloadUrl: freezed == imageDownloadUrl ? _self.imageDownloadUrl : imageDownloadUrl // ignore: cast_nullable_to_non_nullable
as String?,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,checks: null == checks ? _self.checks : checks // ignore: cast_nullable_to_non_nullable
as List<CheckDto>,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionDto].
extension QuestionDtoPatterns on QuestionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionDto value)  $default,){
final _that = this;
switch (_that) {
case _QuestionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false)  String? id,  String? imageDownloadUrl,  String text,  List<CheckDto> checks,  int index)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionDto() when $default != null:
return $default(_that.id,_that.imageDownloadUrl,_that.text,_that.checks,_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false)  String? id,  String? imageDownloadUrl,  String text,  List<CheckDto> checks,  int index)  $default,) {final _that = this;
switch (_that) {
case _QuestionDto():
return $default(_that.id,_that.imageDownloadUrl,_that.text,_that.checks,_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeToJson: false)  String? id,  String? imageDownloadUrl,  String text,  List<CheckDto> checks,  int index)?  $default,) {final _that = this;
switch (_that) {
case _QuestionDto() when $default != null:
return $default(_that.id,_that.imageDownloadUrl,_that.text,_that.checks,_that.index);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _QuestionDto implements QuestionDto {
  const _QuestionDto({@JsonKey(includeToJson: false) this.id, this.imageDownloadUrl = null, required this.text, required final  List<CheckDto> checks, required this.index}): _checks = checks;
  factory _QuestionDto.fromJson(Map<String, dynamic> json) => _$QuestionDtoFromJson(json);

@override@JsonKey(includeToJson: false) final  String? id;
@override@JsonKey() final  String? imageDownloadUrl;
@override final  String text;
 final  List<CheckDto> _checks;
@override List<CheckDto> get checks {
  if (_checks is EqualUnmodifiableListView) return _checks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_checks);
}

@override final  int index;

/// Create a copy of QuestionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionDtoCopyWith<_QuestionDto> get copyWith => __$QuestionDtoCopyWithImpl<_QuestionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.imageDownloadUrl, imageDownloadUrl) || other.imageDownloadUrl == imageDownloadUrl)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other._checks, _checks)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageDownloadUrl,text,const DeepCollectionEquality().hash(_checks),index);

@override
String toString() {
  return 'QuestionDto(id: $id, imageDownloadUrl: $imageDownloadUrl, text: $text, checks: $checks, index: $index)';
}


}

/// @nodoc
abstract mixin class _$QuestionDtoCopyWith<$Res> implements $QuestionDtoCopyWith<$Res> {
  factory _$QuestionDtoCopyWith(_QuestionDto value, $Res Function(_QuestionDto) _then) = __$QuestionDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false) String? id, String? imageDownloadUrl, String text, List<CheckDto> checks, int index
});




}
/// @nodoc
class __$QuestionDtoCopyWithImpl<$Res>
    implements _$QuestionDtoCopyWith<$Res> {
  __$QuestionDtoCopyWithImpl(this._self, this._then);

  final _QuestionDto _self;
  final $Res Function(_QuestionDto) _then;

/// Create a copy of QuestionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? imageDownloadUrl = freezed,Object? text = null,Object? checks = null,Object? index = null,}) {
  return _then(_QuestionDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,imageDownloadUrl: freezed == imageDownloadUrl ? _self.imageDownloadUrl : imageDownloadUrl // ignore: cast_nullable_to_non_nullable
as String?,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,checks: null == checks ? _self._checks : checks // ignore: cast_nullable_to_non_nullable
as List<CheckDto>,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
