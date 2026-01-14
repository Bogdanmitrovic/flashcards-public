// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateProfileState()';
}


}

/// @nodoc
class $UpdateProfileStateCopyWith<$Res>  {
$UpdateProfileStateCopyWith(UpdateProfileState _, $Res Function(UpdateProfileState) __);
}


/// Adds pattern-matching-related methods to [UpdateProfileState].
extension UpdateProfileStatePatterns on UpdateProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateProfileEnabled value)?  enabled,TResult Function( UpdateProfileDisabled value)?  disabled,TResult Function( UpdateProfileLoading value)?  loading,TResult Function( UpdateProfileSuccessful value)?  successful,TResult Function( UpdateProfileFormInvalid value)?  formInvalid,TResult Function( UpdateProfileError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateProfileEnabled() when enabled != null:
return enabled(_that);case UpdateProfileDisabled() when disabled != null:
return disabled(_that);case UpdateProfileLoading() when loading != null:
return loading(_that);case UpdateProfileSuccessful() when successful != null:
return successful(_that);case UpdateProfileFormInvalid() when formInvalid != null:
return formInvalid(_that);case UpdateProfileError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateProfileEnabled value)  enabled,required TResult Function( UpdateProfileDisabled value)  disabled,required TResult Function( UpdateProfileLoading value)  loading,required TResult Function( UpdateProfileSuccessful value)  successful,required TResult Function( UpdateProfileFormInvalid value)  formInvalid,required TResult Function( UpdateProfileError value)  error,}){
final _that = this;
switch (_that) {
case UpdateProfileEnabled():
return enabled(_that);case UpdateProfileDisabled():
return disabled(_that);case UpdateProfileLoading():
return loading(_that);case UpdateProfileSuccessful():
return successful(_that);case UpdateProfileFormInvalid():
return formInvalid(_that);case UpdateProfileError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateProfileEnabled value)?  enabled,TResult? Function( UpdateProfileDisabled value)?  disabled,TResult? Function( UpdateProfileLoading value)?  loading,TResult? Function( UpdateProfileSuccessful value)?  successful,TResult? Function( UpdateProfileFormInvalid value)?  formInvalid,TResult? Function( UpdateProfileError value)?  error,}){
final _that = this;
switch (_that) {
case UpdateProfileEnabled() when enabled != null:
return enabled(_that);case UpdateProfileDisabled() when disabled != null:
return disabled(_that);case UpdateProfileLoading() when loading != null:
return loading(_that);case UpdateProfileSuccessful() when successful != null:
return successful(_that);case UpdateProfileFormInvalid() when formInvalid != null:
return formInvalid(_that);case UpdateProfileError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  enabled,TResult Function()?  disabled,TResult Function()?  loading,TResult Function()?  successful,TResult Function( Map<String, String> errors)?  formInvalid,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateProfileEnabled() when enabled != null:
return enabled();case UpdateProfileDisabled() when disabled != null:
return disabled();case UpdateProfileLoading() when loading != null:
return loading();case UpdateProfileSuccessful() when successful != null:
return successful();case UpdateProfileFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case UpdateProfileError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  enabled,required TResult Function()  disabled,required TResult Function()  loading,required TResult Function()  successful,required TResult Function( Map<String, String> errors)  formInvalid,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case UpdateProfileEnabled():
return enabled();case UpdateProfileDisabled():
return disabled();case UpdateProfileLoading():
return loading();case UpdateProfileSuccessful():
return successful();case UpdateProfileFormInvalid():
return formInvalid(_that.errors);case UpdateProfileError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  enabled,TResult? Function()?  disabled,TResult? Function()?  loading,TResult? Function()?  successful,TResult? Function( Map<String, String> errors)?  formInvalid,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case UpdateProfileEnabled() when enabled != null:
return enabled();case UpdateProfileDisabled() when disabled != null:
return disabled();case UpdateProfileLoading() when loading != null:
return loading();case UpdateProfileSuccessful() when successful != null:
return successful();case UpdateProfileFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case UpdateProfileError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class UpdateProfileEnabled implements UpdateProfileState {
  const UpdateProfileEnabled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileEnabled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateProfileState.enabled()';
}


}




/// @nodoc


class UpdateProfileDisabled implements UpdateProfileState {
  const UpdateProfileDisabled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileDisabled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateProfileState.disabled()';
}


}




/// @nodoc


class UpdateProfileLoading implements UpdateProfileState {
  const UpdateProfileLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateProfileState.loading()';
}


}




/// @nodoc


class UpdateProfileSuccessful implements UpdateProfileState {
  const UpdateProfileSuccessful();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileSuccessful);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateProfileState.successful()';
}


}




/// @nodoc


class UpdateProfileFormInvalid implements UpdateProfileState {
  const UpdateProfileFormInvalid({required final  Map<String, String> errors}): _errors = errors;
  

 final  Map<String, String> _errors;
 Map<String, String> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of UpdateProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileFormInvalidCopyWith<UpdateProfileFormInvalid> get copyWith => _$UpdateProfileFormInvalidCopyWithImpl<UpdateProfileFormInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileFormInvalid&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'UpdateProfileState.formInvalid(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileFormInvalidCopyWith<$Res> implements $UpdateProfileStateCopyWith<$Res> {
  factory $UpdateProfileFormInvalidCopyWith(UpdateProfileFormInvalid value, $Res Function(UpdateProfileFormInvalid) _then) = _$UpdateProfileFormInvalidCopyWithImpl;
@useResult
$Res call({
 Map<String, String> errors
});




}
/// @nodoc
class _$UpdateProfileFormInvalidCopyWithImpl<$Res>
    implements $UpdateProfileFormInvalidCopyWith<$Res> {
  _$UpdateProfileFormInvalidCopyWithImpl(this._self, this._then);

  final UpdateProfileFormInvalid _self;
  final $Res Function(UpdateProfileFormInvalid) _then;

/// Create a copy of UpdateProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(UpdateProfileFormInvalid(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

/// @nodoc


class UpdateProfileError implements UpdateProfileState {
  const UpdateProfileError({required this.message});
  

 final  String message;

/// Create a copy of UpdateProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileErrorCopyWith<UpdateProfileError> get copyWith => _$UpdateProfileErrorCopyWithImpl<UpdateProfileError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UpdateProfileState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileErrorCopyWith<$Res> implements $UpdateProfileStateCopyWith<$Res> {
  factory $UpdateProfileErrorCopyWith(UpdateProfileError value, $Res Function(UpdateProfileError) _then) = _$UpdateProfileErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UpdateProfileErrorCopyWithImpl<$Res>
    implements $UpdateProfileErrorCopyWith<$Res> {
  _$UpdateProfileErrorCopyWithImpl(this._self, this._then);

  final UpdateProfileError _self;
  final $Res Function(UpdateProfileError) _then;

/// Create a copy of UpdateProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UpdateProfileError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
