// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_email_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateEmailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEmailState()';
}


}

/// @nodoc
class $UpdateEmailStateCopyWith<$Res>  {
$UpdateEmailStateCopyWith(UpdateEmailState _, $Res Function(UpdateEmailState) __);
}


/// Adds pattern-matching-related methods to [UpdateEmailState].
extension UpdateEmailStatePatterns on UpdateEmailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateEmailInitial value)?  initial,TResult Function( UpdateEmailLoading value)?  loading,TResult Function( UpdateEmailRefreshing value)?  refreshing,TResult Function( UpdateEmailSent value)?  sent,TResult Function( UpdateEmailFormInvalid value)?  updateEmailFormInvalid,TResult Function( UpdateEmailSuccess value)?  success,TResult Function( UpdateEmailRequiresReauth value)?  requiresReauth,TResult Function( UpdateEmailError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateEmailInitial() when initial != null:
return initial(_that);case UpdateEmailLoading() when loading != null:
return loading(_that);case UpdateEmailRefreshing() when refreshing != null:
return refreshing(_that);case UpdateEmailSent() when sent != null:
return sent(_that);case UpdateEmailFormInvalid() when updateEmailFormInvalid != null:
return updateEmailFormInvalid(_that);case UpdateEmailSuccess() when success != null:
return success(_that);case UpdateEmailRequiresReauth() when requiresReauth != null:
return requiresReauth(_that);case UpdateEmailError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateEmailInitial value)  initial,required TResult Function( UpdateEmailLoading value)  loading,required TResult Function( UpdateEmailRefreshing value)  refreshing,required TResult Function( UpdateEmailSent value)  sent,required TResult Function( UpdateEmailFormInvalid value)  updateEmailFormInvalid,required TResult Function( UpdateEmailSuccess value)  success,required TResult Function( UpdateEmailRequiresReauth value)  requiresReauth,required TResult Function( UpdateEmailError value)  error,}){
final _that = this;
switch (_that) {
case UpdateEmailInitial():
return initial(_that);case UpdateEmailLoading():
return loading(_that);case UpdateEmailRefreshing():
return refreshing(_that);case UpdateEmailSent():
return sent(_that);case UpdateEmailFormInvalid():
return updateEmailFormInvalid(_that);case UpdateEmailSuccess():
return success(_that);case UpdateEmailRequiresReauth():
return requiresReauth(_that);case UpdateEmailError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateEmailInitial value)?  initial,TResult? Function( UpdateEmailLoading value)?  loading,TResult? Function( UpdateEmailRefreshing value)?  refreshing,TResult? Function( UpdateEmailSent value)?  sent,TResult? Function( UpdateEmailFormInvalid value)?  updateEmailFormInvalid,TResult? Function( UpdateEmailSuccess value)?  success,TResult? Function( UpdateEmailRequiresReauth value)?  requiresReauth,TResult? Function( UpdateEmailError value)?  error,}){
final _that = this;
switch (_that) {
case UpdateEmailInitial() when initial != null:
return initial(_that);case UpdateEmailLoading() when loading != null:
return loading(_that);case UpdateEmailRefreshing() when refreshing != null:
return refreshing(_that);case UpdateEmailSent() when sent != null:
return sent(_that);case UpdateEmailFormInvalid() when updateEmailFormInvalid != null:
return updateEmailFormInvalid(_that);case UpdateEmailSuccess() when success != null:
return success(_that);case UpdateEmailRequiresReauth() when requiresReauth != null:
return requiresReauth(_that);case UpdateEmailError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  refreshing,TResult Function( String email)?  sent,TResult Function( Map<String, String> errors)?  updateEmailFormInvalid,TResult Function()?  success,TResult Function( String email)?  requiresReauth,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateEmailInitial() when initial != null:
return initial();case UpdateEmailLoading() when loading != null:
return loading();case UpdateEmailRefreshing() when refreshing != null:
return refreshing();case UpdateEmailSent() when sent != null:
return sent(_that.email);case UpdateEmailFormInvalid() when updateEmailFormInvalid != null:
return updateEmailFormInvalid(_that.errors);case UpdateEmailSuccess() when success != null:
return success();case UpdateEmailRequiresReauth() when requiresReauth != null:
return requiresReauth(_that.email);case UpdateEmailError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  refreshing,required TResult Function( String email)  sent,required TResult Function( Map<String, String> errors)  updateEmailFormInvalid,required TResult Function()  success,required TResult Function( String email)  requiresReauth,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case UpdateEmailInitial():
return initial();case UpdateEmailLoading():
return loading();case UpdateEmailRefreshing():
return refreshing();case UpdateEmailSent():
return sent(_that.email);case UpdateEmailFormInvalid():
return updateEmailFormInvalid(_that.errors);case UpdateEmailSuccess():
return success();case UpdateEmailRequiresReauth():
return requiresReauth(_that.email);case UpdateEmailError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  refreshing,TResult? Function( String email)?  sent,TResult? Function( Map<String, String> errors)?  updateEmailFormInvalid,TResult? Function()?  success,TResult? Function( String email)?  requiresReauth,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case UpdateEmailInitial() when initial != null:
return initial();case UpdateEmailLoading() when loading != null:
return loading();case UpdateEmailRefreshing() when refreshing != null:
return refreshing();case UpdateEmailSent() when sent != null:
return sent(_that.email);case UpdateEmailFormInvalid() when updateEmailFormInvalid != null:
return updateEmailFormInvalid(_that.errors);case UpdateEmailSuccess() when success != null:
return success();case UpdateEmailRequiresReauth() when requiresReauth != null:
return requiresReauth(_that.email);case UpdateEmailError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class UpdateEmailInitial implements UpdateEmailState {
  const UpdateEmailInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmailInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEmailState.initial()';
}


}




/// @nodoc


class UpdateEmailLoading implements UpdateEmailState {
  const UpdateEmailLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmailLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEmailState.loading()';
}


}




