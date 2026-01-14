// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckDto {

 String get text; bool get isTitle; int get index; int get score;
/// Create a copy of CheckDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckDtoCopyWith<CheckDto> get copyWith => _$CheckDtoCopyWithImpl<CheckDto>(this as CheckDto, _$identity);

  /// Serializes this CheckDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckDto&&(identical(other.text, text) || other.text == text)&&(identical(other.isTitle, isTitle) || other.isTitle == isTitle)&&(identical(other.index, index) || other.index == index)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,isTitle,index,score);

@override
String toString() {
  return 'CheckDto(text: $text, isTitle: $isTitle, index: $index, score: $score)';
}


}

/// @nodoc
abstract mixin class $CheckDtoCopyWith<$Res>  {
  factory $CheckDtoCopyWith(CheckDto value, $Res Function(CheckDto) _then) = _$CheckDtoCopyWithImpl;
@useResult
$Res call({
 String text, bool isTitle, int index, int score
});




}
/// @nodoc
class _$CheckDtoCopyWithImpl<$Res>
    implements $CheckDtoCopyWith<$Res> {
  _$CheckDtoCopyWithImpl(this._self, this._then);

  final CheckDto _self;
  final $Res Function(CheckDto) _then;

/// Create a copy of CheckDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? isTitle = null,Object? index = null,Object? score = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isTitle: null == isTitle ? _self.isTitle : isTitle // ignore: cast_nullable_to_non_nullable
as bool,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckDto].
extension CheckDtoPatterns on CheckDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckDto value)  $default,){
final _that = this;
switch (_that) {
case _CheckDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckDto value)?  $default,){
final _that = this;
switch (_that) {
case _CheckDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  bool isTitle,  int index,  int score)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckDto() when $default != null:
return $default(_that.text,_that.isTitle,_that.index,_that.score);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  bool isTitle,  int index,  int score)  $default,) {final _that = this;
switch (_that) {
case _CheckDto():
return $default(_that.text,_that.isTitle,_that.index,_that.score);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  bool isTitle,  int index,  int score)?  $default,) {final _that = this;
switch (_that) {
case _CheckDto() when $default != null:
return $default(_that.text,_that.isTitle,_that.index,_that.score);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckDto implements CheckDto {
  const _CheckDto({required this.text, required this.isTitle, required this.index, this.score = 1});
  factory _CheckDto.fromJson(Map<String, dynamic> json) => _$CheckDtoFromJson(json);

@override final  String text;
@override final  bool isTitle;
@override final  int index;
@override@JsonKey() final  int score;

/// Create a copy of CheckDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckDtoCopyWith<_CheckDto> get copyWith => __$CheckDtoCopyWithImpl<_CheckDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckDto&&(identical(other.text, text) || other.text == text)&&(identical(other.isTitle, isTitle) || other.isTitle == isTitle)&&(identical(other.index, index) || other.index == index)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,isTitle,index,score);

@override
String toString() {
  return 'CheckDto(text: $text, isTitle: $isTitle, index: $index, score: $score)';
}


}

/// @nodoc
abstract mixin class _$CheckDtoCopyWith<$Res> implements $CheckDtoCopyWith<$Res> {
  factory _$CheckDtoCopyWith(_CheckDto value, $Res Function(_CheckDto) _then) = __$CheckDtoCopyWithImpl;
@override @useResult
$Res call({
 String text, bool isTitle, int index, int score
});




}
/// @nodoc
class __$CheckDtoCopyWithImpl<$Res>
    implements _$CheckDtoCopyWith<$Res> {
  __$CheckDtoCopyWithImpl(this._self, this._then);

  final _CheckDto _self;
  final $Res Function(_CheckDto) _then;

/// Create a copy of CheckDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? isTitle = null,Object? index = null,Object? score = null,}) {
  return _then(_CheckDto(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isTitle: null == isTitle ? _self.isTitle : isTitle // ignore: cast_nullable_to_non_nullable
as bool,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
