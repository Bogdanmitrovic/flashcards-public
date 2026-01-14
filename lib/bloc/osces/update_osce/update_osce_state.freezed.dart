// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_osce_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateOsceState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateOsceState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateOsceState()';
}


}

/// @nodoc
class $UpdateOsceStateCopyWith<$Res>  {
$UpdateOsceStateCopyWith(UpdateOsceState _, $Res Function(UpdateOsceState) __);
}


/// Adds pattern-matching-related methods to [UpdateOsceState].
extension UpdateOsceStatePatterns on UpdateOsceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateOsceInitial value)?  initial,TResult Function( UpdateOsceLoading value)?  loading,TResult Function( UpdateOsceError value)?  error,TResult Function( UpdateOsceLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateOsceInitial() when initial != null:
return initial(_that);case UpdateOsceLoading() when loading != null:
return loading(_that);case UpdateOsceError() when error != null:
return error(_that);case UpdateOsceLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateOsceInitial value)  initial,required TResult Function( UpdateOsceLoading value)  loading,required TResult Function( UpdateOsceError value)  error,required TResult Function( UpdateOsceLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case UpdateOsceInitial():
return initial(_that);case UpdateOsceLoading():
return loading(_that);case UpdateOsceError():
return error(_that);case UpdateOsceLoaded():
return loaded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateOsceInitial value)?  initial,TResult? Function( UpdateOsceLoading value)?  loading,TResult? Function( UpdateOsceError value)?  error,TResult? Function( UpdateOsceLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case UpdateOsceInitial() when initial != null:
return initial(_that);case UpdateOsceLoading() when loading != null:
return loading(_that);case UpdateOsceError() when error != null:
return error(_that);case UpdateOsceLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Exception error)?  error,TResult Function( UpdateOsceStatus status,  String osceId,  List<QuestionForm> questionForms,  Exception? error)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateOsceInitial() when initial != null:
return initial();case UpdateOsceLoading() when loading != null:
return loading();case UpdateOsceError() when error != null:
return error(_that.error);case UpdateOsceLoaded() when loaded != null:
return loaded(_that.status,_that.osceId,_that.questionForms,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Exception error)  error,required TResult Function( UpdateOsceStatus status,  String osceId,  List<QuestionForm> questionForms,  Exception? error)  loaded,}) {final _that = this;
switch (_that) {
case UpdateOsceInitial():
return initial();case UpdateOsceLoading():
return loading();case UpdateOsceError():
return error(_that.error);case UpdateOsceLoaded():
return loaded(_that.status,_that.osceId,_that.questionForms,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Exception error)?  error,TResult? Function( UpdateOsceStatus status,  String osceId,  List<QuestionForm> questionForms,  Exception? error)?  loaded,}) {final _that = this;
switch (_that) {
case UpdateOsceInitial() when initial != null:
return initial();case UpdateOsceLoading() when loading != null:
return loading();case UpdateOsceError() when error != null:
return error(_that.error);case UpdateOsceLoaded() when loaded != null:
return loaded(_that.status,_that.osceId,_that.questionForms,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class UpdateOsceInitial implements UpdateOsceState {
  const UpdateOsceInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateOsceInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateOsceState.initial()';
}


}




/// @nodoc


class UpdateOsceLoading implements UpdateOsceState {
  const UpdateOsceLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateOsceLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateOsceState.loading()';
}


}




/// @nodoc


class UpdateOsceError implements UpdateOsceState {
  const UpdateOsceError({required this.error});
  

 final  Exception error;

/// Create a copy of UpdateOsceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateOsceErrorCopyWith<UpdateOsceError> get copyWith => _$UpdateOsceErrorCopyWithImpl<UpdateOsceError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateOsceError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UpdateOsceState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $UpdateOsceErrorCopyWith<$Res> implements $UpdateOsceStateCopyWith<$Res> {
  factory $UpdateOsceErrorCopyWith(UpdateOsceError value, $Res Function(UpdateOsceError) _then) = _$UpdateOsceErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$UpdateOsceErrorCopyWithImpl<$Res>
    implements $UpdateOsceErrorCopyWith<$Res> {
  _$UpdateOsceErrorCopyWithImpl(this._self, this._then);

  final UpdateOsceError _self;
  final $Res Function(UpdateOsceError) _then;

/// Create a copy of UpdateOsceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(UpdateOsceError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

/// @nodoc


class UpdateOsceLoaded implements UpdateOsceState {
  const UpdateOsceLoaded({this.status = UpdateOsceStatus.initial, required this.osceId, required final  List<QuestionForm> questionForms, this.error}): _questionForms = questionForms;
  

@JsonKey() final  UpdateOsceStatus status;
 final  String osceId;
 final  List<QuestionForm> _questionForms;
 List<QuestionForm> get questionForms {
  if (_questionForms is EqualUnmodifiableListView) return _questionForms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questionForms);
}

 final  Exception? error;

/// Create a copy of UpdateOsceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateOsceLoadedCopyWith<UpdateOsceLoaded> get copyWith => _$UpdateOsceLoadedCopyWithImpl<UpdateOsceLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateOsceLoaded&&(identical(other.status, status) || other.status == status)&&(identical(other.osceId, osceId) || other.osceId == osceId)&&const DeepCollectionEquality().equals(other._questionForms, _questionForms)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,osceId,const DeepCollectionEquality().hash(_questionForms),error);

@override
String toString() {
  return 'UpdateOsceState.loaded(status: $status, osceId: $osceId, questionForms: $questionForms, error: $error)';
}


}

/// @nodoc
abstract mixin class $UpdateOsceLoadedCopyWith<$Res> implements $UpdateOsceStateCopyWith<$Res> {
  factory $UpdateOsceLoadedCopyWith(UpdateOsceLoaded value, $Res Function(UpdateOsceLoaded) _then) = _$UpdateOsceLoadedCopyWithImpl;
@useResult
$Res call({
 UpdateOsceStatus status, String osceId, List<QuestionForm> questionForms, Exception? error
});




}
/// @nodoc
class _$UpdateOsceLoadedCopyWithImpl<$Res>
    implements $UpdateOsceLoadedCopyWith<$Res> {
  _$UpdateOsceLoadedCopyWithImpl(this._self, this._then);

  final UpdateOsceLoaded _self;
  final $Res Function(UpdateOsceLoaded) _then;

/// Create a copy of UpdateOsceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,Object? osceId = null,Object? questionForms = null,Object? error = freezed,}) {
  return _then(UpdateOsceLoaded(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UpdateOsceStatus,osceId: null == osceId ? _self.osceId : osceId // ignore: cast_nullable_to_non_nullable
as String,questionForms: null == questionForms ? _self._questionForms : questionForms // ignore: cast_nullable_to_non_nullable
as List<QuestionForm>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
