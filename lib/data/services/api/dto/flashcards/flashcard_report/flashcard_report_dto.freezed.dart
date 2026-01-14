// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_report_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FlashcardReportDto {

@JsonKey(includeToJson: false) String? get id; String get packName; FlashcardSnapshotDto get flashcardSnapshot; int get reportsCount;@DatetimeTimestampConverter() DateTime get firstReportTime;
/// Create a copy of FlashcardReportDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlashcardReportDtoCopyWith<FlashcardReportDto> get copyWith => _$FlashcardReportDtoCopyWithImpl<FlashcardReportDto>(this as FlashcardReportDto, _$identity);

  /// Serializes this FlashcardReportDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlashcardReportDto&&(identical(other.id, id) || other.id == id)&&(identical(other.packName, packName) || other.packName == packName)&&(identical(other.flashcardSnapshot, flashcardSnapshot) || other.flashcardSnapshot == flashcardSnapshot)&&(identical(other.reportsCount, reportsCount) || other.reportsCount == reportsCount)&&(identical(other.firstReportTime, firstReportTime) || other.firstReportTime == firstReportTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,packName,flashcardSnapshot,reportsCount,firstReportTime);

@override
String toString() {
  return 'FlashcardReportDto(id: $id, packName: $packName, flashcardSnapshot: $flashcardSnapshot, reportsCount: $reportsCount, firstReportTime: $firstReportTime)';
}


}

/// @nodoc
abstract mixin class $FlashcardReportDtoCopyWith<$Res>  {
  factory $FlashcardReportDtoCopyWith(FlashcardReportDto value, $Res Function(FlashcardReportDto) _then) = _$FlashcardReportDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) String? id, String packName, FlashcardSnapshotDto flashcardSnapshot, int reportsCount,@DatetimeTimestampConverter() DateTime firstReportTime
});


$FlashcardSnapshotDtoCopyWith<$Res> get flashcardSnapshot;

}
/// @nodoc
class _$FlashcardReportDtoCopyWithImpl<$Res>
    implements $FlashcardReportDtoCopyWith<$Res> {
  _$FlashcardReportDtoCopyWithImpl(this._self, this._then);

  final FlashcardReportDto _self;
  final $Res Function(FlashcardReportDto) _then;

/// Create a copy of FlashcardReportDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? packName = null,Object? flashcardSnapshot = null,Object? reportsCount = null,Object? firstReportTime = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,packName: null == packName ? _self.packName : packName // ignore: cast_nullable_to_non_nullable
as String,flashcardSnapshot: null == flashcardSnapshot ? _self.flashcardSnapshot : flashcardSnapshot // ignore: cast_nullable_to_non_nullable
as FlashcardSnapshotDto,reportsCount: null == reportsCount ? _self.reportsCount : reportsCount // ignore: cast_nullable_to_non_nullable
as int,firstReportTime: null == firstReportTime ? _self.firstReportTime : firstReportTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of FlashcardReportDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlashcardSnapshotDtoCopyWith<$Res> get flashcardSnapshot {
  
  return $FlashcardSnapshotDtoCopyWith<$Res>(_self.flashcardSnapshot, (value) {
    return _then(_self.copyWith(flashcardSnapshot: value));
  });
}
}


