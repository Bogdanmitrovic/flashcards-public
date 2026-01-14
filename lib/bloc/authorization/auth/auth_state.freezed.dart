// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {

 Exception? get error;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AuthState(error: $error)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 Exception? error
});




}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthInitial value)?  initial,TResult Function( AuthLoading value)?  loading,TResult Function( Unauthenticated value)?  unauthenticated,TResult Function( Authenticated value)?  authenticated,TResult Function( AuthVerifyEmailPending value)?  verifyEmailPending,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthInitial() when initial != null:
return initial(_that);case AuthLoading() when loading != null:
return loading(_that);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case Authenticated() when authenticated != null:
return authenticated(_that);case AuthVerifyEmailPending() when verifyEmailPending != null:
return verifyEmailPending(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthInitial value)  initial,required TResult Function( AuthLoading value)  loading,required TResult Function( Unauthenticated value)  unauthenticated,required TResult Function( Authenticated value)  authenticated,required TResult Function( AuthVerifyEmailPending value)  verifyEmailPending,}){
final _that = this;
switch (_that) {
case AuthInitial():
return initial(_that);case AuthLoading():
return loading(_that);case Unauthenticated():
return unauthenticated(_that);case Authenticated():
return authenticated(_that);case AuthVerifyEmailPending():
return verifyEmailPending(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthInitial value)?  initial,TResult? Function( AuthLoading value)?  loading,TResult? Function( Unauthenticated value)?  unauthenticated,TResult? Function( Authenticated value)?  authenticated,TResult? Function( AuthVerifyEmailPending value)?  verifyEmailPending,}){
final _that = this;
switch (_that) {
case AuthInitial() when initial != null:
return initial(_that);case AuthLoading() when loading != null:
return loading(_that);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case Authenticated() when authenticated != null:
return authenticated(_that);case AuthVerifyEmailPending() when verifyEmailPending != null:
return verifyEmailPending(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Exception? error)?  initial,TResult Function( Exception? error)?  loading,TResult Function( Exception? error,  SignOutReason reason)?  unauthenticated,TResult Function( User user,  bool pendingEmailVerification,  Exception? error)?  authenticated,TResult Function( String email,  String? newEmail,  bool canResendEmail,  bool needsReauthentication,  Exception? error)?  verifyEmailPending,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthInitial() when initial != null:
return initial(_that.error);case AuthLoading() when loading != null:
return loading(_that.error);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that.error,_that.reason);case Authenticated() when authenticated != null:
return authenticated(_that.user,_that.pendingEmailVerification,_that.error);case AuthVerifyEmailPending() when verifyEmailPending != null:
return verifyEmailPending(_that.email,_that.newEmail,_that.canResendEmail,_that.needsReauthentication,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Exception? error)  initial,required TResult Function( Exception? error)  loading,required TResult Function( Exception? error,  SignOutReason reason)  unauthenticated,required TResult Function( User user,  bool pendingEmailVerification,  Exception? error)  authenticated,required TResult Function( String email,  String? newEmail,  bool canResendEmail,  bool needsReauthentication,  Exception? error)  verifyEmailPending,}) {final _that = this;
switch (_that) {
case AuthInitial():
return initial(_that.error);case AuthLoading():
return loading(_that.error);case Unauthenticated():
return unauthenticated(_that.error,_that.reason);case Authenticated():
return authenticated(_that.user,_that.pendingEmailVerification,_that.error);case AuthVerifyEmailPending():
return verifyEmailPending(_that.email,_that.newEmail,_that.canResendEmail,_that.needsReauthentication,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Exception? error)?  initial,TResult? Function( Exception? error)?  loading,TResult? Function( Exception? error,  SignOutReason reason)?  unauthenticated,TResult? Function( User user,  bool pendingEmailVerification,  Exception? error)?  authenticated,TResult? Function( String email,  String? newEmail,  bool canResendEmail,  bool needsReauthentication,  Exception? error)?  verifyEmailPending,}) {final _that = this;
switch (_that) {
case AuthInitial() when initial != null:
return initial(_that.error);case AuthLoading() when loading != null:
return loading(_that.error);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that.error,_that.reason);case Authenticated() when authenticated != null:
return authenticated(_that.user,_that.pendingEmailVerification,_that.error);case AuthVerifyEmailPending() when verifyEmailPending != null:
return verifyEmailPending(_that.email,_that.newEmail,_that.canResendEmail,_that.needsReauthentication,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class AuthInitial implements AuthState {
  const AuthInitial({this.error});
  

@override final  Exception? error;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthInitialCopyWith<AuthInitial> get copyWith => _$AuthInitialCopyWithImpl<AuthInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthInitial&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AuthState.initial(error: $error)';
}


}

/// @nodoc
abstract mixin class $AuthInitialCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthInitialCopyWith(AuthInitial value, $Res Function(AuthInitial) _then) = _$AuthInitialCopyWithImpl;
@override @useResult
$Res call({
 Exception? error
});




}
/// @nodoc
class _$AuthInitialCopyWithImpl<$Res>
    implements $AuthInitialCopyWith<$Res> {
  _$AuthInitialCopyWithImpl(this._self, this._then);

  final AuthInitial _self;
  final $Res Function(AuthInitial) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(AuthInitial(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

/// @nodoc


class AuthLoading implements AuthState {
  const AuthLoading({this.error});
  

@override final  Exception? error;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthLoadingCopyWith<AuthLoading> get copyWith => _$AuthLoadingCopyWithImpl<AuthLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthLoading&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AuthState.loading(error: $error)';
}


}

/// @nodoc
abstract mixin class $AuthLoadingCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthLoadingCopyWith(AuthLoading value, $Res Function(AuthLoading) _then) = _$AuthLoadingCopyWithImpl;
@override @useResult
$Res call({
 Exception? error
});




}
/// @nodoc
class _$AuthLoadingCopyWithImpl<$Res>
    implements $AuthLoadingCopyWith<$Res> {
  _$AuthLoadingCopyWithImpl(this._self, this._then);

  final AuthLoading _self;
  final $Res Function(AuthLoading) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(AuthLoading(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

/// @nodoc


class Unauthenticated implements AuthState {
  const Unauthenticated({this.error, required this.reason});
  

@override final  Exception? error;
 final  SignOutReason reason;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnauthenticatedCopyWith<Unauthenticated> get copyWith => _$UnauthenticatedCopyWithImpl<Unauthenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unauthenticated&&(identical(other.error, error) || other.error == error)&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,error,reason);

@override
String toString() {
  return 'AuthState.unauthenticated(error: $error, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $UnauthenticatedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(Unauthenticated value, $Res Function(Unauthenticated) _then) = _$UnauthenticatedCopyWithImpl;
@override @useResult
$Res call({
 Exception? error, SignOutReason reason
});




}
/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(this._self, this._then);

  final Unauthenticated _self;
  final $Res Function(Unauthenticated) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? reason = null,}) {
  return _then(Unauthenticated(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as SignOutReason,
  ));
}


}

/// @nodoc


class Authenticated implements AuthState {
  const Authenticated({required this.user, this.pendingEmailVerification = false, this.error});
  

 final  User user;
@JsonKey() final  bool pendingEmailVerification;
@override final  Exception? error;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticatedCopyWith<Authenticated> get copyWith => _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Authenticated&&(identical(other.user, user) || other.user == user)&&(identical(other.pendingEmailVerification, pendingEmailVerification) || other.pendingEmailVerification == pendingEmailVerification)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,user,pendingEmailVerification,error);

@override
String toString() {
  return 'AuthState.authenticated(user: $user, pendingEmailVerification: $pendingEmailVerification, error: $error)';
}


}

