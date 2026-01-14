// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'osce_performance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OscePerformanceDto {

 String get osceId; OsceSnapshotDto get osceSnapshot;@DatetimeTimestampConverter() DateTime get firstAttemptDate; int get bestScore; int get attemptsCount;
/// Create a copy of OscePerformanceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OscePerformanceDtoCopyWith<OscePerformanceDto> get copyWith => _$OscePerformanceDtoCopyWithImpl<OscePerformanceDto>(this as OscePerformanceDto, _$identity);

  /// Serializes this OscePerformanceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OscePerformanceDto&&(identical(other.osceId, osceId) || other.osceId == osceId)&&(identical(other.osceSnapshot, osceSnapshot) || other.osceSnapshot == osceSnapshot)&&(identical(other.firstAttemptDate, firstAttemptDate) || other.firstAttemptDate == firstAttemptDate)&&(identical(other.bestScore, bestScore) || other.bestScore == bestScore)&&(identical(other.attemptsCount, attemptsCount) || other.attemptsCount == attemptsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,osceId,osceSnapshot,firstAttemptDate,bestScore,attemptsCount);

@override
String toString() {
  return 'OscePerformanceDto(osceId: $osceId, osceSnapshot: $osceSnapshot, firstAttemptDate: $firstAttemptDate, bestScore: $bestScore, attemptsCount: $attemptsCount)';
}


}

