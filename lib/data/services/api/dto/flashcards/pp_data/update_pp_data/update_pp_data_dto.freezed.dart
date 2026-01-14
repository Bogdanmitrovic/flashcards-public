// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_pp_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdatePpDataDto {

 String? get profileId; String? get packId; String? get packName;@DatetimeTimestampConverter() DateTime? get firstOpenedAt;@DatetimeTimestampConverter() DateTime? get lastOpenedAt;
/// Create a copy of UpdatePpDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePpDataDtoCopyWith<UpdatePpDataDto> get copyWith => _$UpdatePpDataDtoCopyWithImpl<UpdatePpDataDto>(this as UpdatePpDataDto, _$identity);

  /// Serializes this UpdatePpDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePpDataDto&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.packName, packName) || other.packName == packName)&&(identical(other.firstOpenedAt, firstOpenedAt) || other.firstOpenedAt == firstOpenedAt)&&(identical(other.lastOpenedAt, lastOpenedAt) || other.lastOpenedAt == lastOpenedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileId,packId,packName,firstOpenedAt,lastOpenedAt);

@override
String toString() {
  return 'UpdatePpDataDto(profileId: $profileId, packId: $packId, packName: $packName, firstOpenedAt: $firstOpenedAt, lastOpenedAt: $lastOpenedAt)';
}


}

/// @nodoc
abstract mixin class $UpdatePpDataDtoCopyWith<$Res>  {
  factory $UpdatePpDataDtoCopyWith(UpdatePpDataDto value, $Res Function(UpdatePpDataDto) _then) = _$UpdatePpDataDtoCopyWithImpl;
@useResult
$Res call({
 String? profileId, String? packId, String? packName,@DatetimeTimestampConverter() DateTime? firstOpenedAt,@DatetimeTimestampConverter() DateTime? lastOpenedAt
});




}
/// @nodoc
class _$UpdatePpDataDtoCopyWithImpl<$Res>
    implements $UpdatePpDataDtoCopyWith<$Res> {
  _$UpdatePpDataDtoCopyWithImpl(this._self, this._then);

  final UpdatePpDataDto _self;
  final $Res Function(UpdatePpDataDto) _then;

/// Create a copy of UpdatePpDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profileId = freezed,Object? packId = freezed,Object? packName = freezed,Object? firstOpenedAt = freezed,Object? lastOpenedAt = freezed,}) {
  return _then(_self.copyWith(
profileId: freezed == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String?,packId: freezed == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String?,packName: freezed == packName ? _self.packName : packName // ignore: cast_nullable_to_non_nullable
as String?,firstOpenedAt: freezed == firstOpenedAt ? _self.firstOpenedAt : firstOpenedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastOpenedAt: freezed == lastOpenedAt ? _self.lastOpenedAt : lastOpenedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdatePpDataDto].
extension UpdatePpDataDtoPatterns on UpdatePpDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatePpDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatePpDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatePpDataDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdatePpDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatePpDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatePpDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? profileId,  String? packId,  String? packName, @DatetimeTimestampConverter()  DateTime? firstOpenedAt, @DatetimeTimestampConverter()  DateTime? lastOpenedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatePpDataDto() when $default != null:
return $default(_that.profileId,_that.packId,_that.packName,_that.firstOpenedAt,_that.lastOpenedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? profileId,  String? packId,  String? packName, @DatetimeTimestampConverter()  DateTime? firstOpenedAt, @DatetimeTimestampConverter()  DateTime? lastOpenedAt)  $default,) {final _that = this;
switch (_that) {
case _UpdatePpDataDto():
return $default(_that.profileId,_that.packId,_that.packName,_that.firstOpenedAt,_that.lastOpenedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? profileId,  String? packId,  String? packName, @DatetimeTimestampConverter()  DateTime? firstOpenedAt, @DatetimeTimestampConverter()  DateTime? lastOpenedAt)?  $default,) {final _that = this;
switch (_that) {
case _UpdatePpDataDto() when $default != null:
return $default(_that.profileId,_that.packId,_that.packName,_that.firstOpenedAt,_that.lastOpenedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _UpdatePpDataDto implements UpdatePpDataDto {
  const _UpdatePpDataDto({this.profileId, this.packId, this.packName, @DatetimeTimestampConverter() this.firstOpenedAt, @DatetimeTimestampConverter() this.lastOpenedAt});
  factory _UpdatePpDataDto.fromJson(Map<String, dynamic> json) => _$UpdatePpDataDtoFromJson(json);

@override final  String? profileId;
@override final  String? packId;
@override final  String? packName;
@override@DatetimeTimestampConverter() final  DateTime? firstOpenedAt;
@override@DatetimeTimestampConverter() final  DateTime? lastOpenedAt;

/// Create a copy of UpdatePpDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePpDataDtoCopyWith<_UpdatePpDataDto> get copyWith => __$UpdatePpDataDtoCopyWithImpl<_UpdatePpDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdatePpDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePpDataDto&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.packName, packName) || other.packName == packName)&&(identical(other.firstOpenedAt, firstOpenedAt) || other.firstOpenedAt == firstOpenedAt)&&(identical(other.lastOpenedAt, lastOpenedAt) || other.lastOpenedAt == lastOpenedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileId,packId,packName,firstOpenedAt,lastOpenedAt);

@override
String toString() {
  return 'UpdatePpDataDto(profileId: $profileId, packId: $packId, packName: $packName, firstOpenedAt: $firstOpenedAt, lastOpenedAt: $lastOpenedAt)';
}


}

/// @nodoc
abstract mixin class _$UpdatePpDataDtoCopyWith<$Res> implements $UpdatePpDataDtoCopyWith<$Res> {
  factory _$UpdatePpDataDtoCopyWith(_UpdatePpDataDto value, $Res Function(_UpdatePpDataDto) _then) = __$UpdatePpDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String? profileId, String? packId, String? packName,@DatetimeTimestampConverter() DateTime? firstOpenedAt,@DatetimeTimestampConverter() DateTime? lastOpenedAt
});




}
/// @nodoc
class __$UpdatePpDataDtoCopyWithImpl<$Res>
    implements _$UpdatePpDataDtoCopyWith<$Res> {
  __$UpdatePpDataDtoCopyWithImpl(this._self, this._then);

  final _UpdatePpDataDto _self;
  final $Res Function(_UpdatePpDataDto) _then;

/// Create a copy of UpdatePpDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileId = freezed,Object? packId = freezed,Object? packName = freezed,Object? firstOpenedAt = freezed,Object? lastOpenedAt = freezed,}) {
  return _then(_UpdatePpDataDto(
profileId: freezed == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String?,packId: freezed == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String?,packName: freezed == packName ? _self.packName : packName // ignore: cast_nullable_to_non_nullable
as String?,firstOpenedAt: freezed == firstOpenedAt ? _self.firstOpenedAt : firstOpenedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastOpenedAt: freezed == lastOpenedAt ? _self.lastOpenedAt : lastOpenedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