/// @nodoc
abstract mixin class $AuthenticatedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthenticatedCopyWith(Authenticated value, $Res Function(Authenticated) _then) = _$AuthenticatedCopyWithImpl;
@override @useResult
$Res call({
 User user, bool pendingEmailVerification, Exception? error
});




}
/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(this._self, this._then);

  final Authenticated _self;
  final $Res Function(Authenticated) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? pendingEmailVerification = null,Object? error = freezed,}) {
  return _then(Authenticated(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,pendingEmailVerification: null == pendingEmailVerification ? _self.pendingEmailVerification : pendingEmailVerification // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

/// @nodoc


class AuthVerifyEmailPending implements AuthState {
  const AuthVerifyEmailPending({required this.email, this.newEmail, this.canResendEmail = true, this.needsReauthentication = false, this.error});
  

 final  String email;
 final  String? newEmail;
@JsonKey() final  bool canResendEmail;
@JsonKey() final  bool needsReauthentication;
@override final  Exception? error;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthVerifyEmailPendingCopyWith<AuthVerifyEmailPending> get copyWith => _$AuthVerifyEmailPendingCopyWithImpl<AuthVerifyEmailPending>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthVerifyEmailPending&&(identical(other.email, email) || other.email == email)&&(identical(other.newEmail, newEmail) || other.newEmail == newEmail)&&(identical(other.canResendEmail, canResendEmail) || other.canResendEmail == canResendEmail)&&(identical(other.needsReauthentication, needsReauthentication) || other.needsReauthentication == needsReauthentication)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,email,newEmail,canResendEmail,needsReauthentication,error);

@override
String toString() {
  return 'AuthState.verifyEmailPending(email: $email, newEmail: $newEmail, canResendEmail: $canResendEmail, needsReauthentication: $needsReauthentication, error: $error)';
}


}

/// @nodoc
abstract mixin class $AuthVerifyEmailPendingCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthVerifyEmailPendingCopyWith(AuthVerifyEmailPending value, $Res Function(AuthVerifyEmailPending) _then) = _$AuthVerifyEmailPendingCopyWithImpl;
@override @useResult
$Res call({
 String email, String? newEmail, bool canResendEmail, bool needsReauthentication, Exception? error
});




}
/// @nodoc
class _$AuthVerifyEmailPendingCopyWithImpl<$Res>
    implements $AuthVerifyEmailPendingCopyWith<$Res> {
  _$AuthVerifyEmailPendingCopyWithImpl(this._self, this._then);

  final AuthVerifyEmailPending _self;
  final $Res Function(AuthVerifyEmailPending) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? newEmail = freezed,Object? canResendEmail = null,Object? needsReauthentication = null,Object? error = freezed,}) {
  return _then(AuthVerifyEmailPending(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,newEmail: freezed == newEmail ? _self.newEmail : newEmail // ignore: cast_nullable_to_non_nullable
as String?,canResendEmail: null == canResendEmail ? _self.canResendEmail : canResendEmail // ignore: cast_nullable_to_non_nullable
as bool,needsReauthentication: null == needsReauthentication ? _self.needsReauthentication : needsReauthentication // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
