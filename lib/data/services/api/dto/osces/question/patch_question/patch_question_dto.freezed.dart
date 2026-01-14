// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_question_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchQuestionDto {

 String? get imageDownloadUrl; String? get text; List<CheckDto>? get checks; int? get index;
/// Create a copy of PatchQuestionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchQuestionDtoCopyWith<PatchQuestionDto> get copyWith => _$PatchQuestionDtoCopyWithImpl<PatchQuestionDto>(this as PatchQuestionDto, _$identity);

  /// Serializes this PatchQuestionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchQuestionDto&&(identical(other.imageDownloadUrl, imageDownloadUrl) || other.imageDownloadUrl == imageDownloadUrl)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.checks, checks)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageDownloadUrl,text,const DeepCollectionEquality().hash(checks),index);

@override
String toString() {
  return 'PatchQuestionDto(imageDownloadUrl: $imageDownloadUrl, text: $text, checks: $checks, index: $index)';
}


}

/// @nodoc
abstract mixin class $PatchQuestionDtoCopyWith<$Res>  {
  factory $PatchQuestionDtoCopyWith(PatchQuestionDto value, $Res Function(PatchQuestionDto) _then) = _$PatchQuestionDtoCopyWithImpl;
@useResult
$Res call({
 String? imageDownloadUrl, String? text, List<CheckDto>? checks, int? index
});




}
/// @nodoc
class _$PatchQuestionDtoCopyWithImpl<$Res>
    implements $PatchQuestionDtoCopyWith<$Res> {
  _$PatchQuestionDtoCopyWithImpl(this._self, this._then);

  final PatchQuestionDto _self;
  final $Res Function(PatchQuestionDto) _then;

/// Create a copy of PatchQuestionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageDownloadUrl = freezed,Object? text = freezed,Object? checks = freezed,Object? index = freezed,}) {
  return _then(_self.copyWith(
imageDownloadUrl: freezed == imageDownloadUrl ? _self.imageDownloadUrl : imageDownloadUrl // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,checks: freezed == checks ? _self.checks : checks // ignore: cast_nullable_to_non_nullable
as List<CheckDto>?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchQuestionDto].
extension PatchQuestionDtoPatterns on PatchQuestionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchQuestionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchQuestionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchQuestionDto value)  $default,){
final _that = this;
switch (_that) {
case _PatchQuestionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchQuestionDto value)?  $default,){
final _that = this;
switch (_that) {
case _PatchQuestionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imageDownloadUrl,  String? text,  List<CheckDto>? checks,  int? index)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchQuestionDto() when $default != null:
return $default(_that.imageDownloadUrl,_that.text,_that.checks,_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imageDownloadUrl,  String? text,  List<CheckDto>? checks,  int? index)  $default,) {final _that = this;
switch (_that) {
case _PatchQuestionDto():
return $default(_that.imageDownloadUrl,_that.text,_that.checks,_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imageDownloadUrl,  String? text,  List<CheckDto>? checks,  int? index)?  $default,) {final _that = this;
switch (_that) {
case _PatchQuestionDto() when $default != null:
return $default(_that.imageDownloadUrl,_that.text,_that.checks,_that.index);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _PatchQuestionDto implements PatchQuestionDto {
  const _PatchQuestionDto({this.imageDownloadUrl, this.text, final  List<CheckDto>? checks, this.index}): _checks = checks;
  factory _PatchQuestionDto.fromJson(Map<String, dynamic> json) => _$PatchQuestionDtoFromJson(json);

@override final  String? imageDownloadUrl;
@override final  String? text;
 final  List<CheckDto>? _checks;
@override List<CheckDto>? get checks {
  final value = _checks;
  if (value == null) return null;
  if (_checks is EqualUnmodifiableListView) return _checks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? index;

/// Create a copy of PatchQuestionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchQuestionDtoCopyWith<_PatchQuestionDto> get copyWith => __$PatchQuestionDtoCopyWithImpl<_PatchQuestionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchQuestionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchQuestionDto&&(identical(other.imageDownloadUrl, imageDownloadUrl) || other.imageDownloadUrl == imageDownloadUrl)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other._checks, _checks)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageDownloadUrl,text,const DeepCollectionEquality().hash(_checks),index);

@override
String toString() {
  return 'PatchQuestionDto(imageDownloadUrl: $imageDownloadUrl, text: $text, checks: $checks, index: $index)';
}


}

/// @nodoc
abstract mixin class _$PatchQuestionDtoCopyWith<$Res> implements $PatchQuestionDtoCopyWith<$Res> {
  factory _$PatchQuestionDtoCopyWith(_PatchQuestionDto value, $Res Function(_PatchQuestionDto) _then) = __$PatchQuestionDtoCopyWithImpl;
@override @useResult
$Res call({
 String? imageDownloadUrl, String? text, List<CheckDto>? checks, int? index
});




}
/// @nodoc
class __$PatchQuestionDtoCopyWithImpl<$Res>
    implements _$PatchQuestionDtoCopyWith<$Res> {
  __$PatchQuestionDtoCopyWithImpl(this._self, this._then);

  final _PatchQuestionDto _self;
  final $Res Function(_PatchQuestionDto) _then;

/// Create a copy of PatchQuestionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageDownloadUrl = freezed,Object? text = freezed,Object? checks = freezed,Object? index = freezed,}) {
  return _then(_PatchQuestionDto(
imageDownloadUrl: freezed == imageDownloadUrl ? _self.imageDownloadUrl : imageDownloadUrl // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,checks: freezed == checks ? _self._checks : checks // ignore: cast_nullable_to_non_nullable
as List<CheckDto>?,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
