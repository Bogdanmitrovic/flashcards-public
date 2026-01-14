// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pp_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PpDataDto {

 String get profileId; String get packId; String get packName;@DatetimeTimestampConverter() DateTime get firstOpenedAt;@DatetimeTimestampConverter() DateTime get lastOpenedAt;
/// Create a copy of PpDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PpDataDtoCopyWith<PpDataDto> get copyWith => _$PpDataDtoCopyWithImpl<PpDataDto>(this as PpDataDto, _$identity);

  /// Serializes this PpDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PpDataDto&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.packName, packName) || other.packName == packName)&&(identical(other.firstOpenedAt, firstOpenedAt) || other.firstOpenedAt == firstOpenedAt)&&(identical(other.lastOpenedAt, lastOpenedAt) || other.lastOpenedAt == lastOpenedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileId,packId,packName,firstOpenedAt,lastOpenedAt);

@override
String toString() {
  return 'PpDataDto(profileId: $profileId, packId: $packId, packName: $packName, firstOpenedAt: $firstOpenedAt, lastOpenedAt: $lastOpenedAt)';
}


}

/// @nodoc
abstract mixin class $PpDataDtoCopyWith<$Res>  {
  factory $PpDataDtoCopyWith(PpDataDto value, $Res Function(PpDataDto) _then) = _$PpDataDtoCopyWithImpl;
@useResult
$Res call({
 String profileId, String packId, String packName,@DatetimeTimestampConverter() DateTime firstOpenedAt,@DatetimeTimestampConverter() DateTime lastOpenedAt
});




}
/// @nodoc
class _$PpDataDtoCopyWithImpl<$Res>
    implements $PpDataDtoCopyWith<$Res> {
  _$PpDataDtoCopyWithImpl(this._self, this._then);

  final PpDataDto _self;
  final $Res Function(PpDataDto) _then;

/// Create a copy of PpDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profileId = null,Object? packId = null,Object? packName = null,Object? firstOpenedAt = null,Object? lastOpenedAt = null,}) {
  return _then(_self.copyWith(
profileId: null == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String,packId: null == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String,packName: null == packName ? _self.packName : packName // ignore: cast_nullable_to_non_nullable
as String,firstOpenedAt: null == firstOpenedAt ? _self.firstOpenedAt : firstOpenedAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastOpenedAt: null == lastOpenedAt ? _self.lastOpenedAt : lastOpenedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PpDataDto].
extension PpDataDtoPatterns on PpDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PpDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PpDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PpDataDto value)  $default,){
final _that = this;
switch (_that) {
case _PpDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PpDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _PpDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String profileId,  String packId,  String packName, @DatetimeTimestampConverter()  DateTime firstOpenedAt, @DatetimeTimestampConverter()  DateTime lastOpenedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PpDataDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String profileId,  String packId,  String packName, @DatetimeTimestampConverter()  DateTime firstOpenedAt, @DatetimeTimestampConverter()  DateTime lastOpenedAt)  $default,) {final _that = this;
switch (_that) {
case _PpDataDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String profileId,  String packId,  String packName, @DatetimeTimestampConverter()  DateTime firstOpenedAt, @DatetimeTimestampConverter()  DateTime lastOpenedAt)?  $default,) {final _that = this;
switch (_that) {
case _PpDataDto() when $default != null:
return $default(_that.profileId,_that.packId,_that.packName,_that.firstOpenedAt,_that.lastOpenedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PpDataDto implements PpDataDto {
  const _PpDataDto({required this.profileId, required this.packId, required this.packName, @DatetimeTimestampConverter() required this.firstOpenedAt, @DatetimeTimestampConverter() required this.lastOpenedAt});
  factory _PpDataDto.fromJson(Map<String, dynamic> json) => _$PpDataDtoFromJson(json);

@override final  String profileId;
@override final  String packId;
@override final  String packName;
@override@DatetimeTimestampConverter() final  DateTime firstOpenedAt;
@override@DatetimeTimestampConverter() final  DateTime lastOpenedAt;

/// Create a copy of PpDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PpDataDtoCopyWith<_PpDataDto> get copyWith => __$PpDataDtoCopyWithImpl<_PpDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PpDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PpDataDto&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.packName, packName) || other.packName == packName)&&(identical(other.firstOpenedAt, firstOpenedAt) || other.firstOpenedAt == firstOpenedAt)&&(identical(other.lastOpenedAt, lastOpenedAt) || other.lastOpenedAt == lastOpenedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileId,packId,packName,firstOpenedAt,lastOpenedAt);

@override
String toString() {
  return 'PpDataDto(profileId: $profileId, packId: $packId, packName: $packName, firstOpenedAt: $firstOpenedAt, lastOpenedAt: $lastOpenedAt)';
}


}

/// @nodoc
abstract mixin class _$PpDataDtoCopyWith<$Res> implements $PpDataDtoCopyWith<$Res> {
  factory _$PpDataDtoCopyWith(_PpDataDto value, $Res Function(_PpDataDto) _then) = __$PpDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String profileId, String packId, String packName,@DatetimeTimestampConverter() DateTime firstOpenedAt,@DatetimeTimestampConverter() DateTime lastOpenedAt
});




}
/// @nodoc
class __$PpDataDtoCopyWithImpl<$Res>
    implements _$PpDataDtoCopyWith<$Res> {
  __$PpDataDtoCopyWithImpl(this._self, this._then);

  final _PpDataDto _self;
  final $Res Function(_PpDataDto) _then;

/// Create a copy of PpDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileId = null,Object? packId = null,Object? packName = null,Object? firstOpenedAt = null,Object? lastOpenedAt = null,}) {
  return _then(_PpDataDto(
profileId: null == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String,packId: null == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String,packName: null == packName ? _self.packName : packName // ignore: cast_nullable_to_non_nullable
as String,firstOpenedAt: null == firstOpenedAt ? _self.firstOpenedAt : firstOpenedAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastOpenedAt: null == lastOpenedAt ? _self.lastOpenedAt : lastOpenedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
