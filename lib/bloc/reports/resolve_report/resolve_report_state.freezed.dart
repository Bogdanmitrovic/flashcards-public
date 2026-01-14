// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resolve_report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResolveReportState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResolveReportState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResolveReportState()';
}


}

/// @nodoc
class $ResolveReportStateCopyWith<$Res>  {
$ResolveReportStateCopyWith(ResolveReportState _, $Res Function(ResolveReportState) __);
}


/// Adds pattern-matching-related methods to [ResolveReportState].
extension ResolveReportStatePatterns on ResolveReportState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ResolveReportInitial value)?  initial,TResult Function( ResolveReportLoading value)?  loading,TResult Function( ResolveReportError value)?  error,TResult Function( ResolveReportSuccess value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ResolveReportInitial() when initial != null:
return initial(_that);case ResolveReportLoading() when loading != null:
return loading(_that);case ResolveReportError() when error != null:
return error(_that);case ResolveReportSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ResolveReportInitial value)  initial,required TResult Function( ResolveReportLoading value)  loading,required TResult Function( ResolveReportError value)  error,required TResult Function( ResolveReportSuccess value)  success,}){
final _that = this;
switch (_that) {
case ResolveReportInitial():
return initial(_that);case ResolveReportLoading():
return loading(_that);case ResolveReportError():
return error(_that);case ResolveReportSuccess():
return success(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ResolveReportInitial value)?  initial,TResult? Function( ResolveReportLoading value)?  loading,TResult? Function( ResolveReportError value)?  error,TResult? Function( ResolveReportSuccess value)?  success,}){
final _that = this;
switch (_that) {
case ResolveReportInitial() when initial != null:
return initial(_that);case ResolveReportLoading() when loading != null:
return loading(_that);case ResolveReportError() when error != null:
return error(_that);case ResolveReportSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Exception error)?  error,TResult Function()?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ResolveReportInitial() when initial != null:
return initial();case ResolveReportLoading() when loading != null:
return loading();case ResolveReportError() when error != null:
return error(_that.error);case ResolveReportSuccess() when success != null:
return success();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Exception error)  error,required TResult Function()  success,}) {final _that = this;
switch (_that) {
case ResolveReportInitial():
return initial();case ResolveReportLoading():
return loading();case ResolveReportError():
return error(_that.error);case ResolveReportSuccess():
return success();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Exception error)?  error,TResult? Function()?  success,}) {final _that = this;
switch (_that) {
case ResolveReportInitial() when initial != null:
return initial();case ResolveReportLoading() when loading != null:
return loading();case ResolveReportError() when error != null:
return error(_that.error);case ResolveReportSuccess() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class ResolveReportInitial implements ResolveReportState {
  const ResolveReportInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResolveReportInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResolveReportState.initial()';
}


}




/// @nodoc


class ResolveReportLoading implements ResolveReportState {
  const ResolveReportLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResolveReportLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResolveReportState.loading()';
}


}




/// @nodoc


class ResolveReportError implements ResolveReportState {
  const ResolveReportError({required this.error});
  

 final  Exception error;

/// Create a copy of ResolveReportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResolveReportErrorCopyWith<ResolveReportError> get copyWith => _$ResolveReportErrorCopyWithImpl<ResolveReportError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResolveReportError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ResolveReportState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ResolveReportErrorCopyWith<$Res> implements $ResolveReportStateCopyWith<$Res> {
  factory $ResolveReportErrorCopyWith(ResolveReportError value, $Res Function(ResolveReportError) _then) = _$ResolveReportErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$ResolveReportErrorCopyWithImpl<$Res>
    implements $ResolveReportErrorCopyWith<$Res> {
  _$ResolveReportErrorCopyWithImpl(this._self, this._then);

  final ResolveReportError _self;
  final $Res Function(ResolveReportError) _then;

/// Create a copy of ResolveReportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ResolveReportError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

/// @nodoc


class ResolveReportSuccess implements ResolveReportState {
  const ResolveReportSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResolveReportSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResolveReportState.success()';
}


}




// dart format on
