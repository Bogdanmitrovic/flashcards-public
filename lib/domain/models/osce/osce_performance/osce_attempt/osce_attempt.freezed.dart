// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'osce_attempt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OsceAttempt {

 String get id; DateTime get attemptDate; int get maxScore; int get achievedScore;
/// Create a copy of OsceAttempt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OsceAttemptCopyWith<OsceAttempt> get copyWith => _$OsceAttemptCopyWithImpl<OsceAttempt>(this as OsceAttempt, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OsceAttempt&&(identical(other.id, id) || other.id == id)&&(identical(other.attemptDate, attemptDate) || other.attemptDate == attemptDate)&&(identical(other.maxScore, maxScore) || other.maxScore == maxScore)&&(identical(other.achievedScore, achievedScore) || other.achievedScore == achievedScore));
}


@override
int get hashCode => Object.hash(runtimeType,id,attemptDate,maxScore,achievedScore);

@override
String toString() {
  return 'OsceAttempt(id: $id, attemptDate: $attemptDate, maxScore: $maxScore, achievedScore: $achievedScore)';
}


}

/// @nodoc
abstract mixin class $OsceAttemptCopyWith<$Res>  {
  factory $OsceAttemptCopyWith(OsceAttempt value, $Res Function(OsceAttempt) _then) = _$OsceAttemptCopyWithImpl;
@useResult
$Res call({
 String id, DateTime attemptDate, int maxScore, int achievedScore
});




}
/// @nodoc
class _$OsceAttemptCopyWithImpl<$Res>
    implements $OsceAttemptCopyWith<$Res> {
  _$OsceAttemptCopyWithImpl(this._self, this._then);

  final OsceAttempt _self;
  final $Res Function(OsceAttempt) _then;

/// Create a copy of OsceAttempt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? attemptDate = null,Object? maxScore = null,Object? achievedScore = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,attemptDate: null == attemptDate ? _self.attemptDate : attemptDate // ignore: cast_nullable_to_non_nullable
as DateTime,maxScore: null == maxScore ? _self.maxScore : maxScore // ignore: cast_nullable_to_non_nullable
as int,achievedScore: null == achievedScore ? _self.achievedScore : achievedScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OsceAttempt].
extension OsceAttemptPatterns on OsceAttempt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OsceAttempt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OsceAttempt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OsceAttempt value)  $default,){
final _that = this;
switch (_that) {
case _OsceAttempt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OsceAttempt value)?  $default,){
final _that = this;
switch (_that) {
case _OsceAttempt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime attemptDate,  int maxScore,  int achievedScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OsceAttempt() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime attemptDate,  int maxScore,  int achievedScore)  $default,) {final _that = this;
switch (_that) {
case _OsceAttempt():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime attemptDate,  int maxScore,  int achievedScore)?  $default,) {final _that = this;
switch (_that) {
case _OsceAttempt() when $default != null:
return $default(_that.id,_that.attemptDate,_that.maxScore,_that.achievedScore);case _:
  return null;

}
}

}

/// @nodoc


class _OsceAttempt implements OsceAttempt {
  const _OsceAttempt({required this.id, required this.attemptDate, required this.maxScore, required this.achievedScore});
  

@override final  String id;
@override final  DateTime attemptDate;
@override final  int maxScore;
@override final  int achievedScore;

/// Create a copy of OsceAttempt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OsceAttemptCopyWith<_OsceAttempt> get copyWith => __$OsceAttemptCopyWithImpl<_OsceAttempt>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OsceAttempt&&(identical(other.id, id) || other.id == id)&&(identical(other.attemptDate, attemptDate) || other.attemptDate == attemptDate)&&(identical(other.maxScore, maxScore) || other.maxScore == maxScore)&&(identical(other.achievedScore, achievedScore) || other.achievedScore == achievedScore));
}


@override
int get hashCode => Object.hash(runtimeType,id,attemptDate,maxScore,achievedScore);

@override
String toString() {
  return 'OsceAttempt(id: $id, attemptDate: $attemptDate, maxScore: $maxScore, achievedScore: $achievedScore)';
}


}

/// @nodoc
abstract mixin class _$OsceAttemptCopyWith<$Res> implements $OsceAttemptCopyWith<$Res> {
  factory _$OsceAttemptCopyWith(_OsceAttempt value, $Res Function(_OsceAttempt) _then) = __$OsceAttemptCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime attemptDate, int maxScore, int achievedScore
});




}
/// @nodoc
class __$OsceAttemptCopyWithImpl<$Res>
    implements _$OsceAttemptCopyWith<$Res> {
  __$OsceAttemptCopyWithImpl(this._self, this._then);

  final _OsceAttempt _self;
  final $Res Function(_OsceAttempt) _then;

/// Create a copy of OsceAttempt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? attemptDate = null,Object? maxScore = null,Object? achievedScore = null,}) {
  return _then(_OsceAttempt(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,attemptDate: null == attemptDate ? _self.attemptDate : attemptDate // ignore: cast_nullable_to_non_nullable
as DateTime,maxScore: null == maxScore ? _self.maxScore : maxScore // ignore: cast_nullable_to_non_nullable
as int,achievedScore: null == achievedScore ? _self.achievedScore : achievedScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
