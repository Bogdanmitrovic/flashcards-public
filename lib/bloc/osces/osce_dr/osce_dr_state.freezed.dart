// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'osce_dr_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OsceDrState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OsceDrState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OsceDrState()';
}


}

/// @nodoc
class $OsceDrStateCopyWith<$Res>  {
$OsceDrStateCopyWith(OsceDrState _, $Res Function(OsceDrState) __);
}


/// Adds pattern-matching-related methods to [OsceDrState].
extension OsceDrStatePatterns on OsceDrState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OsceDrInitial value)?  initial,TResult Function( OsceDrLoading value)?  loading,TResult Function( OsceDrSuccess value)?  success,TResult Function( OsceDrError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OsceDrInitial() when initial != null:
return initial(_that);case OsceDrLoading() when loading != null:
return loading(_that);case OsceDrSuccess() when success != null:
return success(_that);case OsceDrError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OsceDrInitial value)  initial,required TResult Function( OsceDrLoading value)  loading,required TResult Function( OsceDrSuccess value)  success,required TResult Function( OsceDrError value)  error,}){
final _that = this;
switch (_that) {
case OsceDrInitial():
return initial(_that);case OsceDrLoading():
return loading(_that);case OsceDrSuccess():
return success(_that);case OsceDrError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OsceDrInitial value)?  initial,TResult? Function( OsceDrLoading value)?  loading,TResult? Function( OsceDrSuccess value)?  success,TResult? Function( OsceDrError value)?  error,}){
final _that = this;
switch (_that) {
case OsceDrInitial() when initial != null:
return initial(_that);case OsceDrLoading() when loading != null:
return loading(_that);case OsceDrSuccess() when success != null:
return success(_that);case OsceDrError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OsceDrInitial() when initial != null:
return initial();case OsceDrLoading() when loading != null:
return loading();case OsceDrSuccess() when success != null:
return success();case OsceDrError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case OsceDrInitial():
return initial();case OsceDrLoading():
return loading();case OsceDrSuccess():
return success();case OsceDrError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case OsceDrInitial() when initial != null:
return initial();case OsceDrLoading() when loading != null:
return loading();case OsceDrSuccess() when success != null:
return success();case OsceDrError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class OsceDrInitial implements OsceDrState {
  const OsceDrInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OsceDrInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OsceDrState.initial()';
}


}




/// @nodoc


class OsceDrLoading implements OsceDrState {
  const OsceDrLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OsceDrLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OsceDrState.loading()';
}


}




/// @nodoc


class OsceDrSuccess implements OsceDrState {
  const OsceDrSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OsceDrSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OsceDrState.success()';
}


}




/// @nodoc


class OsceDrError implements OsceDrState {
  const OsceDrError({required this.error});
  

 final  Exception error;

/// Create a copy of OsceDrState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OsceDrErrorCopyWith<OsceDrError> get copyWith => _$OsceDrErrorCopyWithImpl<OsceDrError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OsceDrError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'OsceDrState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $OsceDrErrorCopyWith<$Res> implements $OsceDrStateCopyWith<$Res> {
  factory $OsceDrErrorCopyWith(OsceDrError value, $Res Function(OsceDrError) _then) = _$OsceDrErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$OsceDrErrorCopyWithImpl<$Res>
    implements $OsceDrErrorCopyWith<$Res> {
  _$OsceDrErrorCopyWithImpl(this._self, this._then);

  final OsceDrError _self;
  final $Res Function(OsceDrError) _then;

/// Create a copy of OsceDrState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(OsceDrError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
