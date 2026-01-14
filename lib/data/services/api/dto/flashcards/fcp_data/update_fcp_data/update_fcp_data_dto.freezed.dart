// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_fcp_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateFcpDataDto {

 String? get profileId; String? get flashcardId; bool? get hasBookmark; bool? get ignored;@JsonKey(name: _snapshotFieldName) UpdateFlashcardSnapshotDto? get updateFlashcardSnapshotDto;@JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic) Card? get fsrsCard;
/// Create a copy of UpdateFcpDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFcpDataDtoCopyWith<UpdateFcpDataDto> get copyWith => _$UpdateFcpDataDtoCopyWithImpl<UpdateFcpDataDto>(this as UpdateFcpDataDto, _$identity);

  /// Serializes this UpdateFcpDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFcpDataDto&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.flashcardId, flashcardId) || other.flashcardId == flashcardId)&&(identical(other.hasBookmark, hasBookmark) || other.hasBookmark == hasBookmark)&&(identical(other.ignored, ignored) || other.ignored == ignored)&&(identical(other.updateFlashcardSnapshotDto, updateFlashcardSnapshotDto) || other.updateFlashcardSnapshotDto == updateFlashcardSnapshotDto)&&(identical(other.fsrsCard, fsrsCard) || other.fsrsCard == fsrsCard));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileId,flashcardId,hasBookmark,ignored,updateFlashcardSnapshotDto,fsrsCard);

@override
String toString() {
  return 'UpdateFcpDataDto(profileId: $profileId, flashcardId: $flashcardId, hasBookmark: $hasBookmark, ignored: $ignored, updateFlashcardSnapshotDto: $updateFlashcardSnapshotDto, fsrsCard: $fsrsCard)';
}


}

/// @nodoc
abstract mixin class $UpdateFcpDataDtoCopyWith<$Res>  {
  factory $UpdateFcpDataDtoCopyWith(UpdateFcpDataDto value, $Res Function(UpdateFcpDataDto) _then) = _$UpdateFcpDataDtoCopyWithImpl;
@useResult
$Res call({
 String? profileId, String? flashcardId, bool? hasBookmark, bool? ignored,@JsonKey(name: _snapshotFieldName) UpdateFlashcardSnapshotDto? updateFlashcardSnapshotDto,@JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic) Card? fsrsCard
});


$UpdateFlashcardSnapshotDtoCopyWith<$Res>? get updateFlashcardSnapshotDto;

}
/// @nodoc
class _$UpdateFcpDataDtoCopyWithImpl<$Res>
    implements $UpdateFcpDataDtoCopyWith<$Res> {
  _$UpdateFcpDataDtoCopyWithImpl(this._self, this._then);

  final UpdateFcpDataDto _self;
  final $Res Function(UpdateFcpDataDto) _then;

/// Create a copy of UpdateFcpDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profileId = freezed,Object? flashcardId = freezed,Object? hasBookmark = freezed,Object? ignored = freezed,Object? updateFlashcardSnapshotDto = freezed,Object? fsrsCard = freezed,}) {
  return _then(_self.copyWith(
profileId: freezed == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String?,flashcardId: freezed == flashcardId ? _self.flashcardId : flashcardId // ignore: cast_nullable_to_non_nullable
as String?,hasBookmark: freezed == hasBookmark ? _self.hasBookmark : hasBookmark // ignore: cast_nullable_to_non_nullable
as bool?,ignored: freezed == ignored ? _self.ignored : ignored // ignore: cast_nullable_to_non_nullable
as bool?,updateFlashcardSnapshotDto: freezed == updateFlashcardSnapshotDto ? _self.updateFlashcardSnapshotDto : updateFlashcardSnapshotDto // ignore: cast_nullable_to_non_nullable
as UpdateFlashcardSnapshotDto?,fsrsCard: freezed == fsrsCard ? _self.fsrsCard : fsrsCard // ignore: cast_nullable_to_non_nullable
as Card?,
  ));
}
/// Create a copy of UpdateFcpDataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateFlashcardSnapshotDtoCopyWith<$Res>? get updateFlashcardSnapshotDto {
    if (_self.updateFlashcardSnapshotDto == null) {
    return null;
  }

  return $UpdateFlashcardSnapshotDtoCopyWith<$Res>(_self.updateFlashcardSnapshotDto!, (value) {
    return _then(_self.copyWith(updateFlashcardSnapshotDto: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateFcpDataDto].
extension UpdateFcpDataDtoPatterns on UpdateFcpDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFcpDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFcpDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFcpDataDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFcpDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFcpDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFcpDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? profileId,  String? flashcardId,  bool? hasBookmark,  bool? ignored, @JsonKey(name: _snapshotFieldName)  UpdateFlashcardSnapshotDto? updateFlashcardSnapshotDto, @JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic)  Card? fsrsCard)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFcpDataDto() when $default != null:
return $default(_that.profileId,_that.flashcardId,_that.hasBookmark,_that.ignored,_that.updateFlashcardSnapshotDto,_that.fsrsCard);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? profileId,  String? flashcardId,  bool? hasBookmark,  bool? ignored, @JsonKey(name: _snapshotFieldName)  UpdateFlashcardSnapshotDto? updateFlashcardSnapshotDto, @JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic)  Card? fsrsCard)  $default,) {final _that = this;
switch (_that) {
case _UpdateFcpDataDto():
return $default(_that.profileId,_that.flashcardId,_that.hasBookmark,_that.ignored,_that.updateFlashcardSnapshotDto,_that.fsrsCard);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? profileId,  String? flashcardId,  bool? hasBookmark,  bool? ignored, @JsonKey(name: _snapshotFieldName)  UpdateFlashcardSnapshotDto? updateFlashcardSnapshotDto, @JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic)  Card? fsrsCard)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFcpDataDto() when $default != null:
return $default(_that.profileId,_that.flashcardId,_that.hasBookmark,_that.ignored,_that.updateFlashcardSnapshotDto,_that.fsrsCard);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _UpdateFcpDataDto implements UpdateFcpDataDto {
  const _UpdateFcpDataDto({this.profileId, this.flashcardId, this.hasBookmark, this.ignored, @JsonKey(name: _snapshotFieldName) this.updateFlashcardSnapshotDto, @JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic) this.fsrsCard});
  factory _UpdateFcpDataDto.fromJson(Map<String, dynamic> json) => _$UpdateFcpDataDtoFromJson(json);

