// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportState()';
}


}

/// @nodoc
class $ReportStateCopyWith<$Res>  {
$ReportStateCopyWith(ReportState _, $Res Function(ReportState) __);
}


/// Adds pattern-matching-related methods to [ReportState].
extension ReportStatePatterns on ReportState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ReportInitial value)?  initial,TResult Function( ReportLoading value)?  loading,TResult Function( ReportSuccess value)?  success,TResult Function( ReportError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ReportInitial() when initial != null:
return initial(_that);case ReportLoading() when loading != null:
return loading(_that);case ReportSuccess() when success != null:
return success(_that);case ReportError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ReportInitial value)  initial,required TResult Function( ReportLoading value)  loading,required TResult Function( ReportSuccess value)  success,required TResult Function( ReportError value)  error,}){
final _that = this;
switch (_that) {
case ReportInitial():
return initial(_that);case ReportLoading():
return loading(_that);case ReportSuccess():
return success(_that);case ReportError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ReportInitial value)?  initial,TResult? Function( ReportLoading value)?  loading,TResult? Function( ReportSuccess value)?  success,TResult? Function( ReportError value)?  error,}){
final _that = this;
switch (_that) {
case ReportInitial() when initial != null:
return initial(_that);case ReportLoading() when loading != null:
return loading(_that);case ReportSuccess() when success != null:
return success(_that);case ReportError() when error != null:
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
case ReportInitial() when initial != null:
return initial();case ReportLoading() when loading != null:
return loading();case ReportSuccess() when success != null:
return success();case ReportError() when error != null:
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
case ReportInitial():
return initial();case ReportLoading():
return loading();case ReportSuccess():
return success();case ReportError():
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
case ReportInitial() when initial != null:
return initial();case ReportLoading() when loading != null:
return loading();case ReportSuccess() when success != null:
return success();case ReportError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class ReportInitial implements ReportState {
  const ReportInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportState.initial()';
}


}




/// @nodoc


class ReportLoading implements ReportState {
  const ReportLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportState.loading()';
}


}




/// @nodoc


class ReportSuccess implements ReportState {
  const ReportSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportState.success()';
}


}




/// @nodoc


class ReportError implements ReportState {
  const ReportError({required this.error});
  

 final  Exception error;

/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportErrorCopyWith<ReportError> get copyWith => _$ReportErrorCopyWithImpl<ReportError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ReportState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ReportErrorCopyWith<$Res> implements $ReportStateCopyWith<$Res> {
  factory $ReportErrorCopyWith(ReportError value, $Res Function(ReportError) _then) = _$ReportErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$ReportErrorCopyWithImpl<$Res>
    implements $ReportErrorCopyWith<$Res> {
  _$ReportErrorCopyWithImpl(this._self, this._then);

  final ReportError _self;
  final $Res Function(ReportError) _then;

/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ReportError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
