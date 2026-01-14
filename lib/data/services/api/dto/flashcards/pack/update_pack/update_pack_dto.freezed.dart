// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_pack_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdatePackDto {

 String? get name;@JsonKey(includeFromJson: false, includeToJson: false) FlashcardIdsPatchDto? get flashcardIdsPatchDto; int? get flashcardsCount; Map<String, int>? get tagCounts; List<String>? get tags;
/// Create a copy of UpdatePackDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePackDtoCopyWith<UpdatePackDto> get copyWith => _$UpdatePackDtoCopyWithImpl<UpdatePackDto>(this as UpdatePackDto, _$identity);

  /// Serializes this UpdatePackDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePackDto&&(identical(other.name, name) || other.name == name)&&(identical(other.flashcardIdsPatchDto, flashcardIdsPatchDto) || other.flashcardIdsPatchDto == flashcardIdsPatchDto)&&(identical(other.flashcardsCount, flashcardsCount) || other.flashcardsCount == flashcardsCount)&&const DeepCollectionEquality().equals(other.tagCounts, tagCounts)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,flashcardIdsPatchDto,flashcardsCount,const DeepCollectionEquality().hash(tagCounts),const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'UpdatePackDto(name: $name, flashcardIdsPatchDto: $flashcardIdsPatchDto, flashcardsCount: $flashcardsCount, tagCounts: $tagCounts, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $UpdatePackDtoCopyWith<$Res>  {
  factory $UpdatePackDtoCopyWith(UpdatePackDto value, $Res Function(UpdatePackDto) _then) = _$UpdatePackDtoCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(includeFromJson: false, includeToJson: false) FlashcardIdsPatchDto? flashcardIdsPatchDto, int? flashcardsCount, Map<String, int>? tagCounts, List<String>? tags
});