@override final  String? profileId;
@override final  String? flashcardId;
@override final  bool? hasBookmark;
@override final  bool? ignored;
@override@JsonKey(name: _snapshotFieldName) final  UpdateFlashcardSnapshotDto? updateFlashcardSnapshotDto;
@override@JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic) final  Card? fsrsCard;

/// Create a copy of UpdateFcpDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFcpDataDtoCopyWith<_UpdateFcpDataDto> get copyWith => __$UpdateFcpDataDtoCopyWithImpl<_UpdateFcpDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateFcpDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFcpDataDto&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.flashcardId, flashcardId) || other.flashcardId == flashcardId)&&(identical(other.hasBookmark, hasBookmark) || other.hasBookmark == hasBookmark)&&(identical(other.ignored, ignored) || other.ignored == ignored)&&(identical(other.updateFlashcardSnapshotDto, updateFlashcardSnapshotDto) || other.updateFlashcardSnapshotDto == updateFlashcardSnapshotDto)&&(identical(other.fsrsCard, fsrsCard) || other.fsrsCard == fsrsCard));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileId,flashcardId,hasBookmark,ignored,updateFlashcardSnapshotDto,fsrsCard);

@override
String toString() {
  return 'UpdateFcpDataDto(profileId: $profileId, flashcardId: $flashcardId, hasBookmark: $hasBookmark, ignored: $ignored, updateFlashcardSnapshotDto: $updateFlashcardSnapshotDto, fsrsCard: $fsrsCard)';
}


}

/// @nodoc
abstract mixin class _$UpdateFcpDataDtoCopyWith<$Res> implements $UpdateFcpDataDtoCopyWith<$Res> {
  factory _$UpdateFcpDataDtoCopyWith(_UpdateFcpDataDto value, $Res Function(_UpdateFcpDataDto) _then) = __$UpdateFcpDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String? profileId, String? flashcardId, bool? hasBookmark, bool? ignored,@JsonKey(name: _snapshotFieldName) UpdateFlashcardSnapshotDto? updateFlashcardSnapshotDto,@JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic) Card? fsrsCard
});


@override $UpdateFlashcardSnapshotDtoCopyWith<$Res>? get updateFlashcardSnapshotDto;

}
/// @nodoc
class __$UpdateFcpDataDtoCopyWithImpl<$Res>
    implements _$UpdateFcpDataDtoCopyWith<$Res> {
  __$UpdateFcpDataDtoCopyWithImpl(this._self, this._then);

  final _UpdateFcpDataDto _self;
  final $Res Function(_UpdateFcpDataDto) _then;

/// Create a copy of UpdateFcpDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileId = freezed,Object? flashcardId = freezed,Object? hasBookmark = freezed,Object? ignored = freezed,Object? updateFlashcardSnapshotDto = freezed,Object? fsrsCard = freezed,}) {
  return _then(_UpdateFcpDataDto(
profileId: freezed == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String?,flashcardId: freezed == flashcardId ? _self.flashcardId : flashcardId // ignore: cast_nullable_to_non_nullable
as String?,hasBookmark: freezed == hasBookmark ? _self.hasBookmark : hasBookmark // ignore: cast_nullable_to_non_nullable
as bool?,ignored: freezed == ignored ? _self.ignored : ignored // ignore: cast_nullable_to_non_nullable
as bool?,updateFlashcardSnapshotDto: freezed == updateFlashcardSnapshotDto ? _self.updateFlashcardSnapshotDto : updateFlashcardSnapshotDto // ignore: cast_nullable_to_non_nullable
as UpdateFlashcardSnapshotDto?,fsrsCard: freezed == fsrsCard ? _self.fsrsCard : fsrsCard // ignore: cast_nullable_to_non_nullable
as Card?,
  ));
}

/// Create a copy of UpdateFcpDataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateFlashcardSnapshotDtoCopyWith<$Res>? get updateFlashcardSnapshotDto {
    if (_self.updateFlashcardSnapshotDto == null) {
    return null;
  }

  return $UpdateFlashcardSnapshotDtoCopyWith<$Res>(_self.updateFlashcardSnapshotDto!, (value) {
    return _then(_self.copyWith(updateFlashcardSnapshotDto: value));
  });
}
}

// dart format on
