// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fc_review_getter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FcReviewGetterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcReviewGetterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FcReviewGetterState()';
}


}

/// @nodoc
class $FcReviewGetterStateCopyWith<$Res>  {
$FcReviewGetterStateCopyWith(FcReviewGetterState _, $Res Function(FcReviewGetterState) __);
}


/// Adds pattern-matching-related methods to [FcReviewGetterState].
extension FcReviewGetterStatePatterns on FcReviewGetterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FcReviewGetterInitial value)?  initial,TResult Function( FcReviewGetterLoading value)?  loading,TResult Function( FcReviewGetterLoaded value)?  loaded,TResult Function( FcReviewGetterForbidden value)?  forbidden,TResult Function( FcReviewGetterError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FcReviewGetterInitial() when initial != null:
return initial(_that);case FcReviewGetterLoading() when loading != null:
return loading(_that);case FcReviewGetterLoaded() when loaded != null:
return loaded(_that);case FcReviewGetterForbidden() when forbidden != null:
return forbidden(_that);case FcReviewGetterError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FcReviewGetterInitial value)  initial,required TResult Function( FcReviewGetterLoading value)  loading,required TResult Function( FcReviewGetterLoaded value)  loaded,required TResult Function( FcReviewGetterForbidden value)  forbidden,required TResult Function( FcReviewGetterError value)  error,}){
final _that = this;
switch (_that) {
case FcReviewGetterInitial():
return initial(_that);case FcReviewGetterLoading():
return loading(_that);case FcReviewGetterLoaded():
return loaded(_that);case FcReviewGetterForbidden():
return forbidden(_that);case FcReviewGetterError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FcReviewGetterInitial value)?  initial,TResult? Function( FcReviewGetterLoading value)?  loading,TResult? Function( FcReviewGetterLoaded value)?  loaded,TResult? Function( FcReviewGetterForbidden value)?  forbidden,TResult? Function( FcReviewGetterError value)?  error,}){
final _that = this;
switch (_that) {
case FcReviewGetterInitial() when initial != null:
return initial(_that);case FcReviewGetterLoading() when loading != null:
return loading(_that);case FcReviewGetterLoaded() when loaded != null:
return loaded(_that);case FcReviewGetterForbidden() when forbidden != null:
return forbidden(_that);case FcReviewGetterError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( FlashcardReview fcReview)?  loaded,TResult Function( String question,  String answer)?  forbidden,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FcReviewGetterInitial() when initial != null:
return initial();case FcReviewGetterLoading() when loading != null:
return loading();case FcReviewGetterLoaded() when loaded != null:
return loaded(_that.fcReview);case FcReviewGetterForbidden() when forbidden != null:
return forbidden(_that.question,_that.answer);case FcReviewGetterError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( FlashcardReview fcReview)  loaded,required TResult Function( String question,  String answer)  forbidden,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case FcReviewGetterInitial():
return initial();case FcReviewGetterLoading():
return loading();case FcReviewGetterLoaded():
return loaded(_that.fcReview);case FcReviewGetterForbidden():
return forbidden(_that.question,_that.answer);case FcReviewGetterError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( FlashcardReview fcReview)?  loaded,TResult? Function( String question,  String answer)?  forbidden,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case FcReviewGetterInitial() when initial != null:
return initial();case FcReviewGetterLoading() when loading != null:
return loading();case FcReviewGetterLoaded() when loaded != null:
return loaded(_that.fcReview);case FcReviewGetterForbidden() when forbidden != null:
return forbidden(_that.question,_that.answer);case FcReviewGetterError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class FcReviewGetterInitial implements FcReviewGetterState {
  const FcReviewGetterInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcReviewGetterInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FcReviewGetterState.initial()';
}


}




/// @nodoc


class FcReviewGetterLoading implements FcReviewGetterState {
  const FcReviewGetterLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcReviewGetterLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FcReviewGetterState.loading()';
}


}




/// @nodoc


class FcReviewGetterLoaded implements FcReviewGetterState {
  const FcReviewGetterLoaded({required this.fcReview});
  

 final  FlashcardReview fcReview;

/// Create a copy of FcReviewGetterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcReviewGetterLoadedCopyWith<FcReviewGetterLoaded> get copyWith => _$FcReviewGetterLoadedCopyWithImpl<FcReviewGetterLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcReviewGetterLoaded&&(identical(other.fcReview, fcReview) || other.fcReview == fcReview));
}


