// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_osce_performance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchOscePerformanceDto {

 PatchOsceSnapshotDto? get osceSnapshot; int? get bestScore; int? get attemptsCount;
/// Create a copy of PatchOscePerformanceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchOscePerformanceDtoCopyWith<PatchOscePerformanceDto> get copyWith => _$PatchOscePerformanceDtoCopyWithImpl<PatchOscePerformanceDto>(this as PatchOscePerformanceDto, _$identity);

  /// Serializes this PatchOscePerformanceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchOscePerformanceDto&&(identical(other.osceSnapshot, osceSnapshot) || other.osceSnapshot == osceSnapshot)&&(identical(other.bestScore, bestScore) || other.bestScore == bestScore)&&(identical(other.attemptsCount, attemptsCount) || other.attemptsCount == attemptsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,osceSnapshot,bestScore,attemptsCount);

@override
String toString() {
  return 'PatchOscePerformanceDto(osceSnapshot: $osceSnapshot, bestScore: $bestScore, attemptsCount: $attemptsCount)';
}


}

/// @nodoc
abstract mixin class $PatchOscePerformanceDtoCopyWith<$Res>  {
  factory $PatchOscePerformanceDtoCopyWith(PatchOscePerformanceDto value, $Res Function(PatchOscePerformanceDto) _then) = _$PatchOscePerformanceDtoCopyWithImpl;
@useResult
$Res call({
 PatchOsceSnapshotDto? osceSnapshot, int? bestScore, int? attemptsCount
});


$PatchOsceSnapshotDtoCopyWith<$Res>? get osceSnapshot;

}
/// @nodoc
class _$PatchOscePerformanceDtoCopyWithImpl<$Res>
    implements $PatchOscePerformanceDtoCopyWith<$Res> {
  _$PatchOscePerformanceDtoCopyWithImpl(this._self, this._then);

  final PatchOscePerformanceDto _self;
  final $Res Function(PatchOscePerformanceDto) _then;

/// Create a copy of PatchOscePerformanceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? osceSnapshot = freezed,Object? bestScore = freezed,Object? attemptsCount = freezed,}) {
  return _then(_self.copyWith(
osceSnapshot: freezed == osceSnapshot ? _self.osceSnapshot : osceSnapshot // ignore: cast_nullable_to_non_nullable
as PatchOsceSnapshotDto?,bestScore: freezed == bestScore ? _self.bestScore : bestScore // ignore: cast_nullable_to_non_nullable
as int?,attemptsCount: freezed == attemptsCount ? _self.attemptsCount : attemptsCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of PatchOscePerformanceDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatchOsceSnapshotDtoCopyWith<$Res>? get osceSnapshot {
    if (_self.osceSnapshot == null) {
    return null;
  }

  return $PatchOsceSnapshotDtoCopyWith<$Res>(_self.osceSnapshot!, (value) {
    return _then(_self.copyWith(osceSnapshot: value));
  });
}
}


/// Adds pattern-matching-related methods to [PatchOscePerformanceDto].
extension PatchOscePerformanceDtoPatterns on PatchOscePerformanceDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchOscePerformanceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchOscePerformanceDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchOscePerformanceDto value)  $default,){
final _that = this;
switch (_that) {
case _PatchOscePerformanceDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchOscePerformanceDto value)?  $default,){
final _that = this;
switch (_that) {
case _PatchOscePerformanceDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PatchOsceSnapshotDto? osceSnapshot,  int? bestScore,  int? attemptsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchOscePerformanceDto() when $default != null:
return $default(_that.osceSnapshot,_that.bestScore,_that.attemptsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PatchOsceSnapshotDto? osceSnapshot,  int? bestScore,  int? attemptsCount)  $default,) {final _that = this;
switch (_that) {
case _PatchOscePerformanceDto():
return $default(_that.osceSnapshot,_that.bestScore,_that.attemptsCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PatchOsceSnapshotDto? osceSnapshot,  int? bestScore,  int? attemptsCount)?  $default,) {final _that = this;
switch (_that) {
case _PatchOscePerformanceDto() when $default != null:
return $default(_that.osceSnapshot,_that.bestScore,_that.attemptsCount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _PatchOscePerformanceDto implements PatchOscePerformanceDto {
  const _PatchOscePerformanceDto({this.osceSnapshot, this.bestScore, this.attemptsCount});
  factory _PatchOscePerformanceDto.fromJson(Map<String, dynamic> json) => _$PatchOscePerformanceDtoFromJson(json);

@override final  PatchOsceSnapshotDto? osceSnapshot;
@override final  int? bestScore;
@override final  int? attemptsCount;

/// Create a copy of PatchOscePerformanceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchOscePerformanceDtoCopyWith<_PatchOscePerformanceDto> get copyWith => __$PatchOscePerformanceDtoCopyWithImpl<_PatchOscePerformanceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchOscePerformanceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchOscePerformanceDto&&(identical(other.osceSnapshot, osceSnapshot) || other.osceSnapshot == osceSnapshot)&&(identical(other.bestScore, bestScore) || other.bestScore == bestScore)&&(identical(other.attemptsCount, attemptsCount) || other.attemptsCount == attemptsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,osceSnapshot,bestScore,attemptsCount);

@override
String toString() {
  return 'PatchOscePerformanceDto(osceSnapshot: $osceSnapshot, bestScore: $bestScore, attemptsCount: $attemptsCount)';
}


}

/// @nodoc
abstract mixin class _$PatchOscePerformanceDtoCopyWith<$Res> implements $PatchOscePerformanceDtoCopyWith<$Res> {
  factory _$PatchOscePerformanceDtoCopyWith(_PatchOscePerformanceDto value, $Res Function(_PatchOscePerformanceDto) _then) = __$PatchOscePerformanceDtoCopyWithImpl;
@override @useResult
$Res call({
 PatchOsceSnapshotDto? osceSnapshot, int? bestScore, int? attemptsCount
});


@override $PatchOsceSnapshotDtoCopyWith<$Res>? get osceSnapshot;

}
/// @nodoc
class __$PatchOscePerformanceDtoCopyWithImpl<$Res>
    implements _$PatchOscePerformanceDtoCopyWith<$Res> {
  __$PatchOscePerformanceDtoCopyWithImpl(this._self, this._then);

  final _PatchOscePerformanceDto _self;
  final $Res Function(_PatchOscePerformanceDto) _then;

/// Create a copy of PatchOscePerformanceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? osceSnapshot = freezed,Object? bestScore = freezed,Object? attemptsCount = freezed,}) {
  return _then(_PatchOscePerformanceDto(
osceSnapshot: freezed == osceSnapshot ? _self.osceSnapshot : osceSnapshot // ignore: cast_nullable_to_non_nullable
as PatchOsceSnapshotDto?,bestScore: freezed == bestScore ? _self.bestScore : bestScore // ignore: cast_nullable_to_non_nullable
as int?,attemptsCount: freezed == attemptsCount ? _self.attemptsCount : attemptsCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of PatchOscePerformanceDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatchOsceSnapshotDtoCopyWith<$Res>? get osceSnapshot {
    if (_self.osceSnapshot == null) {
    return null;
  }

  return $PatchOsceSnapshotDtoCopyWith<$Res>(_self.osceSnapshot!, (value) {
    return _then(_self.copyWith(osceSnapshot: value));
  });
}
}

// dart format on
