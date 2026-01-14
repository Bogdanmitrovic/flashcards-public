// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserReport {

 String get userId; ReportReason get reason; DateTime get reportTime; String? get message;
/// Create a copy of UserReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReportCopyWith<UserReport> get copyWith => _$UserReportCopyWithImpl<UserReport>(this as UserReport, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReport&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.reportTime, reportTime) || other.reportTime == reportTime)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,userId,reason,reportTime,message);

@override
String toString() {
  return 'UserReport(userId: $userId, reason: $reason, reportTime: $reportTime, message: $message)';
}


}

/// @nodoc
abstract mixin class $UserReportCopyWith<$Res>  {
  factory $UserReportCopyWith(UserReport value, $Res Function(UserReport) _then) = _$UserReportCopyWithImpl;
@useResult
$Res call({
 String userId, ReportReason reason, DateTime reportTime, String? message
});




}
/// @nodoc
class _$UserReportCopyWithImpl<$Res>
    implements $UserReportCopyWith<$Res> {
  _$UserReportCopyWithImpl(this._self, this._then);

  final UserReport _self;
  final $Res Function(UserReport) _then;

/// Create a copy of UserReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? reason = null,Object? reportTime = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as ReportReason,reportTime: null == reportTime ? _self.reportTime : reportTime // ignore: cast_nullable_to_non_nullable
as DateTime,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserReport].
extension UserReportPatterns on UserReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReport value)  $default,){
final _that = this;
switch (_that) {
case _UserReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReport value)?  $default,){
final _that = this;
switch (_that) {
case _UserReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  ReportReason reason,  DateTime reportTime,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserReport() when $default != null:
return $default(_that.userId,_that.reason,_that.reportTime,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  ReportReason reason,  DateTime reportTime,  String? message)  $default,) {final _that = this;
switch (_that) {
case _UserReport():
return $default(_that.userId,_that.reason,_that.reportTime,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  ReportReason reason,  DateTime reportTime,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _UserReport() when $default != null:
return $default(_that.userId,_that.reason,_that.reportTime,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _UserReport implements UserReport {
  const _UserReport({required this.userId, required this.reason, required this.reportTime, required this.message});
  

@override final  String userId;
@override final  ReportReason reason;
@override final  DateTime reportTime;
@override final  String? message;

/// Create a copy of UserReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReportCopyWith<_UserReport> get copyWith => __$UserReportCopyWithImpl<_UserReport>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReport&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.reportTime, reportTime) || other.reportTime == reportTime)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,userId,reason,reportTime,message);

@override
String toString() {
  return 'UserReport(userId: $userId, reason: $reason, reportTime: $reportTime, message: $message)';
}


}

/// @nodoc
abstract mixin class _$UserReportCopyWith<$Res> implements $UserReportCopyWith<$Res> {
  factory _$UserReportCopyWith(_UserReport value, $Res Function(_UserReport) _then) = __$UserReportCopyWithImpl;
@override @useResult
$Res call({
 String userId, ReportReason reason, DateTime reportTime, String? message
});




}
/// @nodoc
class __$UserReportCopyWithImpl<$Res>
    implements _$UserReportCopyWith<$Res> {
  __$UserReportCopyWithImpl(this._self, this._then);

  final _UserReport _self;
  final $Res Function(_UserReport) _then;

/// Create a copy of UserReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? reason = null,Object? reportTime = null,Object? message = freezed,}) {
  return _then(_UserReport(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as ReportReason,reportTime: null == reportTime ? _self.reportTime : reportTime // ignore: cast_nullable_to_non_nullable
as DateTime,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
