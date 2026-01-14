// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StatRecord {

 String get packId; String get flashcardId; bool get isPaid; Flashcard? get flashcard; bool get hasBookmark; Card get card; bool get isPulledFromDb;
/// Create a copy of StatRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatRecordCopyWith<StatRecord> get copyWith => _$StatRecordCopyWithImpl<StatRecord>(this as StatRecord, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatRecord&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.flashcardId, flashcardId) || other.flashcardId == flashcardId)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.flashcard, flashcard) || other.flashcard == flashcard)&&(identical(other.hasBookmark, hasBookmark) || other.hasBookmark == hasBookmark)&&(identical(other.card, card) || other.card == card)&&(identical(other.isPulledFromDb, isPulledFromDb) || other.isPulledFromDb == isPulledFromDb));
}


@override
int get hashCode => Object.hash(runtimeType,packId,flashcardId,isPaid,flashcard,hasBookmark,card,isPulledFromDb);

@override
String toString() {
  return 'StatRecord(packId: $packId, flashcardId: $flashcardId, isPaid: $isPaid, flashcard: $flashcard, hasBookmark: $hasBookmark, card: $card, isPulledFromDb: $isPulledFromDb)';
}


}

/// @nodoc
abstract mixin class $StatRecordCopyWith<$Res>  {
  factory $StatRecordCopyWith(StatRecord value, $Res Function(StatRecord) _then) = _$StatRecordCopyWithImpl;
@useResult
$Res call({
 String packId, String flashcardId, bool isPaid, Flashcard? flashcard, bool hasBookmark, Card card, bool isPulledFromDb
});


$FlashcardCopyWith<$Res>? get flashcard;

}
/// @nodoc
class _$StatRecordCopyWithImpl<$Res>
    implements $StatRecordCopyWith<$Res> {
  _$StatRecordCopyWithImpl(this._self, this._then);

  final StatRecord _self;
  final $Res Function(StatRecord) _then;

/// Create a copy of StatRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packId = null,Object? flashcardId = null,Object? isPaid = null,Object? flashcard = freezed,Object? hasBookmark = null,Object? card = null,Object? isPulledFromDb = null,}) {
  return _then(_self.copyWith(
packId: null == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String,flashcardId: null == flashcardId ? _self.flashcardId : flashcardId // ignore: cast_nullable_to_non_nullable
as String,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,flashcard: freezed == flashcard ? _self.flashcard : flashcard // ignore: cast_nullable_to_non_nullable
as Flashcard?,hasBookmark: null == hasBookmark ? _self.hasBookmark : hasBookmark // ignore: cast_nullable_to_non_nullable
as bool,card: null == card ? _self.card : card // ignore: cast_nullable_to_non_nullable
as Card,isPulledFromDb: null == isPulledFromDb ? _self.isPulledFromDb : isPulledFromDb // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of StatRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlashcardCopyWith<$Res>? get flashcard {
    if (_self.flashcard == null) {
    return null;
  }

  return $FlashcardCopyWith<$Res>(_self.flashcard!, (value) {
    return _then(_self.copyWith(flashcard: value));
  });
}
}


/// Adds pattern-matching-related methods to [StatRecord].
extension StatRecordPatterns on StatRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatRecord value)  $default,){
final _that = this;
switch (_that) {
case _StatRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatRecord value)?  $default,){
final _that = this;
switch (_that) {
case _StatRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String packId,  String flashcardId,  bool isPaid,  Flashcard? flashcard,  bool hasBookmark,  Card card,  bool isPulledFromDb)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatRecord() when $default != null:
return $default(_that.packId,_that.flashcardId,_that.isPaid,_that.flashcard,_that.hasBookmark,_that.card,_that.isPulledFromDb);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String packId,  String flashcardId,  bool isPaid,  Flashcard? flashcard,  bool hasBookmark,  Card card,  bool isPulledFromDb)  $default,) {final _that = this;
switch (_that) {
case _StatRecord():
return $default(_that.packId,_that.flashcardId,_that.isPaid,_that.flashcard,_that.hasBookmark,_that.card,_that.isPulledFromDb);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String packId,  String flashcardId,  bool isPaid,  Flashcard? flashcard,  bool hasBookmark,  Card card,  bool isPulledFromDb)?  $default,) {final _that = this;
switch (_that) {
case _StatRecord() when $default != null:
return $default(_that.packId,_that.flashcardId,_that.isPaid,_that.flashcard,_that.hasBookmark,_that.card,_that.isPulledFromDb);case _:
  return null;

}
}

}

