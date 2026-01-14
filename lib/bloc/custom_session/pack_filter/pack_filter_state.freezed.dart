// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pack_filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PackFilterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackFilterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PackFilterState()';
}


}

/// @nodoc
class $PackFilterStateCopyWith<$Res>  {
$PackFilterStateCopyWith(PackFilterState _, $Res Function(PackFilterState) __);
}


/// Adds pattern-matching-related methods to [PackFilterState].
extension PackFilterStatePatterns on PackFilterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PackFilterInitial value)?  initial,TResult Function( PackFilterLoading value)?  loading,TResult Function( PackFilterLoaded value)?  loaded,TResult Function( PackFilterError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PackFilterInitial() when initial != null:
return initial(_that);case PackFilterLoading() when loading != null:
return loading(_that);case PackFilterLoaded() when loaded != null:
return loaded(_that);case PackFilterError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PackFilterInitial value)  initial,required TResult Function( PackFilterLoading value)  loading,required TResult Function( PackFilterLoaded value)  loaded,required TResult Function( PackFilterError value)  error,}){
final _that = this;
switch (_that) {
case PackFilterInitial():
return initial(_that);case PackFilterLoading():
return loading(_that);case PackFilterLoaded():
return loaded(_that);case PackFilterError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PackFilterInitial value)?  initial,TResult? Function( PackFilterLoading value)?  loading,TResult? Function( PackFilterLoaded value)?  loaded,TResult? Function( PackFilterError value)?  error,}){
final _that = this;
switch (_that) {
case PackFilterInitial() when initial != null:
return initial(_that);case PackFilterLoading() when loading != null:
return loading(_that);case PackFilterLoaded() when loaded != null:
return loaded(_that);case PackFilterError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( PackFilterCounts packFilterCounts,  PackSelectedFilter selectedFilter)?  loaded,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PackFilterInitial() when initial != null:
return initial();case PackFilterLoading() when loading != null:
return loading();case PackFilterLoaded() when loaded != null:
return loaded(_that.packFilterCounts,_that.selectedFilter);case PackFilterError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( PackFilterCounts packFilterCounts,  PackSelectedFilter selectedFilter)  loaded,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case PackFilterInitial():
return initial();case PackFilterLoading():
return loading();case PackFilterLoaded():
return loaded(_that.packFilterCounts,_that.selectedFilter);case PackFilterError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( PackFilterCounts packFilterCounts,  PackSelectedFilter selectedFilter)?  loaded,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case PackFilterInitial() when initial != null:
return initial();case PackFilterLoading() when loading != null:
return loading();case PackFilterLoaded() when loaded != null:
return loaded(_that.packFilterCounts,_that.selectedFilter);case PackFilterError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class PackFilterInitial implements PackFilterState {
  const PackFilterInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackFilterInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PackFilterState.initial()';
}


}




/// @nodoc


class PackFilterLoading implements PackFilterState {
  const PackFilterLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackFilterLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PackFilterState.loading()';
}


}




/// @nodoc


class PackFilterLoaded implements PackFilterState {
  const PackFilterLoaded({required this.packFilterCounts, this.selectedFilter = PackSelectedFilter.all});
  

 final  PackFilterCounts packFilterCounts;
@JsonKey() final  PackSelectedFilter selectedFilter;

/// Create a copy of PackFilterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackFilterLoadedCopyWith<PackFilterLoaded> get copyWith => _$PackFilterLoadedCopyWithImpl<PackFilterLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackFilterLoaded&&(identical(other.packFilterCounts, packFilterCounts) || other.packFilterCounts == packFilterCounts)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter));
}


@override
int get hashCode => Object.hash(runtimeType,packFilterCounts,selectedFilter);

@override
String toString() {
  return 'PackFilterState.loaded(packFilterCounts: $packFilterCounts, selectedFilter: $selectedFilter)';
}


}

/// @nodoc
abstract mixin class $PackFilterLoadedCopyWith<$Res> implements $PackFilterStateCopyWith<$Res> {
  factory $PackFilterLoadedCopyWith(PackFilterLoaded value, $Res Function(PackFilterLoaded) _then) = _$PackFilterLoadedCopyWithImpl;
@useResult
$Res call({
 PackFilterCounts packFilterCounts, PackSelectedFilter selectedFilter
});


$PackFilterCountsCopyWith<$Res> get packFilterCounts;

}
/// @nodoc
class _$PackFilterLoadedCopyWithImpl<$Res>
    implements $PackFilterLoadedCopyWith<$Res> {
  _$PackFilterLoadedCopyWithImpl(this._self, this._then);

  final PackFilterLoaded _self;
  final $Res Function(PackFilterLoaded) _then;

/// Create a copy of PackFilterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? packFilterCounts = null,Object? selectedFilter = null,}) {
  return _then(PackFilterLoaded(
packFilterCounts: null == packFilterCounts ? _self.packFilterCounts : packFilterCounts // ignore: cast_nullable_to_non_nullable
as PackFilterCounts,selectedFilter: null == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as PackSelectedFilter,
  ));
}

/// Create a copy of PackFilterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackFilterCountsCopyWith<$Res> get packFilterCounts {
  
  return $PackFilterCountsCopyWith<$Res>(_self.packFilterCounts, (value) {
    return _then(_self.copyWith(packFilterCounts: value));
  });
}
}

/// @nodoc


class PackFilterError implements PackFilterState {
  const PackFilterError({required this.error});
  

 final  Exception error;

/// Create a copy of PackFilterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackFilterErrorCopyWith<PackFilterError> get copyWith => _$PackFilterErrorCopyWithImpl<PackFilterError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackFilterError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'PackFilterState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $PackFilterErrorCopyWith<$Res> implements $PackFilterStateCopyWith<$Res> {
  factory $PackFilterErrorCopyWith(PackFilterError value, $Res Function(PackFilterError) _then) = _$PackFilterErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$PackFilterErrorCopyWithImpl<$Res>
    implements $PackFilterErrorCopyWith<$Res> {
  _$PackFilterErrorCopyWithImpl(this._self, this._then);

  final PackFilterError _self;
  final $Res Function(PackFilterError) _then;

/// Create a copy of PackFilterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(PackFilterError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
