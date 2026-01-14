// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reauth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReauthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReauthState()';
}


}

/// @nodoc
class $ReauthStateCopyWith<$Res>  {
$ReauthStateCopyWith(ReauthState _, $Res Function(ReauthState) __);
}


/// Adds pattern-matching-related methods to [ReauthState].
extension ReauthStatePatterns on ReauthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ReauthInitial value)?  initial,TResult Function( ReauthLoading value)?  loading,TResult Function( ReauthFormInvalid value)?  formInvalid,TResult Function( ReauthSuccess value)?  success,TResult Function( ReauthError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ReauthInitial() when initial != null:
return initial(_that);case ReauthLoading() when loading != null:
return loading(_that);case ReauthFormInvalid() when formInvalid != null:
return formInvalid(_that);case ReauthSuccess() when success != null:
return success(_that);case ReauthError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ReauthInitial value)  initial,required TResult Function( ReauthLoading value)  loading,required TResult Function( ReauthFormInvalid value)  formInvalid,required TResult Function( ReauthSuccess value)  success,required TResult Function( ReauthError value)  error,}){
final _that = this;
switch (_that) {
case ReauthInitial():
return initial(_that);case ReauthLoading():
return loading(_that);case ReauthFormInvalid():
return formInvalid(_that);case ReauthSuccess():
return success(_that);case ReauthError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ReauthInitial value)?  initial,TResult? Function( ReauthLoading value)?  loading,TResult? Function( ReauthFormInvalid value)?  formInvalid,TResult? Function( ReauthSuccess value)?  success,TResult? Function( ReauthError value)?  error,}){
final _that = this;
switch (_that) {
case ReauthInitial() when initial != null:
return initial(_that);case ReauthLoading() when loading != null:
return loading(_that);case ReauthFormInvalid() when formInvalid != null:
return formInvalid(_that);case ReauthSuccess() when success != null:
return success(_that);case ReauthError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Map<String, String> errors)?  formInvalid,TResult Function()?  success,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ReauthInitial() when initial != null:
return initial();case ReauthLoading() when loading != null:
return loading();case ReauthFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case ReauthSuccess() when success != null:
return success();case ReauthError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Map<String, String> errors)  formInvalid,required TResult Function()  success,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case ReauthInitial():
return initial();case ReauthLoading():
return loading();case ReauthFormInvalid():
return formInvalid(_that.errors);case ReauthSuccess():
return success();case ReauthError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Map<String, String> errors)?  formInvalid,TResult? Function()?  success,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case ReauthInitial() when initial != null:
return initial();case ReauthLoading() when loading != null:
return loading();case ReauthFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case ReauthSuccess() when success != null:
return success();case ReauthError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class ReauthInitial implements ReauthState {
  const ReauthInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReauthState.initial()';
}


}




/// @nodoc


class ReauthLoading implements ReauthState {
  const ReauthLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReauthState.loading()';
}


}




/// @nodoc


class ReauthFormInvalid implements ReauthState {
  const ReauthFormInvalid({required final  Map<String, String> errors}): _errors = errors;
  

 final  Map<String, String> _errors;
 Map<String, String> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of ReauthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReauthFormInvalidCopyWith<ReauthFormInvalid> get copyWith => _$ReauthFormInvalidCopyWithImpl<ReauthFormInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthFormInvalid&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'ReauthState.formInvalid(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ReauthFormInvalidCopyWith<$Res> implements $ReauthStateCopyWith<$Res> {
  factory $ReauthFormInvalidCopyWith(ReauthFormInvalid value, $Res Function(ReauthFormInvalid) _then) = _$ReauthFormInvalidCopyWithImpl;
@useResult
$Res call({
 Map<String, String> errors
});




}
/// @nodoc
class _$ReauthFormInvalidCopyWithImpl<$Res>
    implements $ReauthFormInvalidCopyWith<$Res> {
  _$ReauthFormInvalidCopyWithImpl(this._self, this._then);

  final ReauthFormInvalid _self;
  final $Res Function(ReauthFormInvalid) _then;

/// Create a copy of ReauthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(ReauthFormInvalid(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

/// @nodoc


class ReauthSuccess implements ReauthState {
  const ReauthSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReauthState.success()';
}


}




/// @nodoc


class ReauthError implements ReauthState {
  const ReauthError({required this.error});
  

 final  Exception error;

/// Create a copy of ReauthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReauthErrorCopyWith<ReauthError> get copyWith => _$ReauthErrorCopyWithImpl<ReauthError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ReauthState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ReauthErrorCopyWith<$Res> implements $ReauthStateCopyWith<$Res> {
  factory $ReauthErrorCopyWith(ReauthError value, $Res Function(ReauthError) _then) = _$ReauthErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$ReauthErrorCopyWithImpl<$Res>
    implements $ReauthErrorCopyWith<$Res> {
  _$ReauthErrorCopyWithImpl(this._self, this._then);

  final ReauthError _self;
  final $Res Function(ReauthError) _then;

/// Create a copy of ReauthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ReauthError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
