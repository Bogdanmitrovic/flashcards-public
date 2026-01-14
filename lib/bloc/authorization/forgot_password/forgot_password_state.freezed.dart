// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgotPasswordState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState()';
}


}

/// @nodoc
class $ForgotPasswordStateCopyWith<$Res>  {
$ForgotPasswordStateCopyWith(ForgotPasswordState _, $Res Function(ForgotPasswordState) __);
}


/// Adds pattern-matching-related methods to [ForgotPasswordState].
extension ForgotPasswordStatePatterns on ForgotPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ForgotPasswordInitial value)?  initial,TResult Function( ForgotPasswordLoading value)?  loading,TResult Function( ForgotPasswordSuccessful value)?  successful,TResult Function( ForgotPasswordError value)?  error,TResult Function( ForgotPasswordFormValid value)?  formValid,TResult Function( ForgotPasswordFormInvalid value)?  formInvalid,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ForgotPasswordInitial() when initial != null:
return initial(_that);case ForgotPasswordLoading() when loading != null:
return loading(_that);case ForgotPasswordSuccessful() when successful != null:
return successful(_that);case ForgotPasswordError() when error != null:
return error(_that);case ForgotPasswordFormValid() when formValid != null:
return formValid(_that);case ForgotPasswordFormInvalid() when formInvalid != null:
return formInvalid(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ForgotPasswordInitial value)  initial,required TResult Function( ForgotPasswordLoading value)  loading,required TResult Function( ForgotPasswordSuccessful value)  successful,required TResult Function( ForgotPasswordError value)  error,required TResult Function( ForgotPasswordFormValid value)  formValid,required TResult Function( ForgotPasswordFormInvalid value)  formInvalid,}){
final _that = this;
switch (_that) {
case ForgotPasswordInitial():
return initial(_that);case ForgotPasswordLoading():
return loading(_that);case ForgotPasswordSuccessful():
return successful(_that);case ForgotPasswordError():
return error(_that);case ForgotPasswordFormValid():
return formValid(_that);case ForgotPasswordFormInvalid():
return formInvalid(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ForgotPasswordInitial value)?  initial,TResult? Function( ForgotPasswordLoading value)?  loading,TResult? Function( ForgotPasswordSuccessful value)?  successful,TResult? Function( ForgotPasswordError value)?  error,TResult? Function( ForgotPasswordFormValid value)?  formValid,TResult? Function( ForgotPasswordFormInvalid value)?  formInvalid,}){
final _that = this;
switch (_that) {
case ForgotPasswordInitial() when initial != null:
return initial(_that);case ForgotPasswordLoading() when loading != null:
return loading(_that);case ForgotPasswordSuccessful() when successful != null:
return successful(_that);case ForgotPasswordError() when error != null:
return error(_that);case ForgotPasswordFormValid() when formValid != null:
return formValid(_that);case ForgotPasswordFormInvalid() when formInvalid != null:
return formInvalid(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String email)?  successful,TResult Function( Exception error)?  error,TResult Function()?  formValid,TResult Function( Map<String, String> errors)?  formInvalid,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ForgotPasswordInitial() when initial != null:
return initial();case ForgotPasswordLoading() when loading != null:
return loading();case ForgotPasswordSuccessful() when successful != null:
return successful(_that.email);case ForgotPasswordError() when error != null:
return error(_that.error);case ForgotPasswordFormValid() when formValid != null:
return formValid();case ForgotPasswordFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String email)  successful,required TResult Function( Exception error)  error,required TResult Function()  formValid,required TResult Function( Map<String, String> errors)  formInvalid,}) {final _that = this;
switch (_that) {
case ForgotPasswordInitial():
return initial();case ForgotPasswordLoading():
return loading();case ForgotPasswordSuccessful():
return successful(_that.email);case ForgotPasswordError():
return error(_that.error);case ForgotPasswordFormValid():
return formValid();case ForgotPasswordFormInvalid():
return formInvalid(_that.errors);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String email)?  successful,TResult? Function( Exception error)?  error,TResult? Function()?  formValid,TResult? Function( Map<String, String> errors)?  formInvalid,}) {final _that = this;
switch (_that) {
case ForgotPasswordInitial() when initial != null:
return initial();case ForgotPasswordLoading() when loading != null:
return loading();case ForgotPasswordSuccessful() when successful != null:
return successful(_that.email);case ForgotPasswordError() when error != null:
return error(_that.error);case ForgotPasswordFormValid() when formValid != null:
return formValid();case ForgotPasswordFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case _:
  return null;

}
}

}

