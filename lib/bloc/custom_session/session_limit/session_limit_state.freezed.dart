// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_limit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionLimitState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionLimitState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionLimitState()';
}


}

/// @nodoc
class $SessionLimitStateCopyWith<$Res>  {
$SessionLimitStateCopyWith(SessionLimitState _, $Res Function(SessionLimitState) __);
}


/// Adds pattern-matching-related methods to [SessionLimitState].
extension SessionLimitStatePatterns on SessionLimitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SessionLimitInitial value)?  initial,TResult Function( SessionLimitLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SessionLimitInitial() when initial != null:
return initial(_that);case SessionLimitLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SessionLimitInitial value)  initial,required TResult Function( SessionLimitLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case SessionLimitInitial():
return initial(_that);case SessionLimitLoaded():
return loaded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SessionLimitInitial value)?  initial,TResult? Function( SessionLimitLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case SessionLimitInitial() when initial != null:
return initial(_that);case SessionLimitLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( SessionLimitStatus status,  bool isEstimatePrecise,  int flashcardsCount,  List<String> selectedPacks,  PackSelectedFilter selectedFilter,  List<Tag> selectedTags,  Map<String, String> formErrors,  Exception? error)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SessionLimitInitial() when initial != null:
return initial();case SessionLimitLoaded() when loaded != null:
return loaded(_that.status,_that.isEstimatePrecise,_that.flashcardsCount,_that.selectedPacks,_that.selectedFilter,_that.selectedTags,_that.formErrors,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( SessionLimitStatus status,  bool isEstimatePrecise,  int flashcardsCount,  List<String> selectedPacks,  PackSelectedFilter selectedFilter,  List<Tag> selectedTags,  Map<String, String> formErrors,  Exception? error)  loaded,}) {final _that = this;
switch (_that) {
case SessionLimitInitial():
return initial();case SessionLimitLoaded():
return loaded(_that.status,_that.isEstimatePrecise,_that.flashcardsCount,_that.selectedPacks,_that.selectedFilter,_that.selectedTags,_that.formErrors,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( SessionLimitStatus status,  bool isEstimatePrecise,  int flashcardsCount,  List<String> selectedPacks,  PackSelectedFilter selectedFilter,  List<Tag> selectedTags,  Map<String, String> formErrors,  Exception? error)?  loaded,}) {final _that = this;
switch (_that) {
case SessionLimitInitial() when initial != null:
return initial();case SessionLimitLoaded() when loaded != null:
return loaded(_that.status,_that.isEstimatePrecise,_that.flashcardsCount,_that.selectedPacks,_that.selectedFilter,_that.selectedTags,_that.formErrors,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class SessionLimitInitial implements SessionLimitState {
  const SessionLimitInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionLimitInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionLimitState.initial()';
}


}




/// @nodoc


class SessionLimitLoaded implements SessionLimitState {
  const SessionLimitLoaded({this.status = SessionLimitStatus.initial, required this.isEstimatePrecise, required this.flashcardsCount, required final  List<String> selectedPacks, required this.selectedFilter, required final  List<Tag> selectedTags, final  Map<String, String> formErrors = const {}, this.error}): _selectedPacks = selectedPacks,_selectedTags = selectedTags,_formErrors = formErrors;
  

@JsonKey() final  SessionLimitStatus status;
 final  bool isEstimatePrecise;
 final  int flashcardsCount;
 final  List<String> _selectedPacks;
 List<String> get selectedPacks {
  if (_selectedPacks is EqualUnmodifiableListView) return _selectedPacks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedPacks);
}

 final  PackSelectedFilter selectedFilter;
 final  List<Tag> _selectedTags;
 List<Tag> get selectedTags {
  if (_selectedTags is EqualUnmodifiableListView) return _selectedTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedTags);
}

 final  Map<String, String> _formErrors;
@JsonKey() Map<String, String> get formErrors {
  if (_formErrors is EqualUnmodifiableMapView) return _formErrors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_formErrors);
}

 final  Exception? error;

/// Create a copy of SessionLimitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionLimitLoadedCopyWith<SessionLimitLoaded> get copyWith => _$SessionLimitLoadedCopyWithImpl<SessionLimitLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionLimitLoaded&&(identical(other.status, status) || other.status == status)&&(identical(other.isEstimatePrecise, isEstimatePrecise) || other.isEstimatePrecise == isEstimatePrecise)&&(identical(other.flashcardsCount, flashcardsCount) || other.flashcardsCount == flashcardsCount)&&const DeepCollectionEquality().equals(other._selectedPacks, _selectedPacks)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter)&&const DeepCollectionEquality().equals(other._selectedTags, _selectedTags)&&const DeepCollectionEquality().equals(other._formErrors, _formErrors)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,isEstimatePrecise,flashcardsCount,const DeepCollectionEquality().hash(_selectedPacks),selectedFilter,const DeepCollectionEquality().hash(_selectedTags),const DeepCollectionEquality().hash(_formErrors),error);

@override
String toString() {
  return 'SessionLimitState.loaded(status: $status, isEstimatePrecise: $isEstimatePrecise, flashcardsCount: $flashcardsCount, selectedPacks: $selectedPacks, selectedFilter: $selectedFilter, selectedTags: $selectedTags, formErrors: $formErrors, error: $error)';
}


}

/// @nodoc
abstract mixin class $SessionLimitLoadedCopyWith<$Res> implements $SessionLimitStateCopyWith<$Res> {
  factory $SessionLimitLoadedCopyWith(SessionLimitLoaded value, $Res Function(SessionLimitLoaded) _then) = _$SessionLimitLoadedCopyWithImpl;
@useResult
$Res call({
 SessionLimitStatus status, bool isEstimatePrecise, int flashcardsCount, List<String> selectedPacks, PackSelectedFilter selectedFilter, List<Tag> selectedTags, Map<String, String> formErrors, Exception? error
});




}
/// @nodoc
class _$SessionLimitLoadedCopyWithImpl<$Res>
    implements $SessionLimitLoadedCopyWith<$Res> {
  _$SessionLimitLoadedCopyWithImpl(this._self, this._then);

  final SessionLimitLoaded _self;
  final $Res Function(SessionLimitLoaded) _then;

/// Create a copy of SessionLimitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,Object? isEstimatePrecise = null,Object? flashcardsCount = null,Object? selectedPacks = null,Object? selectedFilter = null,Object? selectedTags = null,Object? formErrors = null,Object? error = freezed,}) {
  return _then(SessionLimitLoaded(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SessionLimitStatus,isEstimatePrecise: null == isEstimatePrecise ? _self.isEstimatePrecise : isEstimatePrecise // ignore: cast_nullable_to_non_nullable
as bool,flashcardsCount: null == flashcardsCount ? _self.flashcardsCount : flashcardsCount // ignore: cast_nullable_to_non_nullable
as int,selectedPacks: null == selectedPacks ? _self._selectedPacks : selectedPacks // ignore: cast_nullable_to_non_nullable
as List<String>,selectedFilter: null == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as PackSelectedFilter,selectedTags: null == selectedTags ? _self._selectedTags : selectedTags // ignore: cast_nullable_to_non_nullable
as List<Tag>,formErrors: null == formErrors ? _self._formErrors : formErrors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
