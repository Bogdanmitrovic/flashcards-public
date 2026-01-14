// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_ids_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FlashcardIdsDto {

 List<String> get flashcardIds;
/// Create a copy of FlashcardIdsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlashcardIdsDtoCopyWith<FlashcardIdsDto> get copyWith => _$FlashcardIdsDtoCopyWithImpl<FlashcardIdsDto>(this as FlashcardIdsDto, _$identity);

  /// Serializes this FlashcardIdsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlashcardIdsDto&&const DeepCollectionEquality().equals(other.flashcardIds, flashcardIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(flashcardIds));

@override
String toString() {
  return 'FlashcardIdsDto(flashcardIds: $flashcardIds)';
}


}

/// @nodoc
abstract mixin class $FlashcardIdsDtoCopyWith<$Res>  {
  factory $FlashcardIdsDtoCopyWith(FlashcardIdsDto value, $Res Function(FlashcardIdsDto) _then) = _$FlashcardIdsDtoCopyWithImpl;
@useResult
$Res call({
 List<String> flashcardIds
});




}
/// @nodoc
class _$FlashcardIdsDtoCopyWithImpl<$Res>
    implements $FlashcardIdsDtoCopyWith<$Res> {
  _$FlashcardIdsDtoCopyWithImpl(this._self, this._then);

  final FlashcardIdsDto _self;
  final $Res Function(FlashcardIdsDto) _then;

/// Create a copy of FlashcardIdsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? flashcardIds = null,}) {
  return _then(_self.copyWith(
flashcardIds: null == flashcardIds ? _self.flashcardIds : flashcardIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [FlashcardIdsDto].
extension FlashcardIdsDtoPatterns on FlashcardIdsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlashcardIdsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlashcardIdsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlashcardIdsDto value)  $default,){
final _that = this;
switch (_that) {
case _FlashcardIdsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlashcardIdsDto value)?  $default,){
final _that = this;
switch (_that) {
case _FlashcardIdsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> flashcardIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlashcardIdsDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> flashcardIds)  $default,) {final _that = this;
switch (_that) {
case _FlashcardIdsDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> flashcardIds)?  $default,) {final _that = this;
switch (_that) {
case _FlashcardIdsDto() when $default != null:
return $default(_that.flashcardIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FlashcardIdsDto implements FlashcardIdsDto {
  const _FlashcardIdsDto({required final  List<String> flashcardIds}): _flashcardIds = flashcardIds;
  factory _FlashcardIdsDto.fromJson(Map<String, dynamic> json) => _$FlashcardIdsDtoFromJson(json);

 final  List<String> _flashcardIds;
@override List<String> get flashcardIds {
  if (_flashcardIds is EqualUnmodifiableListView) return _flashcardIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_flashcardIds);
}


/// Create a copy of FlashcardIdsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlashcardIdsDtoCopyWith<_FlashcardIdsDto> get copyWith => __$FlashcardIdsDtoCopyWithImpl<_FlashcardIdsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlashcardIdsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlashcardIdsDto&&const DeepCollectionEquality().equals(other._flashcardIds, _flashcardIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_flashcardIds));

@override
String toString() {
  return 'FlashcardIdsDto(flashcardIds: $flashcardIds)';
}


}

/// @nodoc
abstract mixin class _$FlashcardIdsDtoCopyWith<$Res> implements $FlashcardIdsDtoCopyWith<$Res> {
  factory _$FlashcardIdsDtoCopyWith(_FlashcardIdsDto value, $Res Function(_FlashcardIdsDto) _then) = __$FlashcardIdsDtoCopyWithImpl;
@override @useResult
$Res call({
 List<String> flashcardIds
});




}
/// @nodoc
class __$FlashcardIdsDtoCopyWithImpl<$Res>
    implements _$FlashcardIdsDtoCopyWith<$Res> {
  __$FlashcardIdsDtoCopyWithImpl(this._self, this._then);

  final _FlashcardIdsDto _self;
  final $Res Function(_FlashcardIdsDto) _then;

/// Create a copy of FlashcardIdsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? flashcardIds = null,}) {
  return _then(_FlashcardIdsDto(
flashcardIds: null == flashcardIds ? _self._flashcardIds : flashcardIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
