// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_pack_getter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SinglePackGetterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SinglePackGetterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SinglePackGetterState()';
}


}

/// @nodoc
class $SinglePackGetterStateCopyWith<$Res>  {
$SinglePackGetterStateCopyWith(SinglePackGetterState _, $Res Function(SinglePackGetterState) __);
}


/// Adds pattern-matching-related methods to [SinglePackGetterState].
extension SinglePackGetterStatePatterns on SinglePackGetterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SinglePackGetterInitial value)?  initial,TResult Function( SinglePackGetterLoading value)?  loading,TResult Function( SinglePackGetterLoaded value)?  loaded,TResult Function( SinglePackGetterError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SinglePackGetterInitial() when initial != null:
return initial(_that);case SinglePackGetterLoading() when loading != null:
return loading(_that);case SinglePackGetterLoaded() when loaded != null:
return loaded(_that);case SinglePackGetterError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SinglePackGetterInitial value)  initial,required TResult Function( SinglePackGetterLoading value)  loading,required TResult Function( SinglePackGetterLoaded value)  loaded,required TResult Function( SinglePackGetterError value)  error,}){
final _that = this;
switch (_that) {
case SinglePackGetterInitial():
return initial(_that);case SinglePackGetterLoading():
return loading(_that);case SinglePackGetterLoaded():
return loaded(_that);case SinglePackGetterError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SinglePackGetterInitial value)?  initial,TResult? Function( SinglePackGetterLoading value)?  loading,TResult? Function( SinglePackGetterLoaded value)?  loaded,TResult? Function( SinglePackGetterError value)?  error,}){
final _that = this;
switch (_that) {
case SinglePackGetterInitial() when initial != null:
return initial(_that);case SinglePackGetterLoading() when loading != null:
return loading(_that);case SinglePackGetterLoaded() when loaded != null:
return loaded(_that);case SinglePackGetterError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Pack pack)?  loaded,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SinglePackGetterInitial() when initial != null:
return initial();case SinglePackGetterLoading() when loading != null:
return loading();case SinglePackGetterLoaded() when loaded != null:
return loaded(_that.pack);case SinglePackGetterError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Pack pack)  loaded,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case SinglePackGetterInitial():
return initial();case SinglePackGetterLoading():
return loading();case SinglePackGetterLoaded():
return loaded(_that.pack);case SinglePackGetterError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Pack pack)?  loaded,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case SinglePackGetterInitial() when initial != null:
return initial();case SinglePackGetterLoading() when loading != null:
return loading();case SinglePackGetterLoaded() when loaded != null:
return loaded(_that.pack);case SinglePackGetterError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class SinglePackGetterInitial implements SinglePackGetterState {
  const SinglePackGetterInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SinglePackGetterInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SinglePackGetterState.initial()';
}


}




/// @nodoc


class SinglePackGetterLoading implements SinglePackGetterState {
  const SinglePackGetterLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SinglePackGetterLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SinglePackGetterState.loading()';
}


}




/// @nodoc


class SinglePackGetterLoaded implements SinglePackGetterState {
  const SinglePackGetterLoaded({required this.pack});
  

 final  Pack pack;

/// Create a copy of SinglePackGetterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SinglePackGetterLoadedCopyWith<SinglePackGetterLoaded> get copyWith => _$SinglePackGetterLoadedCopyWithImpl<SinglePackGetterLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SinglePackGetterLoaded&&(identical(other.pack, pack) || other.pack == pack));
}


@override
int get hashCode => Object.hash(runtimeType,pack);

@override
String toString() {
  return 'SinglePackGetterState.loaded(pack: $pack)';
}


}

/// @nodoc
abstract mixin class $SinglePackGetterLoadedCopyWith<$Res> implements $SinglePackGetterStateCopyWith<$Res> {
  factory $SinglePackGetterLoadedCopyWith(SinglePackGetterLoaded value, $Res Function(SinglePackGetterLoaded) _then) = _$SinglePackGetterLoadedCopyWithImpl;
@useResult
$Res call({
 Pack pack
});


$PackCopyWith<$Res> get pack;

}
/// @nodoc
class _$SinglePackGetterLoadedCopyWithImpl<$Res>
    implements $SinglePackGetterLoadedCopyWith<$Res> {
  _$SinglePackGetterLoadedCopyWithImpl(this._self, this._then);

  final SinglePackGetterLoaded _self;
  final $Res Function(SinglePackGetterLoaded) _then;

/// Create a copy of SinglePackGetterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pack = null,}) {
  return _then(SinglePackGetterLoaded(
pack: null == pack ? _self.pack : pack // ignore: cast_nullable_to_non_nullable
as Pack,
  ));
}

/// Create a copy of SinglePackGetterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackCopyWith<$Res> get pack {
  
  return $PackCopyWith<$Res>(_self.pack, (value) {
    return _then(_self.copyWith(pack: value));
  });
}
}

/// @nodoc


class SinglePackGetterError implements SinglePackGetterState {
  const SinglePackGetterError({required this.error});
  

 final  Exception error;

/// Create a copy of SinglePackGetterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SinglePackGetterErrorCopyWith<SinglePackGetterError> get copyWith => _$SinglePackGetterErrorCopyWithImpl<SinglePackGetterError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SinglePackGetterError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SinglePackGetterState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $SinglePackGetterErrorCopyWith<$Res> implements $SinglePackGetterStateCopyWith<$Res> {
  factory $SinglePackGetterErrorCopyWith(SinglePackGetterError value, $Res Function(SinglePackGetterError) _then) = _$SinglePackGetterErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$SinglePackGetterErrorCopyWithImpl<$Res>
    implements $SinglePackGetterErrorCopyWith<$Res> {
  _$SinglePackGetterErrorCopyWithImpl(this._self, this._then);

  final SinglePackGetterError _self;
  final $Res Function(SinglePackGetterError) _then;

/// Create a copy of SinglePackGetterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SinglePackGetterError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