@override
int get hashCode => Object.hash(runtimeType,fcReview);

@override
String toString() {
  return 'FcReviewGetterState.loaded(fcReview: $fcReview)';
}


}

/// @nodoc
abstract mixin class $FcReviewGetterLoadedCopyWith<$Res> implements $FcReviewGetterStateCopyWith<$Res> {
  factory $FcReviewGetterLoadedCopyWith(FcReviewGetterLoaded value, $Res Function(FcReviewGetterLoaded) _then) = _$FcReviewGetterLoadedCopyWithImpl;
@useResult
$Res call({
 FlashcardReview fcReview
});


$FlashcardReviewCopyWith<$Res> get fcReview;

}
/// @nodoc
class _$FcReviewGetterLoadedCopyWithImpl<$Res>
    implements $FcReviewGetterLoadedCopyWith<$Res> {
  _$FcReviewGetterLoadedCopyWithImpl(this._self, this._then);

  final FcReviewGetterLoaded _self;
  final $Res Function(FcReviewGetterLoaded) _then;

/// Create a copy of FcReviewGetterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fcReview = null,}) {
  return _then(FcReviewGetterLoaded(
fcReview: null == fcReview ? _self.fcReview : fcReview // ignore: cast_nullable_to_non_nullable
as FlashcardReview,
  ));
}

/// Create a copy of FcReviewGetterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlashcardReviewCopyWith<$Res> get fcReview {
  
  return $FlashcardReviewCopyWith<$Res>(_self.fcReview, (value) {
    return _then(_self.copyWith(fcReview: value));
  });
}
}

/// @nodoc


class FcReviewGetterForbidden implements FcReviewGetterState {
  const FcReviewGetterForbidden({required this.question, required this.answer});
  

 final  String question;
 final  String answer;

/// Create a copy of FcReviewGetterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcReviewGetterForbiddenCopyWith<FcReviewGetterForbidden> get copyWith => _$FcReviewGetterForbiddenCopyWithImpl<FcReviewGetterForbidden>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcReviewGetterForbidden&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer));
}


@override
int get hashCode => Object.hash(runtimeType,question,answer);

@override
String toString() {
  return 'FcReviewGetterState.forbidden(question: $question, answer: $answer)';
}


}

/// @nodoc
abstract mixin class $FcReviewGetterForbiddenCopyWith<$Res> implements $FcReviewGetterStateCopyWith<$Res> {
  factory $FcReviewGetterForbiddenCopyWith(FcReviewGetterForbidden value, $Res Function(FcReviewGetterForbidden) _then) = _$FcReviewGetterForbiddenCopyWithImpl;
@useResult
$Res call({
 String question, String answer
});




}
/// @nodoc
class _$FcReviewGetterForbiddenCopyWithImpl<$Res>
    implements $FcReviewGetterForbiddenCopyWith<$Res> {
  _$FcReviewGetterForbiddenCopyWithImpl(this._self, this._then);

  final FcReviewGetterForbidden _self;
  final $Res Function(FcReviewGetterForbidden) _then;

/// Create a copy of FcReviewGetterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? question = null,Object? answer = null,}) {
  return _then(FcReviewGetterForbidden(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FcReviewGetterError implements FcReviewGetterState {
  const FcReviewGetterError({required this.error});
  

 final  Exception error;

/// Create a copy of FcReviewGetterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcReviewGetterErrorCopyWith<FcReviewGetterError> get copyWith => _$FcReviewGetterErrorCopyWithImpl<FcReviewGetterError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcReviewGetterError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'FcReviewGetterState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $FcReviewGetterErrorCopyWith<$Res> implements $FcReviewGetterStateCopyWith<$Res> {
  factory $FcReviewGetterErrorCopyWith(FcReviewGetterError value, $Res Function(FcReviewGetterError) _then) = _$FcReviewGetterErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$FcReviewGetterErrorCopyWithImpl<$Res>
    implements $FcReviewGetterErrorCopyWith<$Res> {
  _$FcReviewGetterErrorCopyWithImpl(this._self, this._then);

  final FcReviewGetterError _self;
  final $Res Function(FcReviewGetterError) _then;

/// Create a copy of FcReviewGetterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(FcReviewGetterError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
