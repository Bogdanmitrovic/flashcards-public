// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rename_pack_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RenamePackState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RenamePackState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RenamePackState()';
}


}

/// @nodoc
class $RenamePackStateCopyWith<$Res>  {
$RenamePackStateCopyWith(RenamePackState _, $Res Function(RenamePackState) __);
}


/// Adds pattern-matching-related methods to [RenamePackState].
extension RenamePackStatePatterns on RenamePackState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RenamePackInitial value)?  initial,TResult Function( RenamePackLoading value)?  loading,TResult Function( RenamePackSuccess value)?  success,TResult Function( RenamePackFormInvalid value)?  formInvalid,TResult Function( RenamePackError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RenamePackInitial() when initial != null:
return initial(_that);case RenamePackLoading() when loading != null:
return loading(_that);case RenamePackSuccess() when success != null:
return success(_that);case RenamePackFormInvalid() when formInvalid != null:
return formInvalid(_that);case RenamePackError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RenamePackInitial value)  initial,required TResult Function( RenamePackLoading value)  loading,required TResult Function( RenamePackSuccess value)  success,required TResult Function( RenamePackFormInvalid value)  formInvalid,required TResult Function( RenamePackError value)  error,}){
final _that = this;
switch (_that) {
case RenamePackInitial():
return initial(_that);case RenamePackLoading():
return loading(_that);case RenamePackSuccess():
return success(_that);case RenamePackFormInvalid():
return formInvalid(_that);case RenamePackError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RenamePackInitial value)?  initial,TResult? Function( RenamePackLoading value)?  loading,TResult? Function( RenamePackSuccess value)?  success,TResult? Function( RenamePackFormInvalid value)?  formInvalid,TResult? Function( RenamePackError value)?  error,}){
final _that = this;
switch (_that) {
case RenamePackInitial() when initial != null:
return initial(_that);case RenamePackLoading() when loading != null:
return loading(_that);case RenamePackSuccess() when success != null:
return success(_that);case RenamePackFormInvalid() when formInvalid != null:
return formInvalid(_that);case RenamePackError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String newName)?  success,TResult Function( Map<String, String> errors)?  formInvalid,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RenamePackInitial() when initial != null:
return initial();case RenamePackLoading() when loading != null:
return loading();case RenamePackSuccess() when success != null:
return success(_that.newName);case RenamePackFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case RenamePackError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String newName)  success,required TResult Function( Map<String, String> errors)  formInvalid,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case RenamePackInitial():
return initial();case RenamePackLoading():
return loading();case RenamePackSuccess():
return success(_that.newName);case RenamePackFormInvalid():
return formInvalid(_that.errors);case RenamePackError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String newName)?  success,TResult? Function( Map<String, String> errors)?  formInvalid,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case RenamePackInitial() when initial != null:
return initial();case RenamePackLoading() when loading != null:
return loading();case RenamePackSuccess() when success != null:
return success(_that.newName);case RenamePackFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case RenamePackError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class RenamePackInitial implements RenamePackState {
  const RenamePackInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RenamePackInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RenamePackState.initial()';
}


}




/// @nodoc


class RenamePackLoading implements RenamePackState {
  const RenamePackLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RenamePackLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RenamePackState.loading()';
}


}




/// @nodoc


class RenamePackSuccess implements RenamePackState {
  const RenamePackSuccess({required this.newName});
  

 final  String newName;

/// Create a copy of RenamePackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RenamePackSuccessCopyWith<RenamePackSuccess> get copyWith => _$RenamePackSuccessCopyWithImpl<RenamePackSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RenamePackSuccess&&(identical(other.newName, newName) || other.newName == newName));
}


@override
int get hashCode => Object.hash(runtimeType,newName);

@override
String toString() {
  return 'RenamePackState.success(newName: $newName)';
}


}

/// @nodoc
abstract mixin class $RenamePackSuccessCopyWith<$Res> implements $RenamePackStateCopyWith<$Res> {
  factory $RenamePackSuccessCopyWith(RenamePackSuccess value, $Res Function(RenamePackSuccess) _then) = _$RenamePackSuccessCopyWithImpl;
@useResult
$Res call({
 String newName
});




}
/// @nodoc
class _$RenamePackSuccessCopyWithImpl<$Res>
    implements $RenamePackSuccessCopyWith<$Res> {
  _$RenamePackSuccessCopyWithImpl(this._self, this._then);

  final RenamePackSuccess _self;
  final $Res Function(RenamePackSuccess) _then;

/// Create a copy of RenamePackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newName = null,}) {
  return _then(RenamePackSuccess(
newName: null == newName ? _self.newName : newName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RenamePackFormInvalid implements RenamePackState {
  const RenamePackFormInvalid({required final  Map<String, String> errors}): _errors = errors;
  

 final  Map<String, String> _errors;
 Map<String, String> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of RenamePackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RenamePackFormInvalidCopyWith<RenamePackFormInvalid> get copyWith => _$RenamePackFormInvalidCopyWithImpl<RenamePackFormInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RenamePackFormInvalid&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'RenamePackState.formInvalid(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $RenamePackFormInvalidCopyWith<$Res> implements $RenamePackStateCopyWith<$Res> {
  factory $RenamePackFormInvalidCopyWith(RenamePackFormInvalid value, $Res Function(RenamePackFormInvalid) _then) = _$RenamePackFormInvalidCopyWithImpl;
@useResult
$Res call({
 Map<String, String> errors
});




}
/// @nodoc
class _$RenamePackFormInvalidCopyWithImpl<$Res>
    implements $RenamePackFormInvalidCopyWith<$Res> {
  _$RenamePackFormInvalidCopyWithImpl(this._self, this._then);

  final RenamePackFormInvalid _self;
  final $Res Function(RenamePackFormInvalid) _then;

/// Create a copy of RenamePackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(RenamePackFormInvalid(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

/// @nodoc


class RenamePackError implements RenamePackState {
  const RenamePackError({required this.error});
  

 final  Exception error;

/// Create a copy of RenamePackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RenamePackErrorCopyWith<RenamePackError> get copyWith => _$RenamePackErrorCopyWithImpl<RenamePackError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RenamePackError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'RenamePackState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $RenamePackErrorCopyWith<$Res> implements $RenamePackStateCopyWith<$Res> {
  factory $RenamePackErrorCopyWith(RenamePackError value, $Res Function(RenamePackError) _then) = _$RenamePackErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$RenamePackErrorCopyWithImpl<$Res>
    implements $RenamePackErrorCopyWith<$Res> {
  _$RenamePackErrorCopyWithImpl(this._self, this._then);

  final RenamePackError _self;
  final $Res Function(RenamePackError) _then;

/// Create a copy of RenamePackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(RenamePackError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
