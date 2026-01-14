// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcp_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FcpDataDto {

 String get profileId; String get flashcardId; bool get isPaid; bool get hasBookmark; bool get ignored;@JsonKey(name: 'flashcardSnapshot') FlashcardSnapshotDto get flashcardSnapshotDto;@JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic) Card get fsrsCard;
/// Create a copy of FcpDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcpDataDtoCopyWith<FcpDataDto> get copyWith => _$FcpDataDtoCopyWithImpl<FcpDataDto>(this as FcpDataDto, _$identity);

  /// Serializes this FcpDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcpDataDto&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.flashcardId, flashcardId) || other.flashcardId == flashcardId)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.hasBookmark, hasBookmark) || other.hasBookmark == hasBookmark)&&(identical(other.ignored, ignored) || other.ignored == ignored)&&(identical(other.flashcardSnapshotDto, flashcardSnapshotDto) || other.flashcardSnapshotDto == flashcardSnapshotDto)&&(identical(other.fsrsCard, fsrsCard) || other.fsrsCard == fsrsCard));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileId,flashcardId,isPaid,hasBookmark,ignored,flashcardSnapshotDto,fsrsCard);

@override
String toString() {
  return 'FcpDataDto(profileId: $profileId, flashcardId: $flashcardId, isPaid: $isPaid, hasBookmark: $hasBookmark, ignored: $ignored, flashcardSnapshotDto: $flashcardSnapshotDto, fsrsCard: $fsrsCard)';
}


}

/// @nodoc
abstract mixin class $FcpDataDtoCopyWith<$Res>  {
  factory $FcpDataDtoCopyWith(FcpDataDto value, $Res Function(FcpDataDto) _then) = _$FcpDataDtoCopyWithImpl;
@useResult
$Res call({
 String profileId, String flashcardId, bool isPaid, bool hasBookmark, bool ignored,@JsonKey(name: 'flashcardSnapshot') FlashcardSnapshotDto flashcardSnapshotDto,@JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic) Card fsrsCard
});


$FlashcardSnapshotDtoCopyWith<$Res> get flashcardSnapshotDto;

}
/// @nodoc
class _$FcpDataDtoCopyWithImpl<$Res>
    implements $FcpDataDtoCopyWith<$Res> {
  _$FcpDataDtoCopyWithImpl(this._self, this._then);

  final FcpDataDto _self;
  final $Res Function(FcpDataDto) _then;

/// Create a copy of FcpDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profileId = null,Object? flashcardId = null,Object? isPaid = null,Object? hasBookmark = null,Object? ignored = null,Object? flashcardSnapshotDto = null,Object? fsrsCard = null,}) {
  return _then(_self.copyWith(
profileId: null == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String,flashcardId: null == flashcardId ? _self.flashcardId : flashcardId // ignore: cast_nullable_to_non_nullable
as String,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,hasBookmark: null == hasBookmark ? _self.hasBookmark : hasBookmark // ignore: cast_nullable_to_non_nullable
as bool,ignored: null == ignored ? _self.ignored : ignored // ignore: cast_nullable_to_non_nullable
as bool,flashcardSnapshotDto: null == flashcardSnapshotDto ? _self.flashcardSnapshotDto : flashcardSnapshotDto // ignore: cast_nullable_to_non_nullable
as FlashcardSnapshotDto,fsrsCard: null == fsrsCard ? _self.fsrsCard : fsrsCard // ignore: cast_nullable_to_non_nullable
as Card,
  ));
}
/// Create a copy of FcpDataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlashcardSnapshotDtoCopyWith<$Res> get flashcardSnapshotDto {
  
  return $FlashcardSnapshotDtoCopyWith<$Res>(_self.flashcardSnapshotDto, (value) {
    return _then(_self.copyWith(flashcardSnapshotDto: value));
  });
}
}