/// Adds pattern-matching-related methods to [FlashcardReportDto].
extension FlashcardReportDtoPatterns on FlashcardReportDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlashcardReportDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlashcardReportDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlashcardReportDto value)  $default,){
final _that = this;
switch (_that) {
case _FlashcardReportDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlashcardReportDto value)?  $default,){
final _that = this;
switch (_that) {
case _FlashcardReportDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false)  String? id,  String packName,  FlashcardSnapshotDto flashcardSnapshot,  int reportsCount, @DatetimeTimestampConverter()  DateTime firstReportTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlashcardReportDto() when $default != null:
return $default(_that.id,_that.packName,_that.flashcardSnapshot,_that.reportsCount,_that.firstReportTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false)  String? id,  String packName,  FlashcardSnapshotDto flashcardSnapshot,  int reportsCount, @DatetimeTimestampConverter()  DateTime firstReportTime)  $default,) {final _that = this;
switch (_that) {
case _FlashcardReportDto():
return $default(_that.id,_that.packName,_that.flashcardSnapshot,_that.reportsCount,_that.firstReportTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeToJson: false)  String? id,  String packName,  FlashcardSnapshotDto flashcardSnapshot,  int reportsCount, @DatetimeTimestampConverter()  DateTime firstReportTime)?  $default,) {final _that = this;
switch (_that) {
case _FlashcardReportDto() when $default != null:
return $default(_that.id,_that.packName,_that.flashcardSnapshot,_that.reportsCount,_that.firstReportTime);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _FlashcardReportDto implements FlashcardReportDto {
  const _FlashcardReportDto({@JsonKey(includeToJson: false) this.id, required this.packName, required this.flashcardSnapshot, this.reportsCount = 1, @DatetimeTimestampConverter() required this.firstReportTime});
  factory _FlashcardReportDto.fromJson(Map<String, dynamic> json) => _$FlashcardReportDtoFromJson(json);

@override@JsonKey(includeToJson: false) final  String? id;
@override final  String packName;
@override final  FlashcardSnapshotDto flashcardSnapshot;
@override@JsonKey() final  int reportsCount;
@override@DatetimeTimestampConverter() final  DateTime firstReportTime;

/// Create a copy of FlashcardReportDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlashcardReportDtoCopyWith<_FlashcardReportDto> get copyWith => __$FlashcardReportDtoCopyWithImpl<_FlashcardReportDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlashcardReportDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlashcardReportDto&&(identical(other.id, id) || other.id == id)&&(identical(other.packName, packName) || other.packName == packName)&&(identical(other.flashcardSnapshot, flashcardSnapshot) || other.flashcardSnapshot == flashcardSnapshot)&&(identical(other.reportsCount, reportsCount) || other.reportsCount == reportsCount)&&(identical(other.firstReportTime, firstReportTime) || other.firstReportTime == firstReportTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,packName,flashcardSnapshot,reportsCount,firstReportTime);

@override
String toString() {
  return 'FlashcardReportDto(id: $id, packName: $packName, flashcardSnapshot: $flashcardSnapshot, reportsCount: $reportsCount, firstReportTime: $firstReportTime)';
}


}

/// @nodoc
abstract mixin class _$FlashcardReportDtoCopyWith<$Res> implements $FlashcardReportDtoCopyWith<$Res> {
  factory _$FlashcardReportDtoCopyWith(_FlashcardReportDto value, $Res Function(_FlashcardReportDto) _then) = __$FlashcardReportDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false) String? id, String packName, FlashcardSnapshotDto flashcardSnapshot, int reportsCount,@DatetimeTimestampConverter() DateTime firstReportTime
});


@override $FlashcardSnapshotDtoCopyWith<$Res> get flashcardSnapshot;

}
/// @nodoc
class __$FlashcardReportDtoCopyWithImpl<$Res>
    implements _$FlashcardReportDtoCopyWith<$Res> {
  __$FlashcardReportDtoCopyWithImpl(this._self, this._then);

  final _FlashcardReportDto _self;
  final $Res Function(_FlashcardReportDto) _then;

/// Create a copy of FlashcardReportDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? packName = null,Object? flashcardSnapshot = null,Object? reportsCount = null,Object? firstReportTime = null,}) {
  return _then(_FlashcardReportDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,packName: null == packName ? _self.packName : packName // ignore: cast_nullable_to_non_nullable
as String,flashcardSnapshot: null == flashcardSnapshot ? _self.flashcardSnapshot : flashcardSnapshot // ignore: cast_nullable_to_non_nullable
as FlashcardSnapshotDto,reportsCount: null == reportsCount ? _self.reportsCount : reportsCount // ignore: cast_nullable_to_non_nullable
as int,firstReportTime: null == firstReportTime ? _self.firstReportTime : firstReportTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of FlashcardReportDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlashcardSnapshotDtoCopyWith<$Res> get flashcardSnapshot {
  
  return $FlashcardSnapshotDtoCopyWith<$Res>(_self.flashcardSnapshot, (value) {
    return _then(_self.copyWith(flashcardSnapshot: value));
  });
}
}

// dart format on