$FlashcardIdsPatchDtoCopyWith<$Res>? get flashcardIdsPatchDto;

}
/// @nodoc
class _$UpdatePackDtoCopyWithImpl<$Res>
    implements $UpdatePackDtoCopyWith<$Res> {
  _$UpdatePackDtoCopyWithImpl(this._self, this._then);

  final UpdatePackDto _self;
  final $Res Function(UpdatePackDto) _then;

/// Create a copy of UpdatePackDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? flashcardIdsPatchDto = freezed,Object? flashcardsCount = freezed,Object? tagCounts = freezed,Object? tags = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,flashcardIdsPatchDto: freezed == flashcardIdsPatchDto ? _self.flashcardIdsPatchDto : flashcardIdsPatchDto // ignore: cast_nullable_to_non_nullable
as FlashcardIdsPatchDto?,flashcardsCount: freezed == flashcardsCount ? _self.flashcardsCount : flashcardsCount // ignore: cast_nullable_to_non_nullable
as int?,tagCounts: freezed == tagCounts ? _self.tagCounts : tagCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of UpdatePackDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlashcardIdsPatchDtoCopyWith<$Res>? get flashcardIdsPatchDto {
    if (_self.flashcardIdsPatchDto == null) {
    return null;
  }

  return $FlashcardIdsPatchDtoCopyWith<$Res>(_self.flashcardIdsPatchDto!, (value) {
    return _then(_self.copyWith(flashcardIdsPatchDto: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdatePackDto].
extension UpdatePackDtoPatterns on UpdatePackDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatePackDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatePackDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatePackDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdatePackDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatePackDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatePackDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(includeFromJson: false, includeToJson: false)  FlashcardIdsPatchDto? flashcardIdsPatchDto,  int? flashcardsCount,  Map<String, int>? tagCounts,  List<String>? tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatePackDto() when $default != null:
return $default(_that.name,_that.flashcardIdsPatchDto,_that.flashcardsCount,_that.tagCounts,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(includeFromJson: false, includeToJson: false)  FlashcardIdsPatchDto? flashcardIdsPatchDto,  int? flashcardsCount,  Map<String, int>? tagCounts,  List<String>? tags)  $default,) {final _that = this;
switch (_that) {
case _UpdatePackDto():
return $default(_that.name,_that.flashcardIdsPatchDto,_that.flashcardsCount,_that.tagCounts,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(includeFromJson: false, includeToJson: false)  FlashcardIdsPatchDto? flashcardIdsPatchDto,  int? flashcardsCount,  Map<String, int>? tagCounts,  List<String>? tags)?  $default,) {final _that = this;
switch (_that) {
case _UpdatePackDto() when $default != null:
return $default(_that.name,_that.flashcardIdsPatchDto,_that.flashcardsCount,_that.tagCounts,_that.tags);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _UpdatePackDto implements UpdatePackDto {
  const _UpdatePackDto({this.name, @JsonKey(includeFromJson: false, includeToJson: false) this.flashcardIdsPatchDto, this.flashcardsCount, final  Map<String, int>? tagCounts, final  List<String>? tags}): _tagCounts = tagCounts,_tags = tags;
  factory _UpdatePackDto.fromJson(Map<String, dynamic> json) => _$UpdatePackDtoFromJson(json);

@override final  String? name;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  FlashcardIdsPatchDto? flashcardIdsPatchDto;
@override final  int? flashcardsCount;
 final  Map<String, int>? _tagCounts;
@override Map<String, int>? get tagCounts {
  final value = _tagCounts;
  if (value == null) return null;
  if (_tagCounts is EqualUnmodifiableMapView) return _tagCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UpdatePackDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePackDtoCopyWith<_UpdatePackDto> get copyWith => __$UpdatePackDtoCopyWithImpl<_UpdatePackDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdatePackDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePackDto&&(identical(other.name, name) || other.name == name)&&(identical(other.flashcardIdsPatchDto, flashcardIdsPatchDto) || other.flashcardIdsPatchDto == flashcardIdsPatchDto)&&(identical(other.flashcardsCount, flashcardsCount) || other.flashcardsCount == flashcardsCount)&&const DeepCollectionEquality().equals(other._tagCounts, _tagCounts)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,flashcardIdsPatchDto,flashcardsCount,const DeepCollectionEquality().hash(_tagCounts),const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'UpdatePackDto(name: $name, flashcardIdsPatchDto: $flashcardIdsPatchDto, flashcardsCount: $flashcardsCount, tagCounts: $tagCounts, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$UpdatePackDtoCopyWith<$Res> implements $UpdatePackDtoCopyWith<$Res> {
  factory _$UpdatePackDtoCopyWith(_UpdatePackDto value, $Res Function(_UpdatePackDto) _then) = __$UpdatePackDtoCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(includeFromJson: false, includeToJson: false) FlashcardIdsPatchDto? flashcardIdsPatchDto, int? flashcardsCount, Map<String, int>? tagCounts, List<String>? tags
});


@override $FlashcardIdsPatchDtoCopyWith<$Res>? get flashcardIdsPatchDto;

}
/// @nodoc
class __$UpdatePackDtoCopyWithImpl<$Res>
    implements _$UpdatePackDtoCopyWith<$Res> {
  __$UpdatePackDtoCopyWithImpl(this._self, this._then);

  final _UpdatePackDto _self;
  final $Res Function(_UpdatePackDto) _then;

/// Create a copy of UpdatePackDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? flashcardIdsPatchDto = freezed,Object? flashcardsCount = freezed,Object? tagCounts = freezed,Object? tags = freezed,}) {
  return _then(_UpdatePackDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,flashcardIdsPatchDto: freezed == flashcardIdsPatchDto ? _self.flashcardIdsPatchDto : flashcardIdsPatchDto // ignore: cast_nullable_to_non_nullable
as FlashcardIdsPatchDto?,flashcardsCount: freezed == flashcardsCount ? _self.flashcardsCount : flashcardsCount // ignore: cast_nullable_to_non_nullable
as int?,tagCounts: freezed == tagCounts ? _self._tagCounts : tagCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of UpdatePackDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlashcardIdsPatchDtoCopyWith<$Res>? get flashcardIdsPatchDto {
    if (_self.flashcardIdsPatchDto == null) {
    return null;
  }

  return $FlashcardIdsPatchDtoCopyWith<$Res>(_self.flashcardIdsPatchDto!, (value) {
    return _then(_self.copyWith(flashcardIdsPatchDto: value));
  });
}
}

// dart format on