/// Adds pattern-matching-related methods to [FcpDataDto].
extension FcpDataDtoPatterns on FcpDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcpDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcpDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcpDataDto value)  $default,){
final _that = this;
switch (_that) {
case _FcpDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcpDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _FcpDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String profileId,  String flashcardId,  bool isPaid,  bool hasBookmark,  bool ignored, @JsonKey(name: 'flashcardSnapshot')  FlashcardSnapshotDto flashcardSnapshotDto, @JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic)  Card fsrsCard)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcpDataDto() when $default != null:
return $default(_that.profileId,_that.flashcardId,_that.isPaid,_that.hasBookmark,_that.ignored,_that.flashcardSnapshotDto,_that.fsrsCard);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String profileId,  String flashcardId,  bool isPaid,  bool hasBookmark,  bool ignored, @JsonKey(name: 'flashcardSnapshot')  FlashcardSnapshotDto flashcardSnapshotDto, @JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic)  Card fsrsCard)  $default,) {final _that = this;
switch (_that) {
case _FcpDataDto():
return $default(_that.profileId,_that.flashcardId,_that.isPaid,_that.hasBookmark,_that.ignored,_that.flashcardSnapshotDto,_that.fsrsCard);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String profileId,  String flashcardId,  bool isPaid,  bool hasBookmark,  bool ignored, @JsonKey(name: 'flashcardSnapshot')  FlashcardSnapshotDto flashcardSnapshotDto, @JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic)  Card fsrsCard)?  $default,) {final _that = this;
switch (_that) {
case _FcpDataDto() when $default != null:
return $default(_that.profileId,_that.flashcardId,_that.isPaid,_that.hasBookmark,_that.ignored,_that.flashcardSnapshotDto,_that.fsrsCard);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _FcpDataDto implements FcpDataDto {
  const _FcpDataDto({required this.profileId, required this.flashcardId, required this.isPaid, this.hasBookmark = false, this.ignored = false, @JsonKey(name: 'flashcardSnapshot') required this.flashcardSnapshotDto, @JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic) required this.fsrsCard});
  factory _FcpDataDto.fromJson(Map<String, dynamic> json) => _$FcpDataDtoFromJson(json);

@override final  String profileId;
@override final  String flashcardId;
@override final  bool isPaid;
@override@JsonKey() final  bool hasBookmark;
@override@JsonKey() final  bool ignored;
@override@JsonKey(name: 'flashcardSnapshot') final  FlashcardSnapshotDto flashcardSnapshotDto;
@override@JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic) final  Card fsrsCard;

/// Create a copy of FcpDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcpDataDtoCopyWith<_FcpDataDto> get copyWith => __$FcpDataDtoCopyWithImpl<_FcpDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcpDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcpDataDto&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.flashcardId, flashcardId) || other.flashcardId == flashcardId)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.hasBookmark, hasBookmark) || other.hasBookmark == hasBookmark)&&(identical(other.ignored, ignored) || other.ignored == ignored)&&(identical(other.flashcardSnapshotDto, flashcardSnapshotDto) || other.flashcardSnapshotDto == flashcardSnapshotDto)&&(identical(other.fsrsCard, fsrsCard) || other.fsrsCard == fsrsCard));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileId,flashcardId,isPaid,hasBookmark,ignored,flashcardSnapshotDto,fsrsCard);

@override
String toString() {
  return 'FcpDataDto(profileId: $profileId, flashcardId: $flashcardId, isPaid: $isPaid, hasBookmark: $hasBookmark, ignored: $ignored, flashcardSnapshotDto: $flashcardSnapshotDto, fsrsCard: $fsrsCard)';
}


}

/// @nodoc
abstract mixin class _$FcpDataDtoCopyWith<$Res> implements $FcpDataDtoCopyWith<$Res> {
  factory _$FcpDataDtoCopyWith(_FcpDataDto value, $Res Function(_FcpDataDto) _then) = __$FcpDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String profileId, String flashcardId, bool isPaid, bool hasBookmark, bool ignored,@JsonKey(name: 'flashcardSnapshot') FlashcardSnapshotDto flashcardSnapshotDto,@JsonKey(name: 'fsrs_card', fromJson: FsrsCardX.fromJson, toJson: FsrsCardX.toJsonStatic) Card fsrsCard
});


@override $FlashcardSnapshotDtoCopyWith<$Res> get flashcardSnapshotDto;

}
/// @nodoc
class __$FcpDataDtoCopyWithImpl<$Res>
    implements _$FcpDataDtoCopyWith<$Res> {
  __$FcpDataDtoCopyWithImpl(this._self, this._then);

  final _FcpDataDto _self;
  final $Res Function(_FcpDataDto) _then;

/// Create a copy of FcpDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileId = null,Object? flashcardId = null,Object? isPaid = null,Object? hasBookmark = null,Object? ignored = null,Object? flashcardSnapshotDto = null,Object? fsrsCard = null,}) {
  return _then(_FcpDataDto(
profileId: null == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String,flashcardId: null == flashcardId ? _self.flashcardId : flashcardId // ignore: cast_nullable_to_non_nullable
as String,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,hasBookmark: null == hasBookmark ? _self.hasBookmark : hasBookmark // ignore: cast_nullable_to_non_nullable
as bool,ignored: null == ignored ? _self.ignored : ignored // ignore: cast_nullable_to_non_nullable
as bool,flashcardSnapshotDto: null == flashcardSnapshotDto ? _self.flashcardSnapshotDto : flashcardSnapshotDto // ignore: cast_nullable_to_non_nullable
as FlashcardSnapshotDto,fsrsCard: null == fsrsCard ? _self.fsrsCard : fsrsCard // ignore: cast_nullable_to_non_nullable
as Card,
  ));
}

/// Create a copy of FcpDataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlashcardSnapshotDtoCopyWith<$Res> get flashcardSnapshotDto {
  
  return $FlashcardSnapshotDtoCopyWith<$Res>(_self.flashcardSnapshotDto, (value) {
    return _then(_self.copyWith(flashcardSnapshotDto: value));
  });
}
}

// dart format on
