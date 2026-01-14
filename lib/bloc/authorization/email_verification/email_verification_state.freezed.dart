// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmailVerificationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailVerificationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState()';
}


}

/// @nodoc
class $EmailVerificationStateCopyWith<$Res>  {
$EmailVerificationStateCopyWith(EmailVerificationState _, $Res Function(EmailVerificationState) __);
}


/// Adds pattern-matching-related methods to [EmailVerificationState].
extension EmailVerificationStatePatterns on EmailVerificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmailVerificationInitial value)?  initial,TResult Function( EmailVerificationsendingEmail value)?  sendingEmail,TResult Function( EmailVerificationLoadingUser value)?  loadingUser,TResult Function( EmailVerificationError value)?  error,TResult Function( EmailVerificationSent value)?  sent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmailVerificationInitial() when initial != null:
return initial(_that);case EmailVerificationsendingEmail() when sendingEmail != null:
return sendingEmail(_that);case EmailVerificationLoadingUser() when loadingUser != null:
return loadingUser(_that);case EmailVerificationError() when error != null:
return error(_that);case EmailVerificationSent() when sent != null:
return sent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmailVerificationInitial value)  initial,required TResult Function( EmailVerificationsendingEmail value)  sendingEmail,required TResult Function( EmailVerificationLoadingUser value)  loadingUser,required TResult Function( EmailVerificationError value)  error,required TResult Function( EmailVerificationSent value)  sent,}){
final _that = this;
switch (_that) {
case EmailVerificationInitial():
return initial(_that);case EmailVerificationsendingEmail():
return sendingEmail(_that);case EmailVerificationLoadingUser():
return loadingUser(_that);case EmailVerificationError():
return error(_that);case EmailVerificationSent():
return sent(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmailVerificationInitial value)?  initial,TResult? Function( EmailVerificationsendingEmail value)?  sendingEmail,TResult? Function( EmailVerificationLoadingUser value)?  loadingUser,TResult? Function( EmailVerificationError value)?  error,TResult? Function( EmailVerificationSent value)?  sent,}){
final _that = this;
switch (_that) {
case EmailVerificationInitial() when initial != null:
return initial(_that);case EmailVerificationsendingEmail() when sendingEmail != null:
return sendingEmail(_that);case EmailVerificationLoadingUser() when loadingUser != null:
return loadingUser(_that);case EmailVerificationError() when error != null:
return error(_that);case EmailVerificationSent() when sent != null:
return sent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  sendingEmail,TResult Function()?  loadingUser,TResult Function( Exception error)?  error,TResult Function( String email,  String? secondEmail,  bool canResendEmail)?  sent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EmailVerificationInitial() when initial != null:
return initial();case EmailVerificationsendingEmail() when sendingEmail != null:
return sendingEmail();case EmailVerificationLoadingUser() when loadingUser != null:
return loadingUser();case EmailVerificationError() when error != null:
return error(_that.error);case EmailVerificationSent() when sent != null:
return sent(_that.email,_that.secondEmail,_that.canResendEmail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  sendingEmail,required TResult Function()  loadingUser,required TResult Function( Exception error)  error,required TResult Function( String email,  String? secondEmail,  bool canResendEmail)  sent,}) {final _that = this;
switch (_that) {
case EmailVerificationInitial():
return initial();case EmailVerificationsendingEmail():
return sendingEmail();case EmailVerificationLoadingUser():
return loadingUser();case EmailVerificationError():
return error(_that.error);case EmailVerificationSent():
return sent(_that.email,_that.secondEmail,_that.canResendEmail);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  sendingEmail,TResult? Function()?  loadingUser,TResult? Function( Exception error)?  error,TResult? Function( String email,  String? secondEmail,  bool canResendEmail)?  sent,}) {final _that = this;
switch (_that) {
case EmailVerificationInitial() when initial != null:
return initial();case EmailVerificationsendingEmail() when sendingEmail != null:
return sendingEmail();case EmailVerificationLoadingUser() when loadingUser != null:
return loadingUser();case EmailVerificationError() when error != null:
return error(_that.error);case EmailVerificationSent() when sent != null:
return sent(_that.email,_that.secondEmail,_that.canResendEmail);case _:
  return null;

}
}

}

