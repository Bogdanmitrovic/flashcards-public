// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_pack_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeletePackState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletePackState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeletePackState()';
}


}

/// @nodoc
class $DeletePackStateCopyWith<$Res>  {
$DeletePackStateCopyWith(DeletePackState _, $Res Function(DeletePackState) __);
}


/// Adds pattern-matching-related methods to [DeletePackState].
extension DeletePackStatePatterns on DeletePackState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DeletePackInitial value)?  initial,TResult Function( DeletePackLoading value)?  loading,TResult Function( DeletePackSuccessful value)?  successful,TResult Function( DeletePackError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DeletePackInitial() when initial != null:
return initial(_that);case DeletePackLoading() when loading != null:
return loading(_that);case DeletePackSuccessful() when successful != null:
return successful(_that);case DeletePackError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DeletePackInitial value)  initial,required TResult Function( DeletePackLoading value)  loading,required TResult Function( DeletePackSuccessful value)  successful,required TResult Function( DeletePackError value)  error,}){
final _that = this;
switch (_that) {
case DeletePackInitial():
return initial(_that);case DeletePackLoading():
return loading(_that);case DeletePackSuccessful():
return successful(_that);case DeletePackError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DeletePackInitial value)?  initial,TResult? Function( DeletePackLoading value)?  loading,TResult? Function( DeletePackSuccessful value)?  successful,TResult? Function( DeletePackError value)?  error,}){
final _that = this;
switch (_that) {
case DeletePackInitial() when initial != null:
return initial(_that);case DeletePackLoading() when loading != null:
return loading(_that);case DeletePackSuccessful() when successful != null:
return successful(_that);case DeletePackError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  successful,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DeletePackInitial() when initial != null:
return initial();case DeletePackLoading() when loading != null:
return loading();case DeletePackSuccessful() when successful != null:
return successful();case DeletePackError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  successful,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case DeletePackInitial():
return initial();case DeletePackLoading():
return loading();case DeletePackSuccessful():
return successful();case DeletePackError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  successful,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case DeletePackInitial() when initial != null:
return initial();case DeletePackLoading() when loading != null:
return loading();case DeletePackSuccessful() when successful != null:
return successful();case DeletePackError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class DeletePackInitial implements DeletePackState {
  const DeletePackInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletePackInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeletePackState.initial()';
}


}




/// @nodoc


class DeletePackLoading implements DeletePackState {
  const DeletePackLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletePackLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeletePackState.loading()';
}


}




/// @nodoc


class DeletePackSuccessful implements DeletePackState {
  const DeletePackSuccessful();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletePackSuccessful);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeletePackState.successful()';
}


}




/// @nodoc


class DeletePackError implements DeletePackState {
  const DeletePackError({required this.error});
  

 final  Exception error;

/// Create a copy of DeletePackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletePackErrorCopyWith<DeletePackError> get copyWith => _$DeletePackErrorCopyWithImpl<DeletePackError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletePackError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'DeletePackState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $DeletePackErrorCopyWith<$Res> implements $DeletePackStateCopyWith<$Res> {
  factory $DeletePackErrorCopyWith(DeletePackError value, $Res Function(DeletePackError) _then) = _$DeletePackErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$DeletePackErrorCopyWithImpl<$Res>
    implements $DeletePackErrorCopyWith<$Res> {
  _$DeletePackErrorCopyWithImpl(this._self, this._then);

  final DeletePackError _self;
  final $Res Function(DeletePackError) _then;

/// Create a copy of DeletePackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(DeletePackError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