/// @nodoc
abstract mixin class $OscePerformanceDtoCopyWith<$Res>  {
  factory $OscePerformanceDtoCopyWith(OscePerformanceDto value, $Res Function(OscePerformanceDto) _then) = _$OscePerformanceDtoCopyWithImpl;
@useResult
$Res call({
 String osceId, OsceSnapshotDto osceSnapshot,@DatetimeTimestampConverter() DateTime firstAttemptDate, int bestScore, int attemptsCount
});


$OsceSnapshotDtoCopyWith<$Res> get osceSnapshot;

}
/// @nodoc
class _$OscePerformanceDtoCopyWithImpl<$Res>
    implements $OscePerformanceDtoCopyWith<$Res> {
  _$OscePerformanceDtoCopyWithImpl(this._self, this._then);

  final OscePerformanceDto _self;
  final $Res Function(OscePerformanceDto) _then;

/// Create a copy of OscePerformanceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? osceId = null,Object? osceSnapshot = null,Object? firstAttemptDate = null,Object? bestScore = null,Object? attemptsCount = null,}) {
  return _then(_self.copyWith(
osceId: null == osceId ? _self.osceId : osceId // ignore: cast_nullable_to_non_nullable
as String,osceSnapshot: null == osceSnapshot ? _self.osceSnapshot : osceSnapshot // ignore: cast_nullable_to_non_nullable
as OsceSnapshotDto,firstAttemptDate: null == firstAttemptDate ? _self.firstAttemptDate : firstAttemptDate // ignore: cast_nullable_to_non_nullable
as DateTime,bestScore: null == bestScore ? _self.bestScore : bestScore // ignore: cast_nullable_to_non_nullable
as int,attemptsCount: null == attemptsCount ? _self.attemptsCount : attemptsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of OscePerformanceDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OsceSnapshotDtoCopyWith<$Res> get osceSnapshot {
  
  return $OsceSnapshotDtoCopyWith<$Res>(_self.osceSnapshot, (value) {
    return _then(_self.copyWith(osceSnapshot: value));
  });
}
}


/// Adds pattern-matching-related methods to [OscePerformanceDto].
extension OscePerformanceDtoPatterns on OscePerformanceDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OscePerformanceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OscePerformanceDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OscePerformanceDto value)  $default,){
final _that = this;
switch (_that) {
case _OscePerformanceDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OscePerformanceDto value)?  $default,){
final _that = this;
switch (_that) {
case _OscePerformanceDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String osceId,  OsceSnapshotDto osceSnapshot, @DatetimeTimestampConverter()  DateTime firstAttemptDate,  int bestScore,  int attemptsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OscePerformanceDto() when $default != null:
return $default(_that.osceId,_that.osceSnapshot,_that.firstAttemptDate,_that.bestScore,_that.attemptsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String osceId,  OsceSnapshotDto osceSnapshot, @DatetimeTimestampConverter()  DateTime firstAttemptDate,  int bestScore,  int attemptsCount)  $default,) {final _that = this;
switch (_that) {
case _OscePerformanceDto():
return $default(_that.osceId,_that.osceSnapshot,_that.firstAttemptDate,_that.bestScore,_that.attemptsCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String osceId,  OsceSnapshotDto osceSnapshot, @DatetimeTimestampConverter()  DateTime firstAttemptDate,  int bestScore,  int attemptsCount)?  $default,) {final _that = this;
switch (_that) {
case _OscePerformanceDto() when $default != null:
return $default(_that.osceId,_that.osceSnapshot,_that.firstAttemptDate,_that.bestScore,_that.attemptsCount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _OscePerformanceDto implements OscePerformanceDto {
  const _OscePerformanceDto({required this.osceId, required this.osceSnapshot, @DatetimeTimestampConverter() required this.firstAttemptDate, required this.bestScore, required this.attemptsCount});
  factory _OscePerformanceDto.fromJson(Map<String, dynamic> json) => _$OscePerformanceDtoFromJson(json);

@override final  String osceId;
@override final  OsceSnapshotDto osceSnapshot;
@override@DatetimeTimestampConverter() final  DateTime firstAttemptDate;
@override final  int bestScore;
@override final  int attemptsCount;

/// Create a copy of OscePerformanceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OscePerformanceDtoCopyWith<_OscePerformanceDto> get copyWith => __$OscePerformanceDtoCopyWithImpl<_OscePerformanceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OscePerformanceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OscePerformanceDto&&(identical(other.osceId, osceId) || other.osceId == osceId)&&(identical(other.osceSnapshot, osceSnapshot) || other.osceSnapshot == osceSnapshot)&&(identical(other.firstAttemptDate, firstAttemptDate) || other.firstAttemptDate == firstAttemptDate)&&(identical(other.bestScore, bestScore) || other.bestScore == bestScore)&&(identical(other.attemptsCount, attemptsCount) || other.attemptsCount == attemptsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,osceId,osceSnapshot,firstAttemptDate,bestScore,attemptsCount);

@override
String toString() {
  return 'OscePerformanceDto(osceId: $osceId, osceSnapshot: $osceSnapshot, firstAttemptDate: $firstAttemptDate, bestScore: $bestScore, attemptsCount: $attemptsCount)';
}


}

/// @nodoc
abstract mixin class _$OscePerformanceDtoCopyWith<$Res> implements $OscePerformanceDtoCopyWith<$Res> {
  factory _$OscePerformanceDtoCopyWith(_OscePerformanceDto value, $Res Function(_OscePerformanceDto) _then) = __$OscePerformanceDtoCopyWithImpl;
@override @useResult
$Res call({
 String osceId, OsceSnapshotDto osceSnapshot,@DatetimeTimestampConverter() DateTime firstAttemptDate, int bestScore, int attemptsCount
});


@override $OsceSnapshotDtoCopyWith<$Res> get osceSnapshot;

}
/// @nodoc
class __$OscePerformanceDtoCopyWithImpl<$Res>
    implements _$OscePerformanceDtoCopyWith<$Res> {
  __$OscePerformanceDtoCopyWithImpl(this._self, this._then);

  final _OscePerformanceDto _self;
  final $Res Function(_OscePerformanceDto) _then;

/// Create a copy of OscePerformanceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? osceId = null,Object? osceSnapshot = null,Object? firstAttemptDate = null,Object? bestScore = null,Object? attemptsCount = null,}) {
  return _then(_OscePerformanceDto(
osceId: null == osceId ? _self.osceId : osceId // ignore: cast_nullable_to_non_nullable
as String,osceSnapshot: null == osceSnapshot ? _self.osceSnapshot : osceSnapshot // ignore: cast_nullable_to_non_nullable
as OsceSnapshotDto,firstAttemptDate: null == firstAttemptDate ? _self.firstAttemptDate : firstAttemptDate // ignore: cast_nullable_to_non_nullable
as DateTime,bestScore: null == bestScore ? _self.bestScore : bestScore // ignore: cast_nullable_to_non_nullable
as int,attemptsCount: null == attemptsCount ? _self.attemptsCount : attemptsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of OscePerformanceDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OsceSnapshotDtoCopyWith<$Res> get osceSnapshot {
  
  return $OsceSnapshotDtoCopyWith<$Res>(_self.osceSnapshot, (value) {
    return _then(_self.copyWith(osceSnapshot: value));
  });
}
}

// dart format on