/// @nodoc


class EmailVerificationInitial implements EmailVerificationState {
  const EmailVerificationInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailVerificationInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState.initial()';
}


}




/// @nodoc


class EmailVerificationsendingEmail implements EmailVerificationState {
  const EmailVerificationsendingEmail();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailVerificationsendingEmail);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState.sendingEmail()';
}


}




/// @nodoc


class EmailVerificationLoadingUser implements EmailVerificationState {
  const EmailVerificationLoadingUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailVerificationLoadingUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState.loadingUser()';
}


}




/// @nodoc


class EmailVerificationError implements EmailVerificationState {
  const EmailVerificationError({required this.error});
  

 final  Exception error;

/// Create a copy of EmailVerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailVerificationErrorCopyWith<EmailVerificationError> get copyWith => _$EmailVerificationErrorCopyWithImpl<EmailVerificationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailVerificationError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'EmailVerificationState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $EmailVerificationErrorCopyWith<$Res> implements $EmailVerificationStateCopyWith<$Res> {
  factory $EmailVerificationErrorCopyWith(EmailVerificationError value, $Res Function(EmailVerificationError) _then) = _$EmailVerificationErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$EmailVerificationErrorCopyWithImpl<$Res>
    implements $EmailVerificationErrorCopyWith<$Res> {
  _$EmailVerificationErrorCopyWithImpl(this._self, this._then);

  final EmailVerificationError _self;
  final $Res Function(EmailVerificationError) _then;

/// Create a copy of EmailVerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(EmailVerificationError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

/// @nodoc


class EmailVerificationSent implements EmailVerificationState {
  const EmailVerificationSent({required this.email, this.secondEmail, this.canResendEmail = false});
  

 final  String email;
 final  String? secondEmail;
@JsonKey() final  bool canResendEmail;

/// Create a copy of EmailVerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailVerificationSentCopyWith<EmailVerificationSent> get copyWith => _$EmailVerificationSentCopyWithImpl<EmailVerificationSent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailVerificationSent&&(identical(other.email, email) || other.email == email)&&(identical(other.secondEmail, secondEmail) || other.secondEmail == secondEmail)&&(identical(other.canResendEmail, canResendEmail) || other.canResendEmail == canResendEmail));
}


@override
int get hashCode => Object.hash(runtimeType,email,secondEmail,canResendEmail);

@override
String toString() {
  return 'EmailVerificationState.sent(email: $email, secondEmail: $secondEmail, canResendEmail: $canResendEmail)';
}


}

/// @nodoc
abstract mixin class $EmailVerificationSentCopyWith<$Res> implements $EmailVerificationStateCopyWith<$Res> {
  factory $EmailVerificationSentCopyWith(EmailVerificationSent value, $Res Function(EmailVerificationSent) _then) = _$EmailVerificationSentCopyWithImpl;
@useResult
$Res call({
 String email, String? secondEmail, bool canResendEmail
});




}
/// @nodoc
class _$EmailVerificationSentCopyWithImpl<$Res>
    implements $EmailVerificationSentCopyWith<$Res> {
  _$EmailVerificationSentCopyWithImpl(this._self, this._then);

  final EmailVerificationSent _self;
  final $Res Function(EmailVerificationSent) _then;

/// Create a copy of EmailVerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? secondEmail = freezed,Object? canResendEmail = null,}) {
  return _then(EmailVerificationSent(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,secondEmail: freezed == secondEmail ? _self.secondEmail : secondEmail // ignore: cast_nullable_to_non_nullable
as String?,canResendEmail: null == canResendEmail ? _self.canResendEmail : canResendEmail // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
