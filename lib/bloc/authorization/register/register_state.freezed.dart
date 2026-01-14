// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState()';
}


}

/// @nodoc
class $RegisterStateCopyWith<$Res>  {
$RegisterStateCopyWith(RegisterState _, $Res Function(RegisterState) __);
}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RegisterInitial value)?  initial,TResult Function( RegisterLoading value)?  loading,TResult Function( RegisterFormInvalid value)?  registerFormInvalid,TResult Function( RegisterFormValid value)?  registerFormValid,TResult Function( RegisterSuccess value)?  success,TResult Function( RegisterError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RegisterInitial() when initial != null:
return initial(_that);case RegisterLoading() when loading != null:
return loading(_that);case RegisterFormInvalid() when registerFormInvalid != null:
return registerFormInvalid(_that);case RegisterFormValid() when registerFormValid != null:
return registerFormValid(_that);case RegisterSuccess() when success != null:
return success(_that);case RegisterError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RegisterInitial value)  initial,required TResult Function( RegisterLoading value)  loading,required TResult Function( RegisterFormInvalid value)  registerFormInvalid,required TResult Function( RegisterFormValid value)  registerFormValid,required TResult Function( RegisterSuccess value)  success,required TResult Function( RegisterError value)  error,}){
final _that = this;
switch (_that) {
case RegisterInitial():
return initial(_that);case RegisterLoading():
return loading(_that);case RegisterFormInvalid():
return registerFormInvalid(_that);case RegisterFormValid():
return registerFormValid(_that);case RegisterSuccess():
return success(_that);case RegisterError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RegisterInitial value)?  initial,TResult? Function( RegisterLoading value)?  loading,TResult? Function( RegisterFormInvalid value)?  registerFormInvalid,TResult? Function( RegisterFormValid value)?  registerFormValid,TResult? Function( RegisterSuccess value)?  success,TResult? Function( RegisterError value)?  error,}){
final _that = this;
switch (_that) {
case RegisterInitial() when initial != null:
return initial(_that);case RegisterLoading() when loading != null:
return loading(_that);case RegisterFormInvalid() when registerFormInvalid != null:
return registerFormInvalid(_that);case RegisterFormValid() when registerFormValid != null:
return registerFormValid(_that);case RegisterSuccess() when success != null:
return success(_that);case RegisterError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Map<String, String> errors)?  registerFormInvalid,TResult Function()?  registerFormValid,TResult Function( String displayName)?  success,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RegisterInitial() when initial != null:
return initial();case RegisterLoading() when loading != null:
return loading();case RegisterFormInvalid() when registerFormInvalid != null:
return registerFormInvalid(_that.errors);case RegisterFormValid() when registerFormValid != null:
return registerFormValid();case RegisterSuccess() when success != null:
return success(_that.displayName);case RegisterError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Map<String, String> errors)  registerFormInvalid,required TResult Function()  registerFormValid,required TResult Function( String displayName)  success,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case RegisterInitial():
return initial();case RegisterLoading():
return loading();case RegisterFormInvalid():
return registerFormInvalid(_that.errors);case RegisterFormValid():
return registerFormValid();case RegisterSuccess():
return success(_that.displayName);case RegisterError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Map<String, String> errors)?  registerFormInvalid,TResult? Function()?  registerFormValid,TResult? Function( String displayName)?  success,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case RegisterInitial() when initial != null:
return initial();case RegisterLoading() when loading != null:
return loading();case RegisterFormInvalid() when registerFormInvalid != null:
return registerFormInvalid(_that.errors);case RegisterFormValid() when registerFormValid != null:
return registerFormValid();case RegisterSuccess() when success != null:
return success(_that.displayName);case RegisterError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class RegisterInitial implements RegisterState {
  const RegisterInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.initial()';
}


}




/// @nodoc


class RegisterLoading implements RegisterState {
  const RegisterLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.loading()';
}


}




/// @nodoc


class RegisterFormInvalid implements RegisterState {
  const RegisterFormInvalid({required final  Map<String, String> errors}): _errors = errors;
  

 final  Map<String, String> _errors;
 Map<String, String> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterFormInvalidCopyWith<RegisterFormInvalid> get copyWith => _$RegisterFormInvalidCopyWithImpl<RegisterFormInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterFormInvalid&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'RegisterState.registerFormInvalid(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $RegisterFormInvalidCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $RegisterFormInvalidCopyWith(RegisterFormInvalid value, $Res Function(RegisterFormInvalid) _then) = _$RegisterFormInvalidCopyWithImpl;
@useResult
$Res call({
 Map<String, String> errors
});




}
/// @nodoc
class _$RegisterFormInvalidCopyWithImpl<$Res>
    implements $RegisterFormInvalidCopyWith<$Res> {
  _$RegisterFormInvalidCopyWithImpl(this._self, this._then);

  final RegisterFormInvalid _self;
  final $Res Function(RegisterFormInvalid) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(RegisterFormInvalid(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

/// @nodoc


class RegisterFormValid implements RegisterState {
  const RegisterFormValid();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterFormValid);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.registerFormValid()';
}


}




/// @nodoc


class RegisterSuccess implements RegisterState {
  const RegisterSuccess({required this.displayName});
  

 final  String displayName;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterSuccessCopyWith<RegisterSuccess> get copyWith => _$RegisterSuccessCopyWithImpl<RegisterSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterSuccess&&(identical(other.displayName, displayName) || other.displayName == displayName));
}


@override
int get hashCode => Object.hash(runtimeType,displayName);

@override
String toString() {
  return 'RegisterState.success(displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class $RegisterSuccessCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $RegisterSuccessCopyWith(RegisterSuccess value, $Res Function(RegisterSuccess) _then) = _$RegisterSuccessCopyWithImpl;
@useResult
$Res call({
 String displayName
});




}
/// @nodoc
class _$RegisterSuccessCopyWithImpl<$Res>
    implements $RegisterSuccessCopyWith<$Res> {
  _$RegisterSuccessCopyWithImpl(this._self, this._then);

  final RegisterSuccess _self;
  final $Res Function(RegisterSuccess) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? displayName = null,}) {
  return _then(RegisterSuccess(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RegisterError implements RegisterState {
  const RegisterError({required this.error});
  

 final  Exception error;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterErrorCopyWith<RegisterError> get copyWith => _$RegisterErrorCopyWithImpl<RegisterError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'RegisterState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $RegisterErrorCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $RegisterErrorCopyWith(RegisterError value, $Res Function(RegisterError) _then) = _$RegisterErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$RegisterErrorCopyWithImpl<$Res>
    implements $RegisterErrorCopyWith<$Res> {
  _$RegisterErrorCopyWithImpl(this._self, this._then);

  final RegisterError _self;
  final $Res Function(RegisterError) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(RegisterError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
