// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_pack_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreatePackState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePackState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePackState()';
}


}

/// @nodoc
class $CreatePackStateCopyWith<$Res>  {
$CreatePackStateCopyWith(CreatePackState _, $Res Function(CreatePackState) __);
}


/// Adds pattern-matching-related methods to [CreatePackState].
extension CreatePackStatePatterns on CreatePackState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreatePackInitial value)?  initial,TResult Function( CreatePackLoading value)?  loading,TResult Function( CreatePackSuccessful value)?  successful,TResult Function( CreatePackFormInvalid value)?  formInvalid,TResult Function( CreatePackError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreatePackInitial() when initial != null:
return initial(_that);case CreatePackLoading() when loading != null:
return loading(_that);case CreatePackSuccessful() when successful != null:
return successful(_that);case CreatePackFormInvalid() when formInvalid != null:
return formInvalid(_that);case CreatePackError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreatePackInitial value)  initial,required TResult Function( CreatePackLoading value)  loading,required TResult Function( CreatePackSuccessful value)  successful,required TResult Function( CreatePackFormInvalid value)  formInvalid,required TResult Function( CreatePackError value)  error,}){
final _that = this;
switch (_that) {
case CreatePackInitial():
return initial(_that);case CreatePackLoading():
return loading(_that);case CreatePackSuccessful():
return successful(_that);case CreatePackFormInvalid():
return formInvalid(_that);case CreatePackError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreatePackInitial value)?  initial,TResult? Function( CreatePackLoading value)?  loading,TResult? Function( CreatePackSuccessful value)?  successful,TResult? Function( CreatePackFormInvalid value)?  formInvalid,TResult? Function( CreatePackError value)?  error,}){
final _that = this;
switch (_that) {
case CreatePackInitial() when initial != null:
return initial(_that);case CreatePackLoading() when loading != null:
return loading(_that);case CreatePackSuccessful() when successful != null:
return successful(_that);case CreatePackFormInvalid() when formInvalid != null:
return formInvalid(_that);case CreatePackError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( SimplePack pack)?  successful,TResult Function( Map<String, String> errors)?  formInvalid,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreatePackInitial() when initial != null:
return initial();case CreatePackLoading() when loading != null:
return loading();case CreatePackSuccessful() when successful != null:
return successful(_that.pack);case CreatePackFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case CreatePackError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( SimplePack pack)  successful,required TResult Function( Map<String, String> errors)  formInvalid,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case CreatePackInitial():
return initial();case CreatePackLoading():
return loading();case CreatePackSuccessful():
return successful(_that.pack);case CreatePackFormInvalid():
return formInvalid(_that.errors);case CreatePackError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( SimplePack pack)?  successful,TResult? Function( Map<String, String> errors)?  formInvalid,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case CreatePackInitial() when initial != null:
return initial();case CreatePackLoading() when loading != null:
return loading();case CreatePackSuccessful() when successful != null:
return successful(_that.pack);case CreatePackFormInvalid() when formInvalid != null:
return formInvalid(_that.errors);case CreatePackError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class CreatePackInitial implements CreatePackState {
  const CreatePackInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePackInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePackState.initial()';
}


}




/// @nodoc


class CreatePackLoading implements CreatePackState {
  const CreatePackLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePackLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePackState.loading()';
}


}




/// @nodoc


class CreatePackSuccessful implements CreatePackState {
  const CreatePackSuccessful({required this.pack});
  

 final  SimplePack pack;

/// Create a copy of CreatePackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePackSuccessfulCopyWith<CreatePackSuccessful> get copyWith => _$CreatePackSuccessfulCopyWithImpl<CreatePackSuccessful>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePackSuccessful&&(identical(other.pack, pack) || other.pack == pack));
}


@override
int get hashCode => Object.hash(runtimeType,pack);

@override
String toString() {
  return 'CreatePackState.successful(pack: $pack)';
}


}

/// @nodoc
abstract mixin class $CreatePackSuccessfulCopyWith<$Res> implements $CreatePackStateCopyWith<$Res> {
  factory $CreatePackSuccessfulCopyWith(CreatePackSuccessful value, $Res Function(CreatePackSuccessful) _then) = _$CreatePackSuccessfulCopyWithImpl;
@useResult
$Res call({
 SimplePack pack
});


$AdminPackCopyWith<$Res> get pack;

}
/// @nodoc
class _$CreatePackSuccessfulCopyWithImpl<$Res>
    implements $CreatePackSuccessfulCopyWith<$Res> {
  _$CreatePackSuccessfulCopyWithImpl(this._self, this._then);

  final CreatePackSuccessful _self;
  final $Res Function(CreatePackSuccessful) _then;

/// Create a copy of CreatePackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pack = null,}) {
  return _then(CreatePackSuccessful(
pack: null == pack ? _self.pack : pack // ignore: cast_nullable_to_non_nullable
as SimplePack,
  ));
}

/// Create a copy of CreatePackState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminPackCopyWith<$Res> get pack {
  
  return $AdminPackCopyWith<$Res>(_self.pack, (value) {
    return _then(_self.copyWith(pack: value));
  });
}
}

/// @nodoc


class CreatePackFormInvalid implements CreatePackState {
  const CreatePackFormInvalid({required final  Map<String, String> errors}): _errors = errors;
  

 final  Map<String, String> _errors;
 Map<String, String> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of CreatePackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePackFormInvalidCopyWith<CreatePackFormInvalid> get copyWith => _$CreatePackFormInvalidCopyWithImpl<CreatePackFormInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePackFormInvalid&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'CreatePackState.formInvalid(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $CreatePackFormInvalidCopyWith<$Res> implements $CreatePackStateCopyWith<$Res> {
  factory $CreatePackFormInvalidCopyWith(CreatePackFormInvalid value, $Res Function(CreatePackFormInvalid) _then) = _$CreatePackFormInvalidCopyWithImpl;
@useResult
$Res call({
 Map<String, String> errors
});




}
/// @nodoc
class _$CreatePackFormInvalidCopyWithImpl<$Res>
    implements $CreatePackFormInvalidCopyWith<$Res> {
  _$CreatePackFormInvalidCopyWithImpl(this._self, this._then);

  final CreatePackFormInvalid _self;
  final $Res Function(CreatePackFormInvalid) _then;

/// Create a copy of CreatePackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(CreatePackFormInvalid(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

/// @nodoc


class CreatePackError implements CreatePackState {
  const CreatePackError({required this.error});
  

 final  Exception error;

/// Create a copy of CreatePackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePackErrorCopyWith<CreatePackError> get copyWith => _$CreatePackErrorCopyWithImpl<CreatePackError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePackError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CreatePackState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $CreatePackErrorCopyWith<$Res> implements $CreatePackStateCopyWith<$Res> {
  factory $CreatePackErrorCopyWith(CreatePackError value, $Res Function(CreatePackError) _then) = _$CreatePackErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$CreatePackErrorCopyWithImpl<$Res>
    implements $CreatePackErrorCopyWith<$Res> {
  _$CreatePackErrorCopyWithImpl(this._self, this._then);

  final CreatePackError _self;
  final $Res Function(CreatePackError) _then;

/// Create a copy of CreatePackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(CreatePackError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
