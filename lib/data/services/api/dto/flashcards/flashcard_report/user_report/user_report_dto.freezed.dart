// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_report_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserReportDto {

@JsonKey(includeToJson: false) String? get id;@JsonEnum(fieldRename: FieldRename.pascal) ReportReason get reason;@DatetimeTimestampConverter() DateTime get reportTime; String? get message;
/// Create a copy of UserReportDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReportDtoCopyWith<UserReportDto> get copyWith => _$UserReportDtoCopyWithImpl<UserReportDto>(this as UserReportDto, _$identity);

  /// Serializes this UserReportDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReportDto&&(identical(other.id, id) || other.id == id)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.reportTime, reportTime) || other.reportTime == reportTime)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reason,reportTime,message);

@override
String toString() {
  return 'UserReportDto(id: $id, reason: $reason, reportTime: $reportTime, message: $message)';
}


}

/// @nodoc
abstract mixin class $UserReportDtoCopyWith<$Res>  {
  factory $UserReportDtoCopyWith(UserReportDto value, $Res Function(UserReportDto) _then) = _$UserReportDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) String? id,@JsonEnum(fieldRename: FieldRename.pascal) ReportReason reason,@DatetimeTimestampConverter() DateTime reportTime, String? message
});




}
/// @nodoc
class _$UserReportDtoCopyWithImpl<$Res>
    implements $UserReportDtoCopyWith<$Res> {
  _$UserReportDtoCopyWithImpl(this._self, this._then);

  final UserReportDto _self;
  final $Res Function(UserReportDto) _then;

/// Create a copy of UserReportDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? reason = null,Object? reportTime = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as ReportReason,reportTime: null == reportTime ? _self.reportTime : reportTime // ignore: cast_nullable_to_non_nullable
as DateTime,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserReportDto].
extension UserReportDtoPatterns on UserReportDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReportDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReportDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReportDto value)  $default,){
final _that = this;
switch (_that) {
case _UserReportDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReportDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserReportDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false)  String? id, @JsonEnum(fieldRename: FieldRename.pascal)  ReportReason reason, @DatetimeTimestampConverter()  DateTime reportTime,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserReportDto() when $default != null:
return $default(_that.id,_that.reason,_that.reportTime,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false)  String? id, @JsonEnum(fieldRename: FieldRename.pascal)  ReportReason reason, @DatetimeTimestampConverter()  DateTime reportTime,  String? message)  $default,) {final _that = this;
switch (_that) {
case _UserReportDto():
return $default(_that.id,_that.reason,_that.reportTime,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeToJson: false)  String? id, @JsonEnum(fieldRename: FieldRename.pascal)  ReportReason reason, @DatetimeTimestampConverter()  DateTime reportTime,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _UserReportDto() when $default != null:
return $default(_that.id,_that.reason,_that.reportTime,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserReportDto implements UserReportDto {
  const _UserReportDto({@JsonKey(includeToJson: false) this.id, @JsonEnum(fieldRename: FieldRename.pascal) required this.reason, @DatetimeTimestampConverter() required this.reportTime, required this.message});
  factory _UserReportDto.fromJson(Map<String, dynamic> json) => _$UserReportDtoFromJson(json);

@override@JsonKey(includeToJson: false) final  String? id;
@override@JsonEnum(fieldRename: FieldRename.pascal) final  ReportReason reason;
@override@DatetimeTimestampConverter() final  DateTime reportTime;
@override final  String? message;

/// Create a copy of UserReportDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReportDtoCopyWith<_UserReportDto> get copyWith => __$UserReportDtoCopyWithImpl<_UserReportDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserReportDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReportDto&&(identical(other.id, id) || other.id == id)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.reportTime, reportTime) || other.reportTime == reportTime)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reason,reportTime,message);

@override
String toString() {
  return 'UserReportDto(id: $id, reason: $reason, reportTime: $reportTime, message: $message)';
}


}

/// @nodoc
abstract mixin class _$UserReportDtoCopyWith<$Res> implements $UserReportDtoCopyWith<$Res> {
  factory _$UserReportDtoCopyWith(_UserReportDto value, $Res Function(_UserReportDto) _then) = __$UserReportDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false) String? id,@JsonEnum(fieldRename: FieldRename.pascal) ReportReason reason,@DatetimeTimestampConverter() DateTime reportTime, String? message
});




}
/// @nodoc
class __$UserReportDtoCopyWithImpl<$Res>
    implements _$UserReportDtoCopyWith<$Res> {
  __$UserReportDtoCopyWithImpl(this._self, this._then);

  final _UserReportDto _self;
  final $Res Function(_UserReportDto) _then;

/// Create a copy of UserReportDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? reason = null,Object? reportTime = null,Object? message = freezed,}) {
  return _then(_UserReportDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as ReportReason,reportTime: null == reportTime ? _self.reportTime : reportTime // ignore: cast_nullable_to_non_nullable
as DateTime,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
