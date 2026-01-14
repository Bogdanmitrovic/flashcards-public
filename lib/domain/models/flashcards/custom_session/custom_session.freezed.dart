// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomSession {

 String get id; List<String> get flashcardIds; int get currentIndex; int get cardCount; int get correctCount;
/// Create a copy of CustomSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomSessionCopyWith<CustomSession> get copyWith => _$CustomSessionCopyWithImpl<CustomSession>(this as CustomSession, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomSession&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.flashcardIds, flashcardIds)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.cardCount, cardCount) || other.cardCount == cardCount)&&(identical(other.correctCount, correctCount) || other.correctCount == correctCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(flashcardIds),currentIndex,cardCount,correctCount);

@override
String toString() {
  return 'CustomSession(id: $id, flashcardIds: $flashcardIds, currentIndex: $currentIndex, cardCount: $cardCount, correctCount: $correctCount)';
}


}

/// @nodoc
abstract mixin class $CustomSessionCopyWith<$Res>  {
  factory $CustomSessionCopyWith(CustomSession value, $Res Function(CustomSession) _then) = _$CustomSessionCopyWithImpl;
@useResult
$Res call({
 String id, List<String> flashcardIds, int currentIndex, int cardCount, int correctCount
});




}
/// @nodoc
class _$CustomSessionCopyWithImpl<$Res>
    implements $CustomSessionCopyWith<$Res> {
  _$CustomSessionCopyWithImpl(this._self, this._then);

  final CustomSession _self;
  final $Res Function(CustomSession) _then;

/// Create a copy of CustomSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? flashcardIds = null,Object? currentIndex = null,Object? cardCount = null,Object? correctCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,flashcardIds: null == flashcardIds ? _self.flashcardIds : flashcardIds // ignore: cast_nullable_to_non_nullable
as List<String>,currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,cardCount: null == cardCount ? _self.cardCount : cardCount // ignore: cast_nullable_to_non_nullable
as int,correctCount: null == correctCount ? _self.correctCount : correctCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomSession].
extension CustomSessionPatterns on CustomSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomSession value)  $default,){
final _that = this;
switch (_that) {
case _CustomSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomSession value)?  $default,){
final _that = this;
switch (_that) {
case _CustomSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<String> flashcardIds,  int currentIndex,  int cardCount,  int correctCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomSession() when $default != null:
return $default(_that.id,_that.flashcardIds,_that.currentIndex,_that.cardCount,_that.correctCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<String> flashcardIds,  int currentIndex,  int cardCount,  int correctCount)  $default,) {final _that = this;
switch (_that) {
case _CustomSession():
return $default(_that.id,_that.flashcardIds,_that.currentIndex,_that.cardCount,_that.correctCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<String> flashcardIds,  int currentIndex,  int cardCount,  int correctCount)?  $default,) {final _that = this;
switch (_that) {
case _CustomSession() when $default != null:
return $default(_that.id,_that.flashcardIds,_that.currentIndex,_that.cardCount,_that.correctCount);case _:
  return null;

}
}

}

/// @nodoc


class _CustomSession implements CustomSession {
  const _CustomSession({required this.id, required final  List<String> flashcardIds, required this.currentIndex, required this.cardCount, required this.correctCount}): _flashcardIds = flashcardIds;
  

@override final  String id;
 final  List<String> _flashcardIds;
@override List<String> get flashcardIds {
  if (_flashcardIds is EqualUnmodifiableListView) return _flashcardIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_flashcardIds);
}

@override final  int currentIndex;
@override final  int cardCount;
@override final  int correctCount;

/// Create a copy of CustomSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomSessionCopyWith<_CustomSession> get copyWith => __$CustomSessionCopyWithImpl<_CustomSession>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomSession&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._flashcardIds, _flashcardIds)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.cardCount, cardCount) || other.cardCount == cardCount)&&(identical(other.correctCount, correctCount) || other.correctCount == correctCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_flashcardIds),currentIndex,cardCount,correctCount);

@override
String toString() {
  return 'CustomSession(id: $id, flashcardIds: $flashcardIds, currentIndex: $currentIndex, cardCount: $cardCount, correctCount: $correctCount)';
}


}

/// @nodoc
abstract mixin class _$CustomSessionCopyWith<$Res> implements $CustomSessionCopyWith<$Res> {
  factory _$CustomSessionCopyWith(_CustomSession value, $Res Function(_CustomSession) _then) = __$CustomSessionCopyWithImpl;
@override @useResult
$Res call({
 String id, List<String> flashcardIds, int currentIndex, int cardCount, int correctCount
});




}
/// @nodoc
class __$CustomSessionCopyWithImpl<$Res>
    implements _$CustomSessionCopyWith<$Res> {
  __$CustomSessionCopyWithImpl(this._self, this._then);

  final _CustomSession _self;
  final $Res Function(_CustomSession) _then;

/// Create a copy of CustomSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? flashcardIds = null,Object? currentIndex = null,Object? cardCount = null,Object? correctCount = null,}) {
  return _then(_CustomSession(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,flashcardIds: null == flashcardIds ? _self._flashcardIds : flashcardIds // ignore: cast_nullable_to_non_nullable
as List<String>,currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,cardCount: null == cardCount ? _self.cardCount : cardCount // ignore: cast_nullable_to_non_nullable
as int,correctCount: null == correctCount ? _self.correctCount : correctCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
