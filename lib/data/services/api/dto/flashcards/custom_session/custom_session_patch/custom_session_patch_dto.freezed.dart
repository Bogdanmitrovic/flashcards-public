// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_session_patch_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomSessionPatchDto {

 int? get correctCount; int? get currentIndex;
/// Create a copy of CustomSessionPatchDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomSessionPatchDtoCopyWith<CustomSessionPatchDto> get copyWith => _$CustomSessionPatchDtoCopyWithImpl<CustomSessionPatchDto>(this as CustomSessionPatchDto, _$identity);

  /// Serializes this CustomSessionPatchDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomSessionPatchDto&&(identical(other.correctCount, correctCount) || other.correctCount == correctCount)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,correctCount,currentIndex);

@override
String toString() {
  return 'CustomSessionPatchDto(correctCount: $correctCount, currentIndex: $currentIndex)';
}


}

/// @nodoc
abstract mixin class $CustomSessionPatchDtoCopyWith<$Res>  {
  factory $CustomSessionPatchDtoCopyWith(CustomSessionPatchDto value, $Res Function(CustomSessionPatchDto) _then) = _$CustomSessionPatchDtoCopyWithImpl;
@useResult
$Res call({
 int? correctCount, int? currentIndex
});




}
/// @nodoc
class _$CustomSessionPatchDtoCopyWithImpl<$Res>
    implements $CustomSessionPatchDtoCopyWith<$Res> {
  _$CustomSessionPatchDtoCopyWithImpl(this._self, this._then);

  final CustomSessionPatchDto _self;
  final $Res Function(CustomSessionPatchDto) _then;

/// Create a copy of CustomSessionPatchDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? correctCount = freezed,Object? currentIndex = freezed,}) {
  return _then(_self.copyWith(
correctCount: freezed == correctCount ? _self.correctCount : correctCount // ignore: cast_nullable_to_non_nullable
as int?,currentIndex: freezed == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomSessionPatchDto].
extension CustomSessionPatchDtoPatterns on CustomSessionPatchDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomSessionPatchDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomSessionPatchDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomSessionPatchDto value)  $default,){
final _that = this;
switch (_that) {
case _CustomSessionPatchDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomSessionPatchDto value)?  $default,){
final _that = this;
switch (_that) {
case _CustomSessionPatchDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? correctCount,  int? currentIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomSessionPatchDto() when $default != null:
return $default(_that.correctCount,_that.currentIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? correctCount,  int? currentIndex)  $default,) {final _that = this;
switch (_that) {
case _CustomSessionPatchDto():
return $default(_that.correctCount,_that.currentIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? correctCount,  int? currentIndex)?  $default,) {final _that = this;
switch (_that) {
case _CustomSessionPatchDto() when $default != null:
return $default(_that.correctCount,_that.currentIndex);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _CustomSessionPatchDto implements CustomSessionPatchDto {
  const _CustomSessionPatchDto({this.correctCount, this.currentIndex});
  factory _CustomSessionPatchDto.fromJson(Map<String, dynamic> json) => _$CustomSessionPatchDtoFromJson(json);

@override final  int? correctCount;
@override final  int? currentIndex;

/// Create a copy of CustomSessionPatchDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomSessionPatchDtoCopyWith<_CustomSessionPatchDto> get copyWith => __$CustomSessionPatchDtoCopyWithImpl<_CustomSessionPatchDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomSessionPatchDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomSessionPatchDto&&(identical(other.correctCount, correctCount) || other.correctCount == correctCount)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,correctCount,currentIndex);

@override
String toString() {
  return 'CustomSessionPatchDto(correctCount: $correctCount, currentIndex: $currentIndex)';
}


}

/// @nodoc
abstract mixin class _$CustomSessionPatchDtoCopyWith<$Res> implements $CustomSessionPatchDtoCopyWith<$Res> {
  factory _$CustomSessionPatchDtoCopyWith(_CustomSessionPatchDto value, $Res Function(_CustomSessionPatchDto) _then) = __$CustomSessionPatchDtoCopyWithImpl;
@override @useResult
$Res call({
 int? correctCount, int? currentIndex
});




}
/// @nodoc
class __$CustomSessionPatchDtoCopyWithImpl<$Res>
    implements _$CustomSessionPatchDtoCopyWith<$Res> {
  __$CustomSessionPatchDtoCopyWithImpl(this._self, this._then);

  final _CustomSessionPatchDto _self;
  final $Res Function(_CustomSessionPatchDto) _then;

/// Create a copy of CustomSessionPatchDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? correctCount = freezed,Object? currentIndex = freezed,}) {
  return _then(_CustomSessionPatchDto(
correctCount: freezed == correctCount ? _self.correctCount : correctCount // ignore: cast_nullable_to_non_nullable
as int?,currentIndex: freezed == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
