// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FlashcardReview {

 String get packName; int get packFlashcardsCount; StatRecord get record;
/// Create a copy of FlashcardReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlashcardReviewCopyWith<FlashcardReview> get copyWith => _$FlashcardReviewCopyWithImpl<FlashcardReview>(this as FlashcardReview, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlashcardReview&&(identical(other.packName, packName) || other.packName == packName)&&(identical(other.packFlashcardsCount, packFlashcardsCount) || other.packFlashcardsCount == packFlashcardsCount)&&(identical(other.record, record) || other.record == record));
}


@override
int get hashCode => Object.hash(runtimeType,packName,packFlashcardsCount,record);

@override
String toString() {
  return 'FlashcardReview(packName: $packName, packFlashcardsCount: $packFlashcardsCount, record: $record)';
}


}

/// @nodoc
abstract mixin class $FlashcardReviewCopyWith<$Res>  {
  factory $FlashcardReviewCopyWith(FlashcardReview value, $Res Function(FlashcardReview) _then) = _$FlashcardReviewCopyWithImpl;
@useResult
$Res call({
 String packName, int packFlashcardsCount, StatRecord record
});


$StatRecordCopyWith<$Res> get record;

}
/// @nodoc
class _$FlashcardReviewCopyWithImpl<$Res>
    implements $FlashcardReviewCopyWith<$Res> {
  _$FlashcardReviewCopyWithImpl(this._self, this._then);

  final FlashcardReview _self;
  final $Res Function(FlashcardReview) _then;

/// Create a copy of FlashcardReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packName = null,Object? packFlashcardsCount = null,Object? record = null,}) {
  return _then(_self.copyWith(
packName: null == packName ? _self.packName : packName // ignore: cast_nullable_to_non_nullable
as String,packFlashcardsCount: null == packFlashcardsCount ? _self.packFlashcardsCount : packFlashcardsCount // ignore: cast_nullable_to_non_nullable
as int,record: null == record ? _self.record : record // ignore: cast_nullable_to_non_nullable
as StatRecord,
  ));
}
/// Create a copy of FlashcardReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatRecordCopyWith<$Res> get record {
  
  return $StatRecordCopyWith<$Res>(_self.record, (value) {
    return _then(_self.copyWith(record: value));
  });
}
}


/// Adds pattern-matching-related methods to [FlashcardReview].
extension FlashcardReviewPatterns on FlashcardReview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlashcardReview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlashcardReview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlashcardReview value)  $default,){
final _that = this;
switch (_that) {
case _FlashcardReview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlashcardReview value)?  $default,){
final _that = this;
switch (_that) {
case _FlashcardReview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String packName,  int packFlashcardsCount,  StatRecord record)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlashcardReview() when $default != null:
return $default(_that.packName,_that.packFlashcardsCount,_that.record);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String packName,  int packFlashcardsCount,  StatRecord record)  $default,) {final _that = this;
switch (_that) {
case _FlashcardReview():
return $default(_that.packName,_that.packFlashcardsCount,_that.record);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String packName,  int packFlashcardsCount,  StatRecord record)?  $default,) {final _that = this;
switch (_that) {
case _FlashcardReview() when $default != null:
return $default(_that.packName,_that.packFlashcardsCount,_that.record);case _:
  return null;

}
}

}

/// @nodoc


class _FlashcardReview implements FlashcardReview {
  const _FlashcardReview({required this.packName, required this.packFlashcardsCount, required this.record});
  

@override final  String packName;
@override final  int packFlashcardsCount;
@override final  StatRecord record;

/// Create a copy of FlashcardReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlashcardReviewCopyWith<_FlashcardReview> get copyWith => __$FlashcardReviewCopyWithImpl<_FlashcardReview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlashcardReview&&(identical(other.packName, packName) || other.packName == packName)&&(identical(other.packFlashcardsCount, packFlashcardsCount) || other.packFlashcardsCount == packFlashcardsCount)&&(identical(other.record, record) || other.record == record));
}


@override
int get hashCode => Object.hash(runtimeType,packName,packFlashcardsCount,record);

@override
String toString() {
  return 'FlashcardReview(packName: $packName, packFlashcardsCount: $packFlashcardsCount, record: $record)';
}


}

/// @nodoc
abstract mixin class _$FlashcardReviewCopyWith<$Res> implements $FlashcardReviewCopyWith<$Res> {
  factory _$FlashcardReviewCopyWith(_FlashcardReview value, $Res Function(_FlashcardReview) _then) = __$FlashcardReviewCopyWithImpl;
@override @useResult
$Res call({
 String packName, int packFlashcardsCount, StatRecord record
});


@override $StatRecordCopyWith<$Res> get record;

}
/// @nodoc
class __$FlashcardReviewCopyWithImpl<$Res>
    implements _$FlashcardReviewCopyWith<$Res> {
  __$FlashcardReviewCopyWithImpl(this._self, this._then);

  final _FlashcardReview _self;
  final $Res Function(_FlashcardReview) _then;

/// Create a copy of FlashcardReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packName = null,Object? packFlashcardsCount = null,Object? record = null,}) {
  return _then(_FlashcardReview(
packName: null == packName ? _self.packName : packName // ignore: cast_nullable_to_non_nullable
as String,packFlashcardsCount: null == packFlashcardsCount ? _self.packFlashcardsCount : packFlashcardsCount // ignore: cast_nullable_to_non_nullable
as int,record: null == record ? _self.record : record // ignore: cast_nullable_to_non_nullable
as StatRecord,
  ));
}

/// Create a copy of FlashcardReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatRecordCopyWith<$Res> get record {
  
  return $StatRecordCopyWith<$Res>(_self.record, (value) {
    return _then(_self.copyWith(record: value));
  });
}
}

// dart format on
