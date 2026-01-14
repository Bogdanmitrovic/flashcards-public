// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateProfileSettingsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileSettingsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateProfileSettingsState()';
}


}

/// @nodoc
class $UpdateProfileSettingsStateCopyWith<$Res>  {
$UpdateProfileSettingsStateCopyWith(UpdateProfileSettingsState _, $Res Function(UpdateProfileSettingsState) __);
}


/// Adds pattern-matching-related methods to [UpdateProfileSettingsState].
extension UpdateProfileSettingsStatePatterns on UpdateProfileSettingsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateProfileSettingsEnabled value)?  enabled,TResult Function( UpdateProfileSettingsDisabled value)?  disabled,TResult Function( UpdateProfileSettingsLoading value)?  loading,TResult Function( UpdateProfileSettingsSuccessful value)?  successful,TResult Function( UpdateProfileSettingsFormInvalid value)?  formInvalid,TResult Function( UpdateProfileSettingsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateProfileSettingsEnabled() when enabled != null:
return enabled(_that);case UpdateProfileSettingsDisabled() when disabled != null:
return disabled(_that);case UpdateProfileSettingsLoading() when loading != null:
return loading(_that);case UpdateProfileSettingsSuccessful() when successful != null:
return successful(_that);case UpdateProfileSettingsFormInvalid() when formInvalid != null:
return formInvalid(_that);case UpdateProfileSettingsError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateProfileSettingsEnabled value)  enabled,required TResult Function( UpdateProfileSettingsDisabled value)  disabled,required TResult Function( UpdateProfileSettingsLoading value)  loading,required TResult Function( UpdateProfileSettingsSuccessful value)  successful,required TResult Function( UpdateProfileSettingsFormInvalid value)  formInvalid,required TResult Function( UpdateProfileSettingsError value)  error,}){
final _that = this;
switch (_that) {
case UpdateProfileSettingsEnabled():
return enabled(_that);case UpdateProfileSettingsDisabled():
return disabled(_that);case UpdateProfileSettingsLoading():
return loading(_that);case UpdateProfileSettingsSuccessful():
return successful(_that);case UpdateProfileSettingsFormInvalid():
return formInvalid(_that);case UpdateProfileSettingsError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateProfileSettingsEnabled value)?  enabled,TResult? Function( UpdateProfileSettingsDisabled value)?  disabled,TResult? Function( UpdateProfileSettingsLoading value)?  loading,TResult? Function( UpdateProfileSettingsSuccessful value)?  successful,TResult? Function( UpdateProfileSettingsFormInvalid value)?  formInvalid,TResult? Function( UpdateProfileSettingsError value)?  error,}){
final _that = this;
switch (_that) {
case UpdateProfileSettingsEnabled() when enabled != null:
return enabled(_that);case UpdateProfileSettingsDisabled() when disabled != null:
return disabled(_that);case UpdateProfileSettingsLoading() when loading != null:
return loading(_that);case UpdateProfileSettingsSuccessful() when successful != null:
return successful(_that);case UpdateProfileSettingsFormInvalid() when formInvalid != null:
return formInvalid(_that);case UpdateProfileSettingsError() when error != null:
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
case UpdateProfileSettingsEnabled() when enabled != null:
return enabled();case UpdateProfileSettingsDisabled() when disabled != null:
return disabled();case UpdateProfileSettingsLoading() when loading != null:
return loading();case UpdateProfileSettingsSuccessful() when successful != null:
return successful();case UpdateProfileSettingsFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case UpdateProfileSettingsError() when error != null:
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
case UpdateProfileSettingsEnabled():
return enabled();case UpdateProfileSettingsDisabled():
return disabled();case UpdateProfileSettingsLoading():
return loading();case UpdateProfileSettingsSuccessful():
return successful();case UpdateProfileSettingsFormInvalid():
return formInvalid(_that.errors);case UpdateProfileSettingsError():
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
case UpdateProfileSettingsEnabled() when enabled != null:
return enabled();case UpdateProfileSettingsDisabled() when disabled != null:
return disabled();case UpdateProfileSettingsLoading() when loading != null:
return loading();case UpdateProfileSettingsSuccessful() when successful != null:
return successful();case UpdateProfileSettingsFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case UpdateProfileSettingsError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class UpdateProfileSettingsEnabled implements UpdateProfileSettingsState {
  const UpdateProfileSettingsEnabled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileSettingsEnabled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateProfileSettingsState.enabled()';
}


}




/// @nodoc


class UpdateProfileSettingsDisabled implements UpdateProfileSettingsState {
  const UpdateProfileSettingsDisabled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileSettingsDisabled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateProfileSettingsState.disabled()';
}


}