/// @nodoc


class ForgotPasswordInitial implements ForgotPasswordState {
  const ForgotPasswordInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState.initial()';
}


}




/// @nodoc


class ForgotPasswordLoading implements ForgotPasswordState {
  const ForgotPasswordLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState.loading()';
}


}




/// @nodoc


class ForgotPasswordSuccessful implements ForgotPasswordState {
  const ForgotPasswordSuccessful({required this.email});
  

 final  String email;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordSuccessfulCopyWith<ForgotPasswordSuccessful> get copyWith => _$ForgotPasswordSuccessfulCopyWithImpl<ForgotPasswordSuccessful>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordSuccessful&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'ForgotPasswordState.successful(email: $email)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordSuccessfulCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordSuccessfulCopyWith(ForgotPasswordSuccessful value, $Res Function(ForgotPasswordSuccessful) _then) = _$ForgotPasswordSuccessfulCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ForgotPasswordSuccessfulCopyWithImpl<$Res>
    implements $ForgotPasswordSuccessfulCopyWith<$Res> {
  _$ForgotPasswordSuccessfulCopyWithImpl(this._self, this._then);

  final ForgotPasswordSuccessful _self;
  final $Res Function(ForgotPasswordSuccessful) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ForgotPasswordSuccessful(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ForgotPasswordError implements ForgotPasswordState {
  const ForgotPasswordError({required this.error});
  

 final  Exception error;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordErrorCopyWith<ForgotPasswordError> get copyWith => _$ForgotPasswordErrorCopyWithImpl<ForgotPasswordError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ForgotPasswordState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordErrorCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordErrorCopyWith(ForgotPasswordError value, $Res Function(ForgotPasswordError) _then) = _$ForgotPasswordErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$ForgotPasswordErrorCopyWithImpl<$Res>
    implements $ForgotPasswordErrorCopyWith<$Res> {
  _$ForgotPasswordErrorCopyWithImpl(this._self, this._then);

  final ForgotPasswordError _self;
  final $Res Function(ForgotPasswordError) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ForgotPasswordError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

/// @nodoc


class ForgotPasswordFormValid implements ForgotPasswordState {
  const ForgotPasswordFormValid();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordFormValid);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState.formValid()';
}


}




/// @nodoc


class ForgotPasswordFormInvalid implements ForgotPasswordState {
  const ForgotPasswordFormInvalid({required final  Map<String, String> errors}): _errors = errors;
  

 final  Map<String, String> _errors;
 Map<String, String> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordFormInvalidCopyWith<ForgotPasswordFormInvalid> get copyWith => _$ForgotPasswordFormInvalidCopyWithImpl<ForgotPasswordFormInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordFormInvalid&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'ForgotPasswordState.formInvalid(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordFormInvalidCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordFormInvalidCopyWith(ForgotPasswordFormInvalid value, $Res Function(ForgotPasswordFormInvalid) _then) = _$ForgotPasswordFormInvalidCopyWithImpl;
@useResult
$Res call({
 Map<String, String> errors
});




}
/// @nodoc
class _$ForgotPasswordFormInvalidCopyWithImpl<$Res>
    implements $ForgotPasswordFormInvalidCopyWith<$Res> {
  _$ForgotPasswordFormInvalidCopyWithImpl(this._self, this._then);

  final ForgotPasswordFormInvalid _self;
  final $Res Function(ForgotPasswordFormInvalid) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(ForgotPasswordFormInvalid(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