/// @nodoc


class UpdateEmailRefreshing implements UpdateEmailState {
  const UpdateEmailRefreshing();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmailRefreshing);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEmailState.refreshing()';
}


}




/// @nodoc


class UpdateEmailSent implements UpdateEmailState {
  const UpdateEmailSent({required this.email});
  

 final  String email;

/// Create a copy of UpdateEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateEmailSentCopyWith<UpdateEmailSent> get copyWith => _$UpdateEmailSentCopyWithImpl<UpdateEmailSent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmailSent&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'UpdateEmailState.sent(email: $email)';
}


}

/// @nodoc
abstract mixin class $UpdateEmailSentCopyWith<$Res> implements $UpdateEmailStateCopyWith<$Res> {
  factory $UpdateEmailSentCopyWith(UpdateEmailSent value, $Res Function(UpdateEmailSent) _then) = _$UpdateEmailSentCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$UpdateEmailSentCopyWithImpl<$Res>
    implements $UpdateEmailSentCopyWith<$Res> {
  _$UpdateEmailSentCopyWithImpl(this._self, this._then);

  final UpdateEmailSent _self;
  final $Res Function(UpdateEmailSent) _then;

/// Create a copy of UpdateEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(UpdateEmailSent(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateEmailFormInvalid implements UpdateEmailState {
  const UpdateEmailFormInvalid({required final  Map<String, String> errors}): _errors = errors;
  

 final  Map<String, String> _errors;
 Map<String, String> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of UpdateEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateEmailFormInvalidCopyWith<UpdateEmailFormInvalid> get copyWith => _$UpdateEmailFormInvalidCopyWithImpl<UpdateEmailFormInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmailFormInvalid&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'UpdateEmailState.updateEmailFormInvalid(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $UpdateEmailFormInvalidCopyWith<$Res> implements $UpdateEmailStateCopyWith<$Res> {
  factory $UpdateEmailFormInvalidCopyWith(UpdateEmailFormInvalid value, $Res Function(UpdateEmailFormInvalid) _then) = _$UpdateEmailFormInvalidCopyWithImpl;
@useResult
$Res call({
 Map<String, String> errors
});




}
/// @nodoc
class _$UpdateEmailFormInvalidCopyWithImpl<$Res>
    implements $UpdateEmailFormInvalidCopyWith<$Res> {
  _$UpdateEmailFormInvalidCopyWithImpl(this._self, this._then);

  final UpdateEmailFormInvalid _self;
  final $Res Function(UpdateEmailFormInvalid) _then;

/// Create a copy of UpdateEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(UpdateEmailFormInvalid(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

/// @nodoc


class UpdateEmailSuccess implements UpdateEmailState {
  const UpdateEmailSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmailSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEmailState.success()';
}


}




/// @nodoc


class UpdateEmailRequiresReauth implements UpdateEmailState {
  const UpdateEmailRequiresReauth({required this.email});
  

 final  String email;

/// Create a copy of UpdateEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateEmailRequiresReauthCopyWith<UpdateEmailRequiresReauth> get copyWith => _$UpdateEmailRequiresReauthCopyWithImpl<UpdateEmailRequiresReauth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmailRequiresReauth&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'UpdateEmailState.requiresReauth(email: $email)';
}


}

/// @nodoc
abstract mixin class $UpdateEmailRequiresReauthCopyWith<$Res> implements $UpdateEmailStateCopyWith<$Res> {
  factory $UpdateEmailRequiresReauthCopyWith(UpdateEmailRequiresReauth value, $Res Function(UpdateEmailRequiresReauth) _then) = _$UpdateEmailRequiresReauthCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$UpdateEmailRequiresReauthCopyWithImpl<$Res>
    implements $UpdateEmailRequiresReauthCopyWith<$Res> {
  _$UpdateEmailRequiresReauthCopyWithImpl(this._self, this._then);

  final UpdateEmailRequiresReauth _self;
  final $Res Function(UpdateEmailRequiresReauth) _then;

/// Create a copy of UpdateEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(UpdateEmailRequiresReauth(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateEmailError implements UpdateEmailState {
  const UpdateEmailError({required this.error});
  

 final  Exception error;

/// Create a copy of UpdateEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateEmailErrorCopyWith<UpdateEmailError> get copyWith => _$UpdateEmailErrorCopyWithImpl<UpdateEmailError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmailError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UpdateEmailState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $UpdateEmailErrorCopyWith<$Res> implements $UpdateEmailStateCopyWith<$Res> {
  factory $UpdateEmailErrorCopyWith(UpdateEmailError value, $Res Function(UpdateEmailError) _then) = _$UpdateEmailErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$UpdateEmailErrorCopyWithImpl<$Res>
    implements $UpdateEmailErrorCopyWith<$Res> {
  _$UpdateEmailErrorCopyWithImpl(this._self, this._then);

  final UpdateEmailError _self;
  final $Res Function(UpdateEmailError) _then;

/// Create a copy of UpdateEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(UpdateEmailError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
