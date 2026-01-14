// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_test_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionTestState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionTestState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionTestState()';
}


}

/// @nodoc
class $SessionTestStateCopyWith<$Res>  {
$SessionTestStateCopyWith(SessionTestState _, $Res Function(SessionTestState) __);
}


/// Adds pattern-matching-related methods to [SessionTestState].
extension SessionTestStatePatterns on SessionTestState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SessionTestInitial value)?  initial,TResult Function( SessionTestLoading value)?  loading,TResult Function( SessionTestLoaded value)?  loaded,TResult Function( SessionTestError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SessionTestInitial() when initial != null:
return initial(_that);case SessionTestLoading() when loading != null:
return loading(_that);case SessionTestLoaded() when loaded != null:
return loaded(_that);case SessionTestError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SessionTestInitial value)  initial,required TResult Function( SessionTestLoading value)  loading,required TResult Function( SessionTestLoaded value)  loaded,required TResult Function( SessionTestError value)  error,}){
final _that = this;
switch (_that) {
case SessionTestInitial():
return initial(_that);case SessionTestLoading():
return loading(_that);case SessionTestLoaded():
return loaded(_that);case SessionTestError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SessionTestInitial value)?  initial,TResult? Function( SessionTestLoading value)?  loading,TResult? Function( SessionTestLoaded value)?  loaded,TResult? Function( SessionTestError value)?  error,}){
final _that = this;
switch (_that) {
case SessionTestInitial() when initial != null:
return initial(_that);case SessionTestLoading() when loading != null:
return loading(_that);case SessionTestLoaded() when loaded != null:
return loaded(_that);case SessionTestError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( SessionTestStatus status,  CustomSession session,  StatRecord statRecord,  String unformattedQuestion,  bool answerShown,  Streak? newStreak,  Exception? error)?  loaded,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SessionTestInitial() when initial != null:
return initial();case SessionTestLoading() when loading != null:
return loading();case SessionTestLoaded() when loaded != null:
return loaded(_that.status,_that.session,_that.statRecord,_that.unformattedQuestion,_that.answerShown,_that.newStreak,_that.error);case SessionTestError() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( SessionTestStatus status,  CustomSession session,  StatRecord statRecord,  String unformattedQuestion,  bool answerShown,  Streak? newStreak,  Exception? error)  loaded,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case SessionTestInitial():
return initial();case SessionTestLoading():
return loading();case SessionTestLoaded():
return loaded(_that.status,_that.session,_that.statRecord,_that.unformattedQuestion,_that.answerShown,_that.newStreak,_that.error);case SessionTestError():
return error(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( SessionTestStatus status,  CustomSession session,  StatRecord statRecord,  String unformattedQuestion,  bool answerShown,  Streak? newStreak,  Exception? error)?  loaded,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case SessionTestInitial() when initial != null:
return initial();case SessionTestLoading() when loading != null:
return loading();case SessionTestLoaded() when loaded != null:
return loaded(_that.status,_that.session,_that.statRecord,_that.unformattedQuestion,_that.answerShown,_that.newStreak,_that.error);case SessionTestError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class SessionTestInitial implements SessionTestState {
  const SessionTestInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionTestInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionTestState.initial()';
}


}




/// @nodoc


class SessionTestLoading implements SessionTestState {
  const SessionTestLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionTestLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionTestState.loading()';
}


}




/// @nodoc


class SessionTestLoaded implements SessionTestState {
  const SessionTestLoaded({this.status = SessionTestStatus.initial, required this.session, required this.statRecord, required this.unformattedQuestion, this.answerShown = false, this.newStreak, this.error});
  

@JsonKey() final  SessionTestStatus status;
 final  CustomSession session;
 final  StatRecord statRecord;
/// Since some questions will have cloze they need to be redacted/revealed
/// for that we need to store the original format of the question
 final  String unformattedQuestion;
@JsonKey() final  bool answerShown;
 final  Streak? newStreak;
 final  Exception? error;

/// Create a copy of SessionTestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionTestLoadedCopyWith<SessionTestLoaded> get copyWith => _$SessionTestLoadedCopyWithImpl<SessionTestLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionTestLoaded&&(identical(other.status, status) || other.status == status)&&(identical(other.session, session) || other.session == session)&&(identical(other.statRecord, statRecord) || other.statRecord == statRecord)&&(identical(other.unformattedQuestion, unformattedQuestion) || other.unformattedQuestion == unformattedQuestion)&&(identical(other.answerShown, answerShown) || other.answerShown == answerShown)&&(identical(other.newStreak, newStreak) || other.newStreak == newStreak)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,session,statRecord,unformattedQuestion,answerShown,newStreak,error);

@override
String toString() {
  return 'SessionTestState.loaded(status: $status, session: $session, statRecord: $statRecord, unformattedQuestion: $unformattedQuestion, answerShown: $answerShown, newStreak: $newStreak, error: $error)';
}


}

/// @nodoc
abstract mixin class $SessionTestLoadedCopyWith<$Res> implements $SessionTestStateCopyWith<$Res> {
  factory $SessionTestLoadedCopyWith(SessionTestLoaded value, $Res Function(SessionTestLoaded) _then) = _$SessionTestLoadedCopyWithImpl;
@useResult
$Res call({
 SessionTestStatus status, CustomSession session, StatRecord statRecord, String unformattedQuestion, bool answerShown, Streak? newStreak, Exception? error
});


$CustomSessionCopyWith<$Res> get session;$StatRecordCopyWith<$Res> get statRecord;$StreakCopyWith<$Res>? get newStreak;

}
/// @nodoc
class _$SessionTestLoadedCopyWithImpl<$Res>
    implements $SessionTestLoadedCopyWith<$Res> {
  _$SessionTestLoadedCopyWithImpl(this._self, this._then);

  final SessionTestLoaded _self;
  final $Res Function(SessionTestLoaded) _then;

/// Create a copy of SessionTestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,Object? session = null,Object? statRecord = null,Object? unformattedQuestion = null,Object? answerShown = null,Object? newStreak = freezed,Object? error = freezed,}) {
  return _then(SessionTestLoaded(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SessionTestStatus,session: null == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as CustomSession,statRecord: null == statRecord ? _self.statRecord : statRecord // ignore: cast_nullable_to_non_nullable
as StatRecord,unformattedQuestion: null == unformattedQuestion ? _self.unformattedQuestion : unformattedQuestion // ignore: cast_nullable_to_non_nullable
as String,answerShown: null == answerShown ? _self.answerShown : answerShown // ignore: cast_nullable_to_non_nullable
as bool,newStreak: freezed == newStreak ? _self.newStreak : newStreak // ignore: cast_nullable_to_non_nullable
as Streak?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}

/// Create a copy of SessionTestState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomSessionCopyWith<$Res> get session {
  
  return $CustomSessionCopyWith<$Res>(_self.session, (value) {
    return _then(_self.copyWith(session: value));
  });
}/// Create a copy of SessionTestState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatRecordCopyWith<$Res> get statRecord {
  
  return $StatRecordCopyWith<$Res>(_self.statRecord, (value) {
    return _then(_self.copyWith(statRecord: value));
  });
}/// Create a copy of SessionTestState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreakCopyWith<$Res>? get newStreak {
    if (_self.newStreak == null) {
    return null;
  }

  return $StreakCopyWith<$Res>(_self.newStreak!, (value) {
    return _then(_self.copyWith(newStreak: value));
  });
}
}

/// @nodoc


class SessionTestError implements SessionTestState {
  const SessionTestError(this.error);
  

 final  Exception error;

/// Create a copy of SessionTestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionTestErrorCopyWith<SessionTestError> get copyWith => _$SessionTestErrorCopyWithImpl<SessionTestError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionTestError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SessionTestState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $SessionTestErrorCopyWith<$Res> implements $SessionTestStateCopyWith<$Res> {
  factory $SessionTestErrorCopyWith(SessionTestError value, $Res Function(SessionTestError) _then) = _$SessionTestErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$SessionTestErrorCopyWithImpl<$Res>
    implements $SessionTestErrorCopyWith<$Res> {
  _$SessionTestErrorCopyWithImpl(this._self, this._then);

  final SessionTestError _self;
  final $Res Function(SessionTestError) _then;

/// Create a copy of SessionTestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SessionTestError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
