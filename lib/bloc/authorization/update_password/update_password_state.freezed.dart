// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdatePasswordState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePasswordState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdatePasswordState()';
}


}

/// @nodoc
class $UpdatePasswordStateCopyWith<$Res>  {
$UpdatePasswordStateCopyWith(UpdatePasswordState _, $Res Function(UpdatePasswordState) __);
}


/// Adds pattern-matching-related methods to [UpdatePasswordState].
extension UpdatePasswordStatePatterns on UpdatePasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdatePasswordInitial value)?  initial,TResult Function( UpdatePasswordLoading value)?  loading,TResult Function( UpdatePasswordFormInvalid value)?  formInvalid,TResult Function( UpdatePasswordRequiresReauth value)?  requiresReauth,TResult Function( UpdatePasswordSuccessful value)?  successful,TResult Function( UpdatePasswordError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdatePasswordInitial() when initial != null:
return initial(_that);case UpdatePasswordLoading() when loading != null:
return loading(_that);case UpdatePasswordFormInvalid() when formInvalid != null:
return formInvalid(_that);case UpdatePasswordRequiresReauth() when requiresReauth != null:
return requiresReauth(_that);case UpdatePasswordSuccessful() when successful != null:
return successful(_that);case UpdatePasswordError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdatePasswordInitial value)  initial,required TResult Function( UpdatePasswordLoading value)  loading,required TResult Function( UpdatePasswordFormInvalid value)  formInvalid,required TResult Function( UpdatePasswordRequiresReauth value)  requiresReauth,required TResult Function( UpdatePasswordSuccessful value)  successful,required TResult Function( UpdatePasswordError value)  error,}){
final _that = this;
switch (_that) {
case UpdatePasswordInitial():
return initial(_that);case UpdatePasswordLoading():
return loading(_that);case UpdatePasswordFormInvalid():
return formInvalid(_that);case UpdatePasswordRequiresReauth():
return requiresReauth(_that);case UpdatePasswordSuccessful():
return successful(_that);case UpdatePasswordError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdatePasswordInitial value)?  initial,TResult? Function( UpdatePasswordLoading value)?  loading,TResult? Function( UpdatePasswordFormInvalid value)?  formInvalid,TResult? Function( UpdatePasswordRequiresReauth value)?  requiresReauth,TResult? Function( UpdatePasswordSuccessful value)?  successful,TResult? Function( UpdatePasswordError value)?  error,}){
final _that = this;
switch (_that) {
case UpdatePasswordInitial() when initial != null:
return initial(_that);case UpdatePasswordLoading() when loading != null:
return loading(_that);case UpdatePasswordFormInvalid() when formInvalid != null:
return formInvalid(_that);case UpdatePasswordRequiresReauth() when requiresReauth != null:
return requiresReauth(_that);case UpdatePasswordSuccessful() when successful != null:
return successful(_that);case UpdatePasswordError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Map<String, String> errors)?  formInvalid,TResult Function()?  requiresReauth,TResult Function()?  successful,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdatePasswordInitial() when initial != null:
return initial();case UpdatePasswordLoading() when loading != null:
return loading();case UpdatePasswordFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case UpdatePasswordRequiresReauth() when requiresReauth != null:
return requiresReauth();case UpdatePasswordSuccessful() when successful != null:
return successful();case UpdatePasswordError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Map<String, String> errors)  formInvalid,required TResult Function()  requiresReauth,required TResult Function()  successful,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case UpdatePasswordInitial():
return initial();case UpdatePasswordLoading():
return loading();case UpdatePasswordFormInvalid():
return formInvalid(_that.errors);case UpdatePasswordRequiresReauth():
return requiresReauth();case UpdatePasswordSuccessful():
return successful();case UpdatePasswordError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Map<String, String> errors)?  formInvalid,TResult? Function()?  requiresReauth,TResult? Function()?  successful,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case UpdatePasswordInitial() when initial != null:
return initial();case UpdatePasswordLoading() when loading != null:
return loading();case UpdatePasswordFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case UpdatePasswordRequiresReauth() when requiresReauth != null:
return requiresReauth();case UpdatePasswordSuccessful() when successful != null:
return successful();case UpdatePasswordError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class UpdatePasswordInitial implements UpdatePasswordState {
  const UpdatePasswordInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePasswordInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdatePasswordState.initial()';
}


}




/// @nodoc


class UpdatePasswordLoading implements UpdatePasswordState {
  const UpdatePasswordLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePasswordLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdatePasswordState.loading()';
}


}




/// @nodoc


class UpdatePasswordFormInvalid implements UpdatePasswordState {
  const UpdatePasswordFormInvalid({required final  Map<String, String> errors}): _errors = errors;
  

 final  Map<String, String> _errors;
 Map<String, String> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of UpdatePasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePasswordFormInvalidCopyWith<UpdatePasswordFormInvalid> get copyWith => _$UpdatePasswordFormInvalidCopyWithImpl<UpdatePasswordFormInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePasswordFormInvalid&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'UpdatePasswordState.formInvalid(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $UpdatePasswordFormInvalidCopyWith<$Res> implements $UpdatePasswordStateCopyWith<$Res> {
  factory $UpdatePasswordFormInvalidCopyWith(UpdatePasswordFormInvalid value, $Res Function(UpdatePasswordFormInvalid) _then) = _$UpdatePasswordFormInvalidCopyWithImpl;
@useResult
$Res call({
 Map<String, String> errors
});




}
/// @nodoc
class _$UpdatePasswordFormInvalidCopyWithImpl<$Res>
    implements $UpdatePasswordFormInvalidCopyWith<$Res> {
  _$UpdatePasswordFormInvalidCopyWithImpl(this._self, this._then);

  final UpdatePasswordFormInvalid _self;
  final $Res Function(UpdatePasswordFormInvalid) _then;

/// Create a copy of UpdatePasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(UpdatePasswordFormInvalid(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

/// @nodoc


class UpdatePasswordRequiresReauth implements UpdatePasswordState {
  const UpdatePasswordRequiresReauth();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePasswordRequiresReauth);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdatePasswordState.requiresReauth()';
}


}




/// @nodoc


class UpdatePasswordSuccessful implements UpdatePasswordState {
  const UpdatePasswordSuccessful();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePasswordSuccessful);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdatePasswordState.successful()';
}


}




/// @nodoc


class UpdatePasswordError implements UpdatePasswordState {
  const UpdatePasswordError({required this.error});
  

 final  Exception error;

/// Create a copy of UpdatePasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePasswordErrorCopyWith<UpdatePasswordError> get copyWith => _$UpdatePasswordErrorCopyWithImpl<UpdatePasswordError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePasswordError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UpdatePasswordState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $UpdatePasswordErrorCopyWith<$Res> implements $UpdatePasswordStateCopyWith<$Res> {
  factory $UpdatePasswordErrorCopyWith(UpdatePasswordError value, $Res Function(UpdatePasswordError) _then) = _$UpdatePasswordErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$UpdatePasswordErrorCopyWithImpl<$Res>
    implements $UpdatePasswordErrorCopyWith<$Res> {
  _$UpdatePasswordErrorCopyWithImpl(this._self, this._then);

  final UpdatePasswordError _self;
  final $Res Function(UpdatePasswordError) _then;

/// Create a copy of UpdatePasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(UpdatePasswordError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
