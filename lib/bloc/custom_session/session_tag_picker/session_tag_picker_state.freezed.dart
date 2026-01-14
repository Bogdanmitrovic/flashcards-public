// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_tag_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionTagPickerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionTagPickerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionTagPickerState()';
}


}

/// @nodoc
class $SessionTagPickerStateCopyWith<$Res>  {
$SessionTagPickerStateCopyWith(SessionTagPickerState _, $Res Function(SessionTagPickerState) __);
}


/// Adds pattern-matching-related methods to [SessionTagPickerState].
extension SessionTagPickerStatePatterns on SessionTagPickerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SessionTagPickerInitial value)?  initial,TResult Function( SessionTagPickerLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SessionTagPickerInitial() when initial != null:
return initial(_that);case SessionTagPickerLoaded() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SessionTagPickerInitial value)  initial,required TResult Function( SessionTagPickerLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case SessionTagPickerInitial():
return initial(_that);case SessionTagPickerLoaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SessionTagPickerInitial value)?  initial,TResult? Function( SessionTagPickerLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case SessionTagPickerInitial() when initial != null:
return initial(_that);case SessionTagPickerLoaded() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( bool? firstOptionChecked,  Map<Tag, int> allTagCounts,  Map<String, bool> selectedTags)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SessionTagPickerInitial() when initial != null:
return initial();case SessionTagPickerLoaded() when loaded != null:
return loaded(_that.firstOptionChecked,_that.allTagCounts,_that.selectedTags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( bool? firstOptionChecked,  Map<Tag, int> allTagCounts,  Map<String, bool> selectedTags)  loaded,}) {final _that = this;
switch (_that) {
case SessionTagPickerInitial():
return initial();case SessionTagPickerLoaded():
return loaded(_that.firstOptionChecked,_that.allTagCounts,_that.selectedTags);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( bool? firstOptionChecked,  Map<Tag, int> allTagCounts,  Map<String, bool> selectedTags)?  loaded,}) {final _that = this;
switch (_that) {
case SessionTagPickerInitial() when initial != null:
return initial();case SessionTagPickerLoaded() when loaded != null:
return loaded(_that.firstOptionChecked,_that.allTagCounts,_that.selectedTags);case _:
  return null;

}
}

}

/// @nodoc


class SessionTagPickerInitial implements SessionTagPickerState {
  const SessionTagPickerInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionTagPickerInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionTagPickerState.initial()';
}


}




/// @nodoc


class SessionTagPickerLoaded implements SessionTagPickerState {
  const SessionTagPickerLoaded({required this.firstOptionChecked, required final  Map<Tag, int> allTagCounts, required final  Map<String, bool> selectedTags}): _allTagCounts = allTagCounts,_selectedTags = selectedTags;
  

 final  bool? firstOptionChecked;
 final  Map<Tag, int> _allTagCounts;
 Map<Tag, int> get allTagCounts {
  if (_allTagCounts is EqualUnmodifiableMapView) return _allTagCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_allTagCounts);
}

 final  Map<String, bool> _selectedTags;
 Map<String, bool> get selectedTags {
  if (_selectedTags is EqualUnmodifiableMapView) return _selectedTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selectedTags);
}


/// Create a copy of SessionTagPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionTagPickerLoadedCopyWith<SessionTagPickerLoaded> get copyWith => _$SessionTagPickerLoadedCopyWithImpl<SessionTagPickerLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionTagPickerLoaded&&(identical(other.firstOptionChecked, firstOptionChecked) || other.firstOptionChecked == firstOptionChecked)&&const DeepCollectionEquality().equals(other._allTagCounts, _allTagCounts)&&const DeepCollectionEquality().equals(other._selectedTags, _selectedTags));
}


@override
int get hashCode => Object.hash(runtimeType,firstOptionChecked,const DeepCollectionEquality().hash(_allTagCounts),const DeepCollectionEquality().hash(_selectedTags));

@override
String toString() {
  return 'SessionTagPickerState.loaded(firstOptionChecked: $firstOptionChecked, allTagCounts: $allTagCounts, selectedTags: $selectedTags)';
}


}

/// @nodoc
abstract mixin class $SessionTagPickerLoadedCopyWith<$Res> implements $SessionTagPickerStateCopyWith<$Res> {
  factory $SessionTagPickerLoadedCopyWith(SessionTagPickerLoaded value, $Res Function(SessionTagPickerLoaded) _then) = _$SessionTagPickerLoadedCopyWithImpl;
@useResult
$Res call({
 bool? firstOptionChecked, Map<Tag, int> allTagCounts, Map<String, bool> selectedTags
});




}
/// @nodoc
class _$SessionTagPickerLoadedCopyWithImpl<$Res>
    implements $SessionTagPickerLoadedCopyWith<$Res> {
  _$SessionTagPickerLoadedCopyWithImpl(this._self, this._then);

  final SessionTagPickerLoaded _self;
  final $Res Function(SessionTagPickerLoaded) _then;

/// Create a copy of SessionTagPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? firstOptionChecked = freezed,Object? allTagCounts = null,Object? selectedTags = null,}) {
  return _then(SessionTagPickerLoaded(
firstOptionChecked: freezed == firstOptionChecked ? _self.firstOptionChecked : firstOptionChecked // ignore: cast_nullable_to_non_nullable
as bool?,allTagCounts: null == allTagCounts ? _self._allTagCounts : allTagCounts // ignore: cast_nullable_to_non_nullable
as Map<Tag, int>,selectedTags: null == selectedTags ? _self._selectedTags : selectedTags // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,
  ));
}


}

// dart format on