/// @nodoc


class _StatRecord implements StatRecord {
  const _StatRecord({required this.packId, required this.flashcardId, required this.isPaid, this.flashcard, this.hasBookmark = false, required this.card, this.isPulledFromDb = false});
  

@override final  String packId;
@override final  String flashcardId;
@override final  bool isPaid;
@override final  Flashcard? flashcard;
@override@JsonKey() final  bool hasBookmark;
@override final  Card card;
@override@JsonKey() final  bool isPulledFromDb;

/// Create a copy of StatRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatRecordCopyWith<_StatRecord> get copyWith => __$StatRecordCopyWithImpl<_StatRecord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatRecord&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.flashcardId, flashcardId) || other.flashcardId == flashcardId)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.flashcard, flashcard) || other.flashcard == flashcard)&&(identical(other.hasBookmark, hasBookmark) || other.hasBookmark == hasBookmark)&&(identical(other.card, card) || other.card == card)&&(identical(other.isPulledFromDb, isPulledFromDb) || other.isPulledFromDb == isPulledFromDb));
}


@override
int get hashCode => Object.hash(runtimeType,packId,flashcardId,isPaid,flashcard,hasBookmark,card,isPulledFromDb);

@override
String toString() {
  return 'StatRecord(packId: $packId, flashcardId: $flashcardId, isPaid: $isPaid, flashcard: $flashcard, hasBookmark: $hasBookmark, card: $card, isPulledFromDb: $isPulledFromDb)';
}


}

/// @nodoc
abstract mixin class _$StatRecordCopyWith<$Res> implements $StatRecordCopyWith<$Res> {
  factory _$StatRecordCopyWith(_StatRecord value, $Res Function(_StatRecord) _then) = __$StatRecordCopyWithImpl;
@override @useResult
$Res call({
 String packId, String flashcardId, bool isPaid, Flashcard? flashcard, bool hasBookmark, Card card, bool isPulledFromDb
});


@override $FlashcardCopyWith<$Res>? get flashcard;

}
/// @nodoc
class __$StatRecordCopyWithImpl<$Res>
    implements _$StatRecordCopyWith<$Res> {
  __$StatRecordCopyWithImpl(this._self, this._then);

  final _StatRecord _self;
  final $Res Function(_StatRecord) _then;

/// Create a copy of StatRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packId = null,Object? flashcardId = null,Object? isPaid = null,Object? flashcard = freezed,Object? hasBookmark = null,Object? card = null,Object? isPulledFromDb = null,}) {
  return _then(_StatRecord(
packId: null == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String,flashcardId: null == flashcardId ? _self.flashcardId : flashcardId // ignore: cast_nullable_to_non_nullable
as String,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,flashcard: freezed == flashcard ? _self.flashcard : flashcard // ignore: cast_nullable_to_non_nullable
as Flashcard?,hasBookmark: null == hasBookmark ? _self.hasBookmark : hasBookmark // ignore: cast_nullable_to_non_nullable
as bool,card: null == card ? _self.card : card // ignore: cast_nullable_to_non_nullable
as Card,isPulledFromDb: null == isPulledFromDb ? _self.isPulledFromDb : isPulledFromDb // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of StatRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlashcardCopyWith<$Res>? get flashcard {
    if (_self.flashcard == null) {
    return null;
  }

  return $FlashcardCopyWith<$Res>(_self.flashcard!, (value) {
    return _then(_self.copyWith(flashcard: value));
  });
}
}

// dart format on
