// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_user_roles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ManageUserRolesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManageUserRolesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ManageUserRolesState()';
}


}

/// @nodoc
class $ManageUserRolesStateCopyWith<$Res>  {
$ManageUserRolesStateCopyWith(ManageUserRolesState _, $Res Function(ManageUserRolesState) __);
}


/// Adds pattern-matching-related methods to [ManageUserRolesState].
extension ManageUserRolesStatePatterns on ManageUserRolesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ManageUserRolesInitial value)?  initial,TResult Function( ManageUserRolesLoading value)?  loading,TResult Function( ManageUserRolesSuccess value)?  success,TResult Function( ManageUserRolesFormInvalid value)?  formInvalid,TResult Function( ManageUserRolesError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ManageUserRolesInitial() when initial != null:
return initial(_that);case ManageUserRolesLoading() when loading != null:
return loading(_that);case ManageUserRolesSuccess() when success != null:
return success(_that);case ManageUserRolesFormInvalid() when formInvalid != null:
return formInvalid(_that);case ManageUserRolesError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ManageUserRolesInitial value)  initial,required TResult Function( ManageUserRolesLoading value)  loading,required TResult Function( ManageUserRolesSuccess value)  success,required TResult Function( ManageUserRolesFormInvalid value)  formInvalid,required TResult Function( ManageUserRolesError value)  error,}){
final _that = this;
switch (_that) {
case ManageUserRolesInitial():
return initial(_that);case ManageUserRolesLoading():
return loading(_that);case ManageUserRolesSuccess():
return success(_that);case ManageUserRolesFormInvalid():
return formInvalid(_that);case ManageUserRolesError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ManageUserRolesInitial value)?  initial,TResult? Function( ManageUserRolesLoading value)?  loading,TResult? Function( ManageUserRolesSuccess value)?  success,TResult? Function( ManageUserRolesFormInvalid value)?  formInvalid,TResult? Function( ManageUserRolesError value)?  error,}){
final _that = this;
switch (_that) {
case ManageUserRolesInitial() when initial != null:
return initial(_that);case ManageUserRolesLoading() when loading != null:
return loading(_that);case ManageUserRolesSuccess() when success != null:
return success(_that);case ManageUserRolesFormInvalid() when formInvalid != null:
return formInvalid(_that);case ManageUserRolesError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( Map<String, String> errors)?  formInvalid,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ManageUserRolesInitial() when initial != null:
return initial();case ManageUserRolesLoading() when loading != null:
return loading();case ManageUserRolesSuccess() when success != null:
return success();case ManageUserRolesFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case ManageUserRolesError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( Map<String, String> errors)  formInvalid,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case ManageUserRolesInitial():
return initial();case ManageUserRolesLoading():
return loading();case ManageUserRolesSuccess():
return success();case ManageUserRolesFormInvalid():
return formInvalid(_that.errors);case ManageUserRolesError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( Map<String, String> errors)?  formInvalid,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case ManageUserRolesInitial() when initial != null:
return initial();case ManageUserRolesLoading() when loading != null:
return loading();case ManageUserRolesSuccess() when success != null:
return success();case ManageUserRolesFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case ManageUserRolesError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class ManageUserRolesInitial implements ManageUserRolesState {
  const ManageUserRolesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManageUserRolesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ManageUserRolesState.initial()';
}


}




/// @nodoc


class ManageUserRolesLoading implements ManageUserRolesState {
  const ManageUserRolesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManageUserRolesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ManageUserRolesState.loading()';
}


}




/// @nodoc


class ManageUserRolesSuccess implements ManageUserRolesState {
  const ManageUserRolesSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManageUserRolesSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ManageUserRolesState.success()';
}


}




/// @nodoc


class ManageUserRolesFormInvalid implements ManageUserRolesState {
  const ManageUserRolesFormInvalid({required final  Map<String, String> errors}): _errors = errors;
  

 final  Map<String, String> _errors;
 Map<String, String> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of ManageUserRolesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManageUserRolesFormInvalidCopyWith<ManageUserRolesFormInvalid> get copyWith => _$ManageUserRolesFormInvalidCopyWithImpl<ManageUserRolesFormInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManageUserRolesFormInvalid&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'ManageUserRolesState.formInvalid(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ManageUserRolesFormInvalidCopyWith<$Res> implements $ManageUserRolesStateCopyWith<$Res> {
  factory $ManageUserRolesFormInvalidCopyWith(ManageUserRolesFormInvalid value, $Res Function(ManageUserRolesFormInvalid) _then) = _$ManageUserRolesFormInvalidCopyWithImpl;
@useResult
$Res call({
 Map<String, String> errors
});




}
/// @nodoc
class _$ManageUserRolesFormInvalidCopyWithImpl<$Res>
    implements $ManageUserRolesFormInvalidCopyWith<$Res> {
  _$ManageUserRolesFormInvalidCopyWithImpl(this._self, this._then);

  final ManageUserRolesFormInvalid _self;
  final $Res Function(ManageUserRolesFormInvalid) _then;

/// Create a copy of ManageUserRolesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(ManageUserRolesFormInvalid(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

/// @nodoc


class ManageUserRolesError implements ManageUserRolesState {
  const ManageUserRolesError({required this.error});
  

 final  Exception error;

/// Create a copy of ManageUserRolesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManageUserRolesErrorCopyWith<ManageUserRolesError> get copyWith => _$ManageUserRolesErrorCopyWithImpl<ManageUserRolesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManageUserRolesError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ManageUserRolesState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ManageUserRolesErrorCopyWith<$Res> implements $ManageUserRolesStateCopyWith<$Res> {
  factory $ManageUserRolesErrorCopyWith(ManageUserRolesError value, $Res Function(ManageUserRolesError) _then) = _$ManageUserRolesErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$ManageUserRolesErrorCopyWithImpl<$Res>
    implements $ManageUserRolesErrorCopyWith<$Res> {
  _$ManageUserRolesErrorCopyWithImpl(this._self, this._then);

  final ManageUserRolesError _self;
  final $Res Function(ManageUserRolesError) _then;

/// Create a copy of ManageUserRolesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ManageUserRolesError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
