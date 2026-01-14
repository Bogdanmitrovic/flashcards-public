// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FlashcardReport {

 Flashcard get flashcard; String get packName; int get reportsCount; DateTime get firstReportTime;
/// Create a copy of FlashcardReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlashcardReportCopyWith<FlashcardReport> get copyWith => _$FlashcardReportCopyWithImpl<FlashcardReport>(this as FlashcardReport, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlashcardReport&&(identical(other.flashcard, flashcard) || other.flashcard == flashcard)&&(identical(other.packName, packName) || other.packName == packName)&&(identical(other.reportsCount, reportsCount) || other.reportsCount == reportsCount)&&(identical(other.firstReportTime, firstReportTime) || other.firstReportTime == firstReportTime));
}


@override
int get hashCode => Object.hash(runtimeType,flashcard,packName,reportsCount,firstReportTime);

@override
String toString() {
  return 'FlashcardReport(flashcard: $flashcard, packName: $packName, reportsCount: $reportsCount, firstReportTime: $firstReportTime)';
}


}

/// @nodoc
abstract mixin class $FlashcardReportCopyWith<$Res>  {
  factory $FlashcardReportCopyWith(FlashcardReport value, $Res Function(FlashcardReport) _then) = _$FlashcardReportCopyWithImpl;
@useResult
$Res call({
 Flashcard flashcard, String packName, int reportsCount, DateTime firstReportTime
});


$FlashcardCopyWith<$Res> get flashcard;

}
/// @nodoc
class _$FlashcardReportCopyWithImpl<$Res>
    implements $FlashcardReportCopyWith<$Res> {
  _$FlashcardReportCopyWithImpl(this._self, this._then);

  final FlashcardReport _self;
  final $Res Function(FlashcardReport) _then;

/// Create a copy of FlashcardReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? flashcard = null,Object? packName = null,Object? reportsCount = null,Object? firstReportTime = null,}) {
  return _then(_self.copyWith(
flashcard: null == flashcard ? _self.flashcard : flashcard // ignore: cast_nullable_to_non_nullable
as Flashcard,packName: null == packName ? _self.packName : packName // ignore: cast_nullable_to_non_nullable
as String,reportsCount: null == reportsCount ? _self.reportsCount : reportsCount // ignore: cast_nullable_to_non_nullable
as int,firstReportTime: null == firstReportTime ? _self.firstReportTime : firstReportTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of FlashcardReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlashcardCopyWith<$Res> get flashcard {
  
  return $FlashcardCopyWith<$Res>(_self.flashcard, (value) {
    return _then(_self.copyWith(flashcard: value));
  });
}
}


/// Adds pattern-matching-related methods to [FlashcardReport].
extension FlashcardReportPatterns on FlashcardReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlashcardReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlashcardReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlashcardReport value)  $default,){
final _that = this;
switch (_that) {
case _FlashcardReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlashcardReport value)?  $default,){
final _that = this;
switch (_that) {
case _FlashcardReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Flashcard flashcard,  String packName,  int reportsCount,  DateTime firstReportTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlashcardReport() when $default != null:
return $default(_that.flashcard,_that.packName,_that.reportsCount,_that.firstReportTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Flashcard flashcard,  String packName,  int reportsCount,  DateTime firstReportTime)  $default,) {final _that = this;
switch (_that) {
case _FlashcardReport():
return $default(_that.flashcard,_that.packName,_that.reportsCount,_that.firstReportTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Flashcard flashcard,  String packName,  int reportsCount,  DateTime firstReportTime)?  $default,) {final _that = this;
switch (_that) {
case _FlashcardReport() when $default != null:
return $default(_that.flashcard,_that.packName,_that.reportsCount,_that.firstReportTime);case _:
  return null;

}
}

}

/// @nodoc


class _FlashcardReport implements FlashcardReport {
  const _FlashcardReport({required this.flashcard, required this.packName, required this.reportsCount, required this.firstReportTime});
  

@override final  Flashcard flashcard;
@override final  String packName;
@override final  int reportsCount;
@override final  DateTime firstReportTime;

/// Create a copy of FlashcardReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlashcardReportCopyWith<_FlashcardReport> get copyWith => __$FlashcardReportCopyWithImpl<_FlashcardReport>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlashcardReport&&(identical(other.flashcard, flashcard) || other.flashcard == flashcard)&&(identical(other.packName, packName) || other.packName == packName)&&(identical(other.reportsCount, reportsCount) || other.reportsCount == reportsCount)&&(identical(other.firstReportTime, firstReportTime) || other.firstReportTime == firstReportTime));
}


@override
int get hashCode => Object.hash(runtimeType,flashcard,packName,reportsCount,firstReportTime);

@override
String toString() {
  return 'FlashcardReport(flashcard: $flashcard, packName: $packName, reportsCount: $reportsCount, firstReportTime: $firstReportTime)';
}


}

/// @nodoc
abstract mixin class _$FlashcardReportCopyWith<$Res> implements $FlashcardReportCopyWith<$Res> {
  factory _$FlashcardReportCopyWith(_FlashcardReport value, $Res Function(_FlashcardReport) _then) = __$FlashcardReportCopyWithImpl;
@override @useResult
$Res call({
 Flashcard flashcard, String packName, int reportsCount, DateTime firstReportTime
});


@override $FlashcardCopyWith<$Res> get flashcard;

}
/// @nodoc
class __$FlashcardReportCopyWithImpl<$Res>
    implements _$FlashcardReportCopyWith<$Res> {
  __$FlashcardReportCopyWithImpl(this._self, this._then);

  final _FlashcardReport _self;
  final $Res Function(_FlashcardReport) _then;

/// Create a copy of FlashcardReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? flashcard = null,Object? packName = null,Object? reportsCount = null,Object? firstReportTime = null,}) {
  return _then(_FlashcardReport(
flashcard: null == flashcard ? _self.flashcard : flashcard // ignore: cast_nullable_to_non_nullable
as Flashcard,packName: null == packName ? _self.packName : packName // ignore: cast_nullable_to_non_nullable
as String,reportsCount: null == reportsCount ? _self.reportsCount : reportsCount // ignore: cast_nullable_to_non_nullable
as int,firstReportTime: null == firstReportTime ? _self.firstReportTime : firstReportTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of FlashcardReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlashcardCopyWith<$Res> get flashcard {
  
  return $FlashcardCopyWith<$Res>(_self.flashcard, (value) {
    return _then(_self.copyWith(flashcard: value));
  });
}
}

// dart format on