/// @nodoc


class UpdateProfileSettingsLoading implements UpdateProfileSettingsState {
  const UpdateProfileSettingsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileSettingsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateProfileSettingsState.loading()';
}


}




/// @nodoc


class UpdateProfileSettingsSuccessful implements UpdateProfileSettingsState {
  const UpdateProfileSettingsSuccessful();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileSettingsSuccessful);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateProfileSettingsState.successful()';
}


}




/// @nodoc


class UpdateProfileSettingsFormInvalid implements UpdateProfileSettingsState {
  const UpdateProfileSettingsFormInvalid({required final  Map<String, String> errors}): _errors = errors;
  

 final  Map<String, String> _errors;
 Map<String, String> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of UpdateProfileSettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileSettingsFormInvalidCopyWith<UpdateProfileSettingsFormInvalid> get copyWith => _$UpdateProfileSettingsFormInvalidCopyWithImpl<UpdateProfileSettingsFormInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileSettingsFormInvalid&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'UpdateProfileSettingsState.formInvalid(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileSettingsFormInvalidCopyWith<$Res> implements $UpdateProfileSettingsStateCopyWith<$Res> {
  factory $UpdateProfileSettingsFormInvalidCopyWith(UpdateProfileSettingsFormInvalid value, $Res Function(UpdateProfileSettingsFormInvalid) _then) = _$UpdateProfileSettingsFormInvalidCopyWithImpl;
@useResult
$Res call({
 Map<String, String> errors
});




}
/// @nodoc
class _$UpdateProfileSettingsFormInvalidCopyWithImpl<$Res>
    implements $UpdateProfileSettingsFormInvalidCopyWith<$Res> {
  _$UpdateProfileSettingsFormInvalidCopyWithImpl(this._self, this._then);

  final UpdateProfileSettingsFormInvalid _self;
  final $Res Function(UpdateProfileSettingsFormInvalid) _then;

/// Create a copy of UpdateProfileSettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(UpdateProfileSettingsFormInvalid(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

/// @nodoc


class UpdateProfileSettingsError implements UpdateProfileSettingsState {
  const UpdateProfileSettingsError({required this.message});
  

 final  String message;

/// Create a copy of UpdateProfileSettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileSettingsErrorCopyWith<UpdateProfileSettingsError> get copyWith => _$UpdateProfileSettingsErrorCopyWithImpl<UpdateProfileSettingsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileSettingsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UpdateProfileSettingsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileSettingsErrorCopyWith<$Res> implements $UpdateProfileSettingsStateCopyWith<$Res> {
  factory $UpdateProfileSettingsErrorCopyWith(UpdateProfileSettingsError value, $Res Function(UpdateProfileSettingsError) _then) = _$UpdateProfileSettingsErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UpdateProfileSettingsErrorCopyWithImpl<$Res>
    implements $UpdateProfileSettingsErrorCopyWith<$Res> {
  _$UpdateProfileSettingsErrorCopyWithImpl(this._self, this._then);

  final UpdateProfileSettingsError _self;
  final $Res Function(UpdateProfileSettingsError) _then;

/// Create a copy of UpdateProfileSettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UpdateProfileSettingsError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
