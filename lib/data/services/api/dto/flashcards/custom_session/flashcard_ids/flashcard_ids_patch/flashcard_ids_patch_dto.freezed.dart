// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_ids_patch_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FlashcardIdsPatchDto {

 List<String>? get flashcardIds;
/// Create a copy of FlashcardIdsPatchDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlashcardIdsPatchDtoCopyWith<FlashcardIdsPatchDto> get copyWith => _$FlashcardIdsPatchDtoCopyWithImpl<FlashcardIdsPatchDto>(this as FlashcardIdsPatchDto, _$identity);

  /// Serializes this FlashcardIdsPatchDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlashcardIdsPatchDto&&const DeepCollectionEquality().equals(other.flashcardIds, flashcardIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(flashcardIds));

@override
String toString() {
  return 'FlashcardIdsPatchDto(flashcardIds: $flashcardIds)';
}


}

/// @nodoc
abstract mixin class $FlashcardIdsPatchDtoCopyWith<$Res>  {
  factory $FlashcardIdsPatchDtoCopyWith(FlashcardIdsPatchDto value, $Res Function(FlashcardIdsPatchDto) _then) = _$FlashcardIdsPatchDtoCopyWithImpl;
@useResult
$Res call({
 List<String>? flashcardIds
});




}
/// @nodoc
class _$FlashcardIdsPatchDtoCopyWithImpl<$Res>
    implements $FlashcardIdsPatchDtoCopyWith<$Res> {
  _$FlashcardIdsPatchDtoCopyWithImpl(this._self, this._then);

  final FlashcardIdsPatchDto _self;
  final $Res Function(FlashcardIdsPatchDto) _then;

/// Create a copy of FlashcardIdsPatchDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? flashcardIds = freezed,}) {
  return _then(_self.copyWith(
flashcardIds: freezed == flashcardIds ? _self.flashcardIds : flashcardIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FlashcardIdsPatchDto].
extension FlashcardIdsPatchDtoPatterns on FlashcardIdsPatchDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlashcardIdsPatchDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlashcardIdsPatchDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlashcardIdsPatchDto value)  $default,){
final _that = this;
switch (_that) {
case _FlashcardIdsPatchDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlashcardIdsPatchDto value)?  $default,){
final _that = this;
switch (_that) {
case _FlashcardIdsPatchDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String>? flashcardIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlashcardIdsPatchDto() when $default != null:
return $default(_that.flashcardIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String>? flashcardIds)  $default,) {final _that = this;
switch (_that) {
case _FlashcardIdsPatchDto():
return $default(_that.flashcardIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String>? flashcardIds)?  $default,) {final _that = this;
switch (_that) {
case _FlashcardIdsPatchDto() when $default != null:
return $default(_that.flashcardIds);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _FlashcardIdsPatchDto implements FlashcardIdsPatchDto {
  const _FlashcardIdsPatchDto({final  List<String>? flashcardIds}): _flashcardIds = flashcardIds;
  factory _FlashcardIdsPatchDto.fromJson(Map<String, dynamic> json) => _$FlashcardIdsPatchDtoFromJson(json);

 final  List<String>? _flashcardIds;
@override List<String>? get flashcardIds {
  final value = _flashcardIds;
  if (value == null) return null;
  if (_flashcardIds is EqualUnmodifiableListView) return _flashcardIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FlashcardIdsPatchDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlashcardIdsPatchDtoCopyWith<_FlashcardIdsPatchDto> get copyWith => __$FlashcardIdsPatchDtoCopyWithImpl<_FlashcardIdsPatchDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlashcardIdsPatchDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlashcardIdsPatchDto&&const DeepCollectionEquality().equals(other._flashcardIds, _flashcardIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_flashcardIds));

@override
String toString() {
  return 'FlashcardIdsPatchDto(flashcardIds: $flashcardIds)';
}


}

/// @nodoc
abstract mixin class _$FlashcardIdsPatchDtoCopyWith<$Res> implements $FlashcardIdsPatchDtoCopyWith<$Res> {
  factory _$FlashcardIdsPatchDtoCopyWith(_FlashcardIdsPatchDto value, $Res Function(_FlashcardIdsPatchDto) _then) = __$FlashcardIdsPatchDtoCopyWithImpl;
@override @useResult
$Res call({
 List<String>? flashcardIds
});




}
/// @nodoc
class __$FlashcardIdsPatchDtoCopyWithImpl<$Res>
    implements _$FlashcardIdsPatchDtoCopyWith<$Res> {
  __$FlashcardIdsPatchDtoCopyWithImpl(this._self, this._then);

  final _FlashcardIdsPatchDto _self;
  final $Res Function(_FlashcardIdsPatchDto) _then;

/// Create a copy of FlashcardIdsPatchDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? flashcardIds = freezed,}) {
  return _then(_FlashcardIdsPatchDto(
flashcardIds: freezed == flashcardIds ? _self._flashcardIds : flashcardIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
