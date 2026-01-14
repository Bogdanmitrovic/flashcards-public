// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeleteUserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteUserState()';
}


}

/// @nodoc
class $DeleteUserStateCopyWith<$Res>  {
$DeleteUserStateCopyWith(DeleteUserState _, $Res Function(DeleteUserState) __);
}


/// Adds pattern-matching-related methods to [DeleteUserState].
extension DeleteUserStatePatterns on DeleteUserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DeleteUserInitial value)?  initial,TResult Function( DeleteUserLoading value)?  loading,TResult Function( DeleteUserRequiresReauth value)?  requiredReauth,TResult Function( DeleteUserSuccessful value)?  successful,TResult Function( DeleteUserError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DeleteUserInitial() when initial != null:
return initial(_that);case DeleteUserLoading() when loading != null:
return loading(_that);case DeleteUserRequiresReauth() when requiredReauth != null:
return requiredReauth(_that);case DeleteUserSuccessful() when successful != null:
return successful(_that);case DeleteUserError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DeleteUserInitial value)  initial,required TResult Function( DeleteUserLoading value)  loading,required TResult Function( DeleteUserRequiresReauth value)  requiredReauth,required TResult Function( DeleteUserSuccessful value)  successful,required TResult Function( DeleteUserError value)  error,}){
final _that = this;
switch (_that) {
case DeleteUserInitial():
return initial(_that);case DeleteUserLoading():
return loading(_that);case DeleteUserRequiresReauth():
return requiredReauth(_that);case DeleteUserSuccessful():
return successful(_that);case DeleteUserError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DeleteUserInitial value)?  initial,TResult? Function( DeleteUserLoading value)?  loading,TResult? Function( DeleteUserRequiresReauth value)?  requiredReauth,TResult? Function( DeleteUserSuccessful value)?  successful,TResult? Function( DeleteUserError value)?  error,}){
final _that = this;
switch (_that) {
case DeleteUserInitial() when initial != null:
return initial(_that);case DeleteUserLoading() when loading != null:
return loading(_that);case DeleteUserRequiresReauth() when requiredReauth != null:
return requiredReauth(_that);case DeleteUserSuccessful() when successful != null:
return successful(_that);case DeleteUserError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  requiredReauth,TResult Function()?  successful,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DeleteUserInitial() when initial != null:
return initial();case DeleteUserLoading() when loading != null:
return loading();case DeleteUserRequiresReauth() when requiredReauth != null:
return requiredReauth();case DeleteUserSuccessful() when successful != null:
return successful();case DeleteUserError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  requiredReauth,required TResult Function()  successful,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case DeleteUserInitial():
return initial();case DeleteUserLoading():
return loading();case DeleteUserRequiresReauth():
return requiredReauth();case DeleteUserSuccessful():
return successful();case DeleteUserError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  requiredReauth,TResult? Function()?  successful,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case DeleteUserInitial() when initial != null:
return initial();case DeleteUserLoading() when loading != null:
return loading();case DeleteUserRequiresReauth() when requiredReauth != null:
return requiredReauth();case DeleteUserSuccessful() when successful != null:
return successful();case DeleteUserError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class DeleteUserInitial implements DeleteUserState {
  const DeleteUserInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUserInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteUserState.initial()';
}


}




/// @nodoc


class DeleteUserLoading implements DeleteUserState {
  const DeleteUserLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUserLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteUserState.loading()';
}


}




/// @nodoc


class DeleteUserRequiresReauth implements DeleteUserState {
  const DeleteUserRequiresReauth();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUserRequiresReauth);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteUserState.requiredReauth()';
}


}




/// @nodoc


class DeleteUserSuccessful implements DeleteUserState {
  const DeleteUserSuccessful();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUserSuccessful);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteUserState.successful()';
}


}




/// @nodoc


class DeleteUserError implements DeleteUserState {
  const DeleteUserError({required this.error});
  

 final  Exception error;

/// Create a copy of DeleteUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteUserErrorCopyWith<DeleteUserError> get copyWith => _$DeleteUserErrorCopyWithImpl<DeleteUserError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUserError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'DeleteUserState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $DeleteUserErrorCopyWith<$Res> implements $DeleteUserStateCopyWith<$Res> {
  factory $DeleteUserErrorCopyWith(DeleteUserError value, $Res Function(DeleteUserError) _then) = _$DeleteUserErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$DeleteUserErrorCopyWithImpl<$Res>
    implements $DeleteUserErrorCopyWith<$Res> {
  _$DeleteUserErrorCopyWithImpl(this._self, this._then);

  final DeleteUserError _self;
  final $Res Function(DeleteUserError) _then;

/// Create a copy of DeleteUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(DeleteUserError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
