// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'osce_performance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OscePerformance {

 SimpleOsce get simpleOsce; DateTime get firstAttemptDate; int get bestScore; int get attemptsCount;
/// Create a copy of OscePerformance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OscePerformanceCopyWith<OscePerformance> get copyWith => _$OscePerformanceCopyWithImpl<OscePerformance>(this as OscePerformance, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OscePerformance&&(identical(other.simpleOsce, simpleOsce) || other.simpleOsce == simpleOsce)&&(identical(other.firstAttemptDate, firstAttemptDate) || other.firstAttemptDate == firstAttemptDate)&&(identical(other.bestScore, bestScore) || other.bestScore == bestScore)&&(identical(other.attemptsCount, attemptsCount) || other.attemptsCount == attemptsCount));
}


@override
int get hashCode => Object.hash(runtimeType,simpleOsce,firstAttemptDate,bestScore,attemptsCount);

@override
String toString() {
  return 'OscePerformance(simpleOsce: $simpleOsce, firstAttemptDate: $firstAttemptDate, bestScore: $bestScore, attemptsCount: $attemptsCount)';
}


}

/// @nodoc
abstract mixin class $OscePerformanceCopyWith<$Res>  {
  factory $OscePerformanceCopyWith(OscePerformance value, $Res Function(OscePerformance) _then) = _$OscePerformanceCopyWithImpl;
@useResult
$Res call({
 SimpleOsce simpleOsce, DateTime firstAttemptDate, int bestScore, int attemptsCount
});


$SimpleOsceCopyWith<$Res> get simpleOsce;

}
/// @nodoc
class _$OscePerformanceCopyWithImpl<$Res>
    implements $OscePerformanceCopyWith<$Res> {
  _$OscePerformanceCopyWithImpl(this._self, this._then);

  final OscePerformance _self;
  final $Res Function(OscePerformance) _then;

/// Create a copy of OscePerformance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? simpleOsce = null,Object? firstAttemptDate = null,Object? bestScore = null,Object? attemptsCount = null,}) {
  return _then(_self.copyWith(
simpleOsce: null == simpleOsce ? _self.simpleOsce : simpleOsce // ignore: cast_nullable_to_non_nullable
as SimpleOsce,firstAttemptDate: null == firstAttemptDate ? _self.firstAttemptDate : firstAttemptDate // ignore: cast_nullable_to_non_nullable
as DateTime,bestScore: null == bestScore ? _self.bestScore : bestScore // ignore: cast_nullable_to_non_nullable
as int,attemptsCount: null == attemptsCount ? _self.attemptsCount : attemptsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of OscePerformance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleOsceCopyWith<$Res> get simpleOsce {
  
  return $SimpleOsceCopyWith<$Res>(_self.simpleOsce, (value) {
    return _then(_self.copyWith(simpleOsce: value));
  });
}
}


/// Adds pattern-matching-related methods to [OscePerformance].
extension OscePerformancePatterns on OscePerformance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OscePerformance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OscePerformance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OscePerformance value)  $default,){
final _that = this;
switch (_that) {
case _OscePerformance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OscePerformance value)?  $default,){
final _that = this;
switch (_that) {
case _OscePerformance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SimpleOsce simpleOsce,  DateTime firstAttemptDate,  int bestScore,  int attemptsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OscePerformance() when $default != null:
return $default(_that.simpleOsce,_that.firstAttemptDate,_that.bestScore,_that.attemptsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SimpleOsce simpleOsce,  DateTime firstAttemptDate,  int bestScore,  int attemptsCount)  $default,) {final _that = this;
switch (_that) {
case _OscePerformance():
return $default(_that.simpleOsce,_that.firstAttemptDate,_that.bestScore,_that.attemptsCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SimpleOsce simpleOsce,  DateTime firstAttemptDate,  int bestScore,  int attemptsCount)?  $default,) {final _that = this;
switch (_that) {
case _OscePerformance() when $default != null:
return $default(_that.simpleOsce,_that.firstAttemptDate,_that.bestScore,_that.attemptsCount);case _:
  return null;

}
}

}

/// @nodoc


class _OscePerformance implements OscePerformance {
  const _OscePerformance({required this.simpleOsce, required this.firstAttemptDate, required this.bestScore, required this.attemptsCount});
  

@override final  SimpleOsce simpleOsce;
@override final  DateTime firstAttemptDate;
@override final  int bestScore;
@override final  int attemptsCount;

/// Create a copy of OscePerformance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OscePerformanceCopyWith<_OscePerformance> get copyWith => __$OscePerformanceCopyWithImpl<_OscePerformance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OscePerformance&&(identical(other.simpleOsce, simpleOsce) || other.simpleOsce == simpleOsce)&&(identical(other.firstAttemptDate, firstAttemptDate) || other.firstAttemptDate == firstAttemptDate)&&(identical(other.bestScore, bestScore) || other.bestScore == bestScore)&&(identical(other.attemptsCount, attemptsCount) || other.attemptsCount == attemptsCount));
}


@override
int get hashCode => Object.hash(runtimeType,simpleOsce,firstAttemptDate,bestScore,attemptsCount);

@override
String toString() {
  return 'OscePerformance(simpleOsce: $simpleOsce, firstAttemptDate: $firstAttemptDate, bestScore: $bestScore, attemptsCount: $attemptsCount)';
}


}

/// @nodoc
abstract mixin class _$OscePerformanceCopyWith<$Res> implements $OscePerformanceCopyWith<$Res> {
  factory _$OscePerformanceCopyWith(_OscePerformance value, $Res Function(_OscePerformance) _then) = __$OscePerformanceCopyWithImpl;
@override @useResult
$Res call({
 SimpleOsce simpleOsce, DateTime firstAttemptDate, int bestScore, int attemptsCount
});


@override $SimpleOsceCopyWith<$Res> get simpleOsce;

}
/// @nodoc
class __$OscePerformanceCopyWithImpl<$Res>
    implements _$OscePerformanceCopyWith<$Res> {
  __$OscePerformanceCopyWithImpl(this._self, this._then);

  final _OscePerformance _self;
  final $Res Function(_OscePerformance) _then;

/// Create a copy of OscePerformance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? simpleOsce = null,Object? firstAttemptDate = null,Object? bestScore = null,Object? attemptsCount = null,}) {
  return _then(_OscePerformance(
simpleOsce: null == simpleOsce ? _self.simpleOsce : simpleOsce // ignore: cast_nullable_to_non_nullable
as SimpleOsce,firstAttemptDate: null == firstAttemptDate ? _self.firstAttemptDate : firstAttemptDate // ignore: cast_nullable_to_non_nullable
as DateTime,bestScore: null == bestScore ? _self.bestScore : bestScore // ignore: cast_nullable_to_non_nullable
as int,attemptsCount: null == attemptsCount ? _self.attemptsCount : attemptsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of OscePerformance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleOsceCopyWith<$Res> get simpleOsce {
  
  return $SimpleOsceCopyWith<$Res>(_self.simpleOsce, (value) {
    return _then(_self.copyWith(simpleOsce: value));
  });
}
}

// dart format on
