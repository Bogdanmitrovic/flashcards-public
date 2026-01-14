// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_reader_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileReaderState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileReaderState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileReaderState()';
}


}

/// @nodoc
class $ProfileReaderStateCopyWith<$Res>  {
$ProfileReaderStateCopyWith(ProfileReaderState _, $Res Function(ProfileReaderState) __);
}


/// Adds pattern-matching-related methods to [ProfileReaderState].
extension ProfileReaderStatePatterns on ProfileReaderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProfileReaderInitial value)?  initial,TResult Function( ProfileReaderLoading value)?  loading,TResult Function( ProfileReaderIsLoaded value)?  isLoaded,TResult Function( ProfileReaderError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProfileReaderInitial() when initial != null:
return initial(_that);case ProfileReaderLoading() when loading != null:
return loading(_that);case ProfileReaderIsLoaded() when isLoaded != null:
return isLoaded(_that);case ProfileReaderError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProfileReaderInitial value)  initial,required TResult Function( ProfileReaderLoading value)  loading,required TResult Function( ProfileReaderIsLoaded value)  isLoaded,required TResult Function( ProfileReaderError value)  error,}){
final _that = this;
switch (_that) {
case ProfileReaderInitial():
return initial(_that);case ProfileReaderLoading():
return loading(_that);case ProfileReaderIsLoaded():
return isLoaded(_that);case ProfileReaderError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProfileReaderInitial value)?  initial,TResult? Function( ProfileReaderLoading value)?  loading,TResult? Function( ProfileReaderIsLoaded value)?  isLoaded,TResult? Function( ProfileReaderError value)?  error,}){
final _that = this;
switch (_that) {
case ProfileReaderInitial() when initial != null:
return initial(_that);case ProfileReaderLoading() when loading != null:
return loading(_that);case ProfileReaderIsLoaded() when isLoaded != null:
return isLoaded(_that);case ProfileReaderError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Profile profile)?  isLoaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProfileReaderInitial() when initial != null:
return initial();case ProfileReaderLoading() when loading != null:
return loading();case ProfileReaderIsLoaded() when isLoaded != null:
return isLoaded(_that.profile);case ProfileReaderError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Profile profile)  isLoaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ProfileReaderInitial():
return initial();case ProfileReaderLoading():
return loading();case ProfileReaderIsLoaded():
return isLoaded(_that.profile);case ProfileReaderError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Profile profile)?  isLoaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ProfileReaderInitial() when initial != null:
return initial();case ProfileReaderLoading() when loading != null:
return loading();case ProfileReaderIsLoaded() when isLoaded != null:
return isLoaded(_that.profile);case ProfileReaderError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ProfileReaderInitial implements ProfileReaderState {
  const ProfileReaderInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileReaderInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileReaderState.initial()';
}


}




/// @nodoc


class ProfileReaderLoading implements ProfileReaderState {
  const ProfileReaderLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileReaderLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileReaderState.loading()';
}


}




/// @nodoc


class ProfileReaderIsLoaded implements ProfileReaderState {
  const ProfileReaderIsLoaded({required this.profile});
  

 final  Profile profile;

/// Create a copy of ProfileReaderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileReaderIsLoadedCopyWith<ProfileReaderIsLoaded> get copyWith => _$ProfileReaderIsLoadedCopyWithImpl<ProfileReaderIsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileReaderIsLoaded&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,profile);

@override
String toString() {
  return 'ProfileReaderState.isLoaded(profile: $profile)';
}


}

/// @nodoc
abstract mixin class $ProfileReaderIsLoadedCopyWith<$Res> implements $ProfileReaderStateCopyWith<$Res> {
  factory $ProfileReaderIsLoadedCopyWith(ProfileReaderIsLoaded value, $Res Function(ProfileReaderIsLoaded) _then) = _$ProfileReaderIsLoadedCopyWithImpl;
@useResult
$Res call({
 Profile profile
});


$ProfileCopyWith<$Res> get profile;

}
/// @nodoc
class _$ProfileReaderIsLoadedCopyWithImpl<$Res>
    implements $ProfileReaderIsLoadedCopyWith<$Res> {
  _$ProfileReaderIsLoadedCopyWithImpl(this._self, this._then);

  final ProfileReaderIsLoaded _self;
  final $Res Function(ProfileReaderIsLoaded) _then;

/// Create a copy of ProfileReaderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(ProfileReaderIsLoaded(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as Profile,
  ));
}

/// Create a copy of ProfileReaderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileCopyWith<$Res> get profile {
  
  return $ProfileCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

/// @nodoc


class ProfileReaderError implements ProfileReaderState {
  const ProfileReaderError({required this.message});
  

 final  String message;

/// Create a copy of ProfileReaderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileReaderErrorCopyWith<ProfileReaderError> get copyWith => _$ProfileReaderErrorCopyWithImpl<ProfileReaderError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileReaderError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProfileReaderState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProfileReaderErrorCopyWith<$Res> implements $ProfileReaderStateCopyWith<$Res> {
  factory $ProfileReaderErrorCopyWith(ProfileReaderError value, $Res Function(ProfileReaderError) _then) = _$ProfileReaderErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProfileReaderErrorCopyWithImpl<$Res>
    implements $ProfileReaderErrorCopyWith<$Res> {
  _$ProfileReaderErrorCopyWithImpl(this._self, this._then);

  final ProfileReaderError _self;
  final $Res Function(ProfileReaderError) _then;

/// Create a copy of ProfileReaderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ProfileReaderError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
