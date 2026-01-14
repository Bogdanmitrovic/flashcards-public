// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState()';
}


}

/// @nodoc
class $LoginStateCopyWith<$Res>  {
$LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginInitial value)?  initial,TResult Function( LoginLoading value)?  loading,TResult Function( LoginFormInvalid value)?  loginFormInvalid,TResult Function( LoginFormValid value)?  loginFormValid,TResult Function( LoginSuccess value)?  success,TResult Function( LoginError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginInitial() when initial != null:
return initial(_that);case LoginLoading() when loading != null:
return loading(_that);case LoginFormInvalid() when loginFormInvalid != null:
return loginFormInvalid(_that);case LoginFormValid() when loginFormValid != null:
return loginFormValid(_that);case LoginSuccess() when success != null:
return success(_that);case LoginError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginInitial value)  initial,required TResult Function( LoginLoading value)  loading,required TResult Function( LoginFormInvalid value)  loginFormInvalid,required TResult Function( LoginFormValid value)  loginFormValid,required TResult Function( LoginSuccess value)  success,required TResult Function( LoginError value)  error,}){
final _that = this;
switch (_that) {
case LoginInitial():
return initial(_that);case LoginLoading():
return loading(_that);case LoginFormInvalid():
return loginFormInvalid(_that);case LoginFormValid():
return loginFormValid(_that);case LoginSuccess():
return success(_that);case LoginError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginInitial value)?  initial,TResult? Function( LoginLoading value)?  loading,TResult? Function( LoginFormInvalid value)?  loginFormInvalid,TResult? Function( LoginFormValid value)?  loginFormValid,TResult? Function( LoginSuccess value)?  success,TResult? Function( LoginError value)?  error,}){
final _that = this;
switch (_that) {
case LoginInitial() when initial != null:
return initial(_that);case LoginLoading() when loading != null:
return loading(_that);case LoginFormInvalid() when loginFormInvalid != null:
return loginFormInvalid(_that);case LoginFormValid() when loginFormValid != null:
return loginFormValid(_that);case LoginSuccess() when success != null:
return success(_that);case LoginError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Map<String, String> errors)?  loginFormInvalid,TResult Function()?  loginFormValid,TResult Function( String displayName)?  success,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginInitial() when initial != null:
return initial();case LoginLoading() when loading != null:
return loading();case LoginFormInvalid() when loginFormInvalid != null:
return loginFormInvalid(_that.errors);case LoginFormValid() when loginFormValid != null:
return loginFormValid();case LoginSuccess() when success != null:
return success(_that.displayName);case LoginError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Map<String, String> errors)  loginFormInvalid,required TResult Function()  loginFormValid,required TResult Function( String displayName)  success,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case LoginInitial():
return initial();case LoginLoading():
return loading();case LoginFormInvalid():
return loginFormInvalid(_that.errors);case LoginFormValid():
return loginFormValid();case LoginSuccess():
return success(_that.displayName);case LoginError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Map<String, String> errors)?  loginFormInvalid,TResult? Function()?  loginFormValid,TResult? Function( String displayName)?  success,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case LoginInitial() when initial != null:
return initial();case LoginLoading() when loading != null:
return loading();case LoginFormInvalid() when loginFormInvalid != null:
return loginFormInvalid(_that.errors);case LoginFormValid() when loginFormValid != null:
return loginFormValid();case LoginSuccess() when success != null:
return success(_that.displayName);case LoginError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class LoginInitial implements LoginState {
  const LoginInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.initial()';
}


}




/// @nodoc


class LoginLoading implements LoginState {
  const LoginLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loading()';
}


}




/// @nodoc


class LoginFormInvalid implements LoginState {
  const LoginFormInvalid({required final  Map<String, String> errors}): _errors = errors;
  

 final  Map<String, String> _errors;
 Map<String, String> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginFormInvalidCopyWith<LoginFormInvalid> get copyWith => _$LoginFormInvalidCopyWithImpl<LoginFormInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFormInvalid&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'LoginState.loginFormInvalid(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $LoginFormInvalidCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginFormInvalidCopyWith(LoginFormInvalid value, $Res Function(LoginFormInvalid) _then) = _$LoginFormInvalidCopyWithImpl;
@useResult
$Res call({
 Map<String, String> errors
});




}
/// @nodoc
class _$LoginFormInvalidCopyWithImpl<$Res>
    implements $LoginFormInvalidCopyWith<$Res> {
  _$LoginFormInvalidCopyWithImpl(this._self, this._then);

  final LoginFormInvalid _self;
  final $Res Function(LoginFormInvalid) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(LoginFormInvalid(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

/// @nodoc


class LoginFormValid implements LoginState {
  const LoginFormValid();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFormValid);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loginFormValid()';
}


}




/// @nodoc


class LoginSuccess implements LoginState {
  const LoginSuccess({required this.displayName});
  

 final  String displayName;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSuccessCopyWith<LoginSuccess> get copyWith => _$LoginSuccessCopyWithImpl<LoginSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccess&&(identical(other.displayName, displayName) || other.displayName == displayName));
}


@override
int get hashCode => Object.hash(runtimeType,displayName);

@override
String toString() {
  return 'LoginState.success(displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class $LoginSuccessCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginSuccessCopyWith(LoginSuccess value, $Res Function(LoginSuccess) _then) = _$LoginSuccessCopyWithImpl;
@useResult
$Res call({
 String displayName
});




}
/// @nodoc
class _$LoginSuccessCopyWithImpl<$Res>
    implements $LoginSuccessCopyWith<$Res> {
  _$LoginSuccessCopyWithImpl(this._self, this._then);

  final LoginSuccess _self;
  final $Res Function(LoginSuccess) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? displayName = null,}) {
  return _then(LoginSuccess(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoginError implements LoginState {
  const LoginError({required this.error});
  

 final  Exception error;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginErrorCopyWith<LoginError> get copyWith => _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'LoginState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $LoginErrorCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginErrorCopyWith(LoginError value, $Res Function(LoginError) _then) = _$LoginErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$LoginErrorCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(this._self, this._then);

  final LoginError _self;
  final $Res Function(LoginError) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(LoginError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
