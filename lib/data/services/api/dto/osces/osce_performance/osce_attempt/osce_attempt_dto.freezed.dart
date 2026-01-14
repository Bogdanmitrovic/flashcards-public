// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'osce_attempt_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OsceAttemptDto {

@JsonKey(includeToJson: false) String? get id;@DatetimeTimestampConverter() DateTime get attemptDate; int get maxScore; int get achievedScore;
/// Create a copy of OsceAttemptDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OsceAttemptDtoCopyWith<OsceAttemptDto> get copyWith => _$OsceAttemptDtoCopyWithImpl<OsceAttemptDto>(this as OsceAttemptDto, _$identity);

  /// Serializes this OsceAttemptDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OsceAttemptDto&&(identical(other.id, id) || other.id == id)&&(identical(other.attemptDate, attemptDate) || other.attemptDate == attemptDate)&&(identical(other.maxScore, maxScore) || other.maxScore == maxScore)&&(identical(other.achievedScore, achievedScore) || other.achievedScore == achievedScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attemptDate,maxScore,achievedScore);

@override
String toString() {
  return 'OsceAttemptDto(id: $id, attemptDate: $attemptDate, maxScore: $maxScore, achievedScore: $achievedScore)';
}


}

/// @nodoc
abstract mixin class $OsceAttemptDtoCopyWith<$Res>  {
  factory $OsceAttemptDtoCopyWith(OsceAttemptDto value, $Res Function(OsceAttemptDto) _then) = _$OsceAttemptDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) String? id,@DatetimeTimestampConverter() DateTime attemptDate, int maxScore, int achievedScore
});




}
/// @nodoc
class _$OsceAttemptDtoCopyWithImpl<$Res>
    implements $OsceAttemptDtoCopyWith<$Res> {
  _$OsceAttemptDtoCopyWithImpl(this._self, this._then);

  final OsceAttemptDto _self;
  final $Res Function(OsceAttemptDto) _then;

/// Create a copy of OsceAttemptDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? attemptDate = null,Object? maxScore = null,Object? achievedScore = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,attemptDate: null == attemptDate ? _self.attemptDate : attemptDate // ignore: cast_nullable_to_non_nullable
as DateTime,maxScore: null == maxScore ? _self.maxScore : maxScore // ignore: cast_nullable_to_non_nullable
as int,achievedScore: null == achievedScore ? _self.achievedScore : achievedScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OsceAttemptDto].
extension OsceAttemptDtoPatterns on OsceAttemptDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OsceAttemptDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OsceAttemptDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OsceAttemptDto value)  $default,){
final _that = this;
switch (_that) {
case _OsceAttemptDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OsceAttemptDto value)?  $default,){
final _that = this;
switch (_that) {
case _OsceAttemptDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false)  String? id, @DatetimeTimestampConverter()  DateTime attemptDate,  int maxScore,  int achievedScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OsceAttemptDto() when $default != null:
return $default(_that.id,_that.attemptDate,_that.maxScore,_that.achievedScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false)  String? id, @DatetimeTimestampConverter()  DateTime attemptDate,  int maxScore,  int achievedScore)  $default,) {final _that = this;
switch (_that) {
case _OsceAttemptDto():
return $default(_that.id,_that.attemptDate,_that.maxScore,_that.achievedScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeToJson: false)  String? id, @DatetimeTimestampConverter()  DateTime attemptDate,  int maxScore,  int achievedScore)?  $default,) {final _that = this;
switch (_that) {
case _OsceAttemptDto() when $default != null:
return $default(_that.id,_that.attemptDate,_that.maxScore,_that.achievedScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OsceAttemptDto implements OsceAttemptDto {
  const _OsceAttemptDto({@JsonKey(includeToJson: false) this.id, @DatetimeTimestampConverter() required this.attemptDate, required this.maxScore, required this.achievedScore});
  factory _OsceAttemptDto.fromJson(Map<String, dynamic> json) => _$OsceAttemptDtoFromJson(json);

@override@JsonKey(includeToJson: false) final  String? id;
@override@DatetimeTimestampConverter() final  DateTime attemptDate;
@override final  int maxScore;
@override final  int achievedScore;

/// Create a copy of OsceAttemptDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OsceAttemptDtoCopyWith<_OsceAttemptDto> get copyWith => __$OsceAttemptDtoCopyWithImpl<_OsceAttemptDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OsceAttemptDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OsceAttemptDto&&(identical(other.id, id) || other.id == id)&&(identical(other.attemptDate, attemptDate) || other.attemptDate == attemptDate)&&(identical(other.maxScore, maxScore) || other.maxScore == maxScore)&&(identical(other.achievedScore, achievedScore) || other.achievedScore == achievedScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attemptDate,maxScore,achievedScore);

@override
String toString() {
  return 'OsceAttemptDto(id: $id, attemptDate: $attemptDate, maxScore: $maxScore, achievedScore: $achievedScore)';
}


}

/// @nodoc
abstract mixin class _$OsceAttemptDtoCopyWith<$Res> implements $OsceAttemptDtoCopyWith<$Res> {
  factory _$OsceAttemptDtoCopyWith(_OsceAttemptDto value, $Res Function(_OsceAttemptDto) _then) = __$OsceAttemptDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false) String? id,@DatetimeTimestampConverter() DateTime attemptDate, int maxScore, int achievedScore
});




}
/// @nodoc
class __$OsceAttemptDtoCopyWithImpl<$Res>
    implements _$OsceAttemptDtoCopyWith<$Res> {
  __$OsceAttemptDtoCopyWithImpl(this._self, this._then);

  final _OsceAttemptDto _self;
  final $Res Function(_OsceAttemptDto) _then;

/// Create a copy of OsceAttemptDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? attemptDate = null,Object? maxScore = null,Object? achievedScore = null,}) {
  return _then(_OsceAttemptDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,attemptDate: null == attemptDate ? _self.attemptDate : attemptDate // ignore: cast_nullable_to_non_nullable
as DateTime,maxScore: null == maxScore ? _self.maxScore : maxScore // ignore: cast_nullable_to_non_nullable
as int,achievedScore: null == achievedScore ? _self.achievedScore : achievedScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
