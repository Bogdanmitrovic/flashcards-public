// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_flashcard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateFlashcardState {

 Flashcard get initialFlashcard; UpdateFlashcardStatus get status; List<Tag> get selectedTags; List<Tag>? get allAvailableTags; Map<String, String> get formErrors; ImageDataWrapper get answerImageData; ImageDataWrapper get questionImageData; Exception? get error;
/// Create a copy of UpdateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFlashcardStateCopyWith<UpdateFlashcardState> get copyWith => _$UpdateFlashcardStateCopyWithImpl<UpdateFlashcardState>(this as UpdateFlashcardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFlashcardState&&(identical(other.initialFlashcard, initialFlashcard) || other.initialFlashcard == initialFlashcard)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.selectedTags, selectedTags)&&const DeepCollectionEquality().equals(other.allAvailableTags, allAvailableTags)&&const DeepCollectionEquality().equals(other.formErrors, formErrors)&&(identical(other.answerImageData, answerImageData) || other.answerImageData == answerImageData)&&(identical(other.questionImageData, questionImageData) || other.questionImageData == questionImageData)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,initialFlashcard,status,const DeepCollectionEquality().hash(selectedTags),const DeepCollectionEquality().hash(allAvailableTags),const DeepCollectionEquality().hash(formErrors),answerImageData,questionImageData,error);

@override
String toString() {
  return 'UpdateFlashcardState(initialFlashcard: $initialFlashcard, status: $status, selectedTags: $selectedTags, allAvailableTags: $allAvailableTags, formErrors: $formErrors, answerImageData: $answerImageData, questionImageData: $questionImageData, error: $error)';
}


}

/// @nodoc
abstract mixin class $UpdateFlashcardStateCopyWith<$Res>  {
  factory $UpdateFlashcardStateCopyWith(UpdateFlashcardState value, $Res Function(UpdateFlashcardState) _then) = _$UpdateFlashcardStateCopyWithImpl;
@useResult
$Res call({
 Flashcard initialFlashcard, UpdateFlashcardStatus status, List<Tag> selectedTags, List<Tag>? allAvailableTags, Map<String, String> formErrors, ImageDataWrapper answerImageData, ImageDataWrapper questionImageData, Exception? error
});


$FlashcardCopyWith<$Res> get initialFlashcard;$ImageDataWrapperCopyWith<$Res> get answerImageData;$ImageDataWrapperCopyWith<$Res> get questionImageData;

}
/// @nodoc
class _$UpdateFlashcardStateCopyWithImpl<$Res>
    implements $UpdateFlashcardStateCopyWith<$Res> {
  _$UpdateFlashcardStateCopyWithImpl(this._self, this._then);

  final UpdateFlashcardState _self;
  final $Res Function(UpdateFlashcardState) _then;

/// Create a copy of UpdateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initialFlashcard = null,Object? status = null,Object? selectedTags = null,Object? allAvailableTags = freezed,Object? formErrors = null,Object? answerImageData = null,Object? questionImageData = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
initialFlashcard: null == initialFlashcard ? _self.initialFlashcard : initialFlashcard // ignore: cast_nullable_to_non_nullable
as Flashcard,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UpdateFlashcardStatus,selectedTags: null == selectedTags ? _self.selectedTags : selectedTags // ignore: cast_nullable_to_non_nullable
as List<Tag>,allAvailableTags: freezed == allAvailableTags ? _self.allAvailableTags : allAvailableTags // ignore: cast_nullable_to_non_nullable
as List<Tag>?,formErrors: null == formErrors ? _self.formErrors : formErrors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,answerImageData: null == answerImageData ? _self.answerImageData : answerImageData // ignore: cast_nullable_to_non_nullable
as ImageDataWrapper,questionImageData: null == questionImageData ? _self.questionImageData : questionImageData // ignore: cast_nullable_to_non_nullable
as ImageDataWrapper,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}
/// Create a copy of UpdateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlashcardCopyWith<$Res> get initialFlashcard {
  
  return $FlashcardCopyWith<$Res>(_self.initialFlashcard, (value) {
    return _then(_self.copyWith(initialFlashcard: value));
  });
}/// Create a copy of UpdateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageDataWrapperCopyWith<$Res> get answerImageData {
  
  return $ImageDataWrapperCopyWith<$Res>(_self.answerImageData, (value) {
    return _then(_self.copyWith(answerImageData: value));
  });
}/// Create a copy of UpdateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageDataWrapperCopyWith<$Res> get questionImageData {
  
  return $ImageDataWrapperCopyWith<$Res>(_self.questionImageData, (value) {
    return _then(_self.copyWith(questionImageData: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateFlashcardState].
extension UpdateFlashcardStatePatterns on UpdateFlashcardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFlashcardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFlashcardState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFlashcardState value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFlashcardState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFlashcardState value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFlashcardState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Flashcard initialFlashcard,  UpdateFlashcardStatus status,  List<Tag> selectedTags,  List<Tag>? allAvailableTags,  Map<String, String> formErrors,  ImageDataWrapper answerImageData,  ImageDataWrapper questionImageData,  Exception? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFlashcardState() when $default != null:
return $default(_that.initialFlashcard,_that.status,_that.selectedTags,_that.allAvailableTags,_that.formErrors,_that.answerImageData,_that.questionImageData,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Flashcard initialFlashcard,  UpdateFlashcardStatus status,  List<Tag> selectedTags,  List<Tag>? allAvailableTags,  Map<String, String> formErrors,  ImageDataWrapper answerImageData,  ImageDataWrapper questionImageData,  Exception? error)  $default,) {final _that = this;
switch (_that) {
case _UpdateFlashcardState():
return $default(_that.initialFlashcard,_that.status,_that.selectedTags,_that.allAvailableTags,_that.formErrors,_that.answerImageData,_that.questionImageData,_that.error);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Flashcard initialFlashcard,  UpdateFlashcardStatus status,  List<Tag> selectedTags,  List<Tag>? allAvailableTags,  Map<String, String> formErrors,  ImageDataWrapper answerImageData,  ImageDataWrapper questionImageData,  Exception? error)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFlashcardState() when $default != null:
return $default(_that.initialFlashcard,_that.status,_that.selectedTags,_that.allAvailableTags,_that.formErrors,_that.answerImageData,_that.questionImageData,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateFlashcardState implements UpdateFlashcardState {
  const _UpdateFlashcardState({required this.initialFlashcard, this.status = UpdateFlashcardStatus.initial, final  List<Tag> selectedTags = const [], final  List<Tag>? allAvailableTags, final  Map<String, String> formErrors = const {}, required this.answerImageData, required this.questionImageData, this.error}): _selectedTags = selectedTags,_allAvailableTags = allAvailableTags,_formErrors = formErrors;
  

@override final  Flashcard initialFlashcard;
@override@JsonKey() final  UpdateFlashcardStatus status;
 final  List<Tag> _selectedTags;
@override@JsonKey() List<Tag> get selectedTags {
  if (_selectedTags is EqualUnmodifiableListView) return _selectedTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedTags);
}

 final  List<Tag>? _allAvailableTags;
@override List<Tag>? get allAvailableTags {
  final value = _allAvailableTags;
  if (value == null) return null;
  if (_allAvailableTags is EqualUnmodifiableListView) return _allAvailableTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, String> _formErrors;
@override@JsonKey() Map<String, String> get formErrors {
  if (_formErrors is EqualUnmodifiableMapView) return _formErrors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_formErrors);
}

@override final  ImageDataWrapper answerImageData;
@override final  ImageDataWrapper questionImageData;
@override final  Exception? error;

/// Create a copy of UpdateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFlashcardStateCopyWith<_UpdateFlashcardState> get copyWith => __$UpdateFlashcardStateCopyWithImpl<_UpdateFlashcardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFlashcardState&&(identical(other.initialFlashcard, initialFlashcard) || other.initialFlashcard == initialFlashcard)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._selectedTags, _selectedTags)&&const DeepCollectionEquality().equals(other._allAvailableTags, _allAvailableTags)&&const DeepCollectionEquality().equals(other._formErrors, _formErrors)&&(identical(other.answerImageData, answerImageData) || other.answerImageData == answerImageData)&&(identical(other.questionImageData, questionImageData) || other.questionImageData == questionImageData)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,initialFlashcard,status,const DeepCollectionEquality().hash(_selectedTags),const DeepCollectionEquality().hash(_allAvailableTags),const DeepCollectionEquality().hash(_formErrors),answerImageData,questionImageData,error);

@override
String toString() {
  return 'UpdateFlashcardState(initialFlashcard: $initialFlashcard, status: $status, selectedTags: $selectedTags, allAvailableTags: $allAvailableTags, formErrors: $formErrors, answerImageData: $answerImageData, questionImageData: $questionImageData, error: $error)';
}


}

/// @nodoc
abstract mixin class _$UpdateFlashcardStateCopyWith<$Res> implements $UpdateFlashcardStateCopyWith<$Res> {
  factory _$UpdateFlashcardStateCopyWith(_UpdateFlashcardState value, $Res Function(_UpdateFlashcardState) _then) = __$UpdateFlashcardStateCopyWithImpl;
@override @useResult
$Res call({
 Flashcard initialFlashcard, UpdateFlashcardStatus status, List<Tag> selectedTags, List<Tag>? allAvailableTags, Map<String, String> formErrors, ImageDataWrapper answerImageData, ImageDataWrapper questionImageData, Exception? error
});


@override $FlashcardCopyWith<$Res> get initialFlashcard;@override $ImageDataWrapperCopyWith<$Res> get answerImageData;@override $ImageDataWrapperCopyWith<$Res> get questionImageData;

}
/// @nodoc
class __$UpdateFlashcardStateCopyWithImpl<$Res>
    implements _$UpdateFlashcardStateCopyWith<$Res> {
  __$UpdateFlashcardStateCopyWithImpl(this._self, this._then);

  final _UpdateFlashcardState _self;
  final $Res Function(_UpdateFlashcardState) _then;

/// Create a copy of UpdateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initialFlashcard = null,Object? status = null,Object? selectedTags = null,Object? allAvailableTags = freezed,Object? formErrors = null,Object? answerImageData = null,Object? questionImageData = null,Object? error = freezed,}) {
  return _then(_UpdateFlashcardState(
initialFlashcard: null == initialFlashcard ? _self.initialFlashcard : initialFlashcard // ignore: cast_nullable_to_non_nullable
as Flashcard,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UpdateFlashcardStatus,selectedTags: null == selectedTags ? _self._selectedTags : selectedTags // ignore: cast_nullable_to_non_nullable
as List<Tag>,allAvailableTags: freezed == allAvailableTags ? _self._allAvailableTags : allAvailableTags // ignore: cast_nullable_to_non_nullable
as List<Tag>?,formErrors: null == formErrors ? _self._formErrors : formErrors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,answerImageData: null == answerImageData ? _self.answerImageData : answerImageData // ignore: cast_nullable_to_non_nullable
as ImageDataWrapper,questionImageData: null == questionImageData ? _self.questionImageData : questionImageData // ignore: cast_nullable_to_non_nullable
as ImageDataWrapper,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}

/// Create a copy of UpdateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlashcardCopyWith<$Res> get initialFlashcard {
  
  return $FlashcardCopyWith<$Res>(_self.initialFlashcard, (value) {
    return _then(_self.copyWith(initialFlashcard: value));
  });
}/// Create a copy of UpdateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageDataWrapperCopyWith<$Res> get answerImageData {
  
  return $ImageDataWrapperCopyWith<$Res>(_self.answerImageData, (value) {
    return _then(_self.copyWith(answerImageData: value));
  });
}/// Create a copy of UpdateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageDataWrapperCopyWith<$Res> get questionImageData {
  
  return $ImageDataWrapperCopyWith<$Res>(_self.questionImageData, (value) {
    return _then(_self.copyWith(questionImageData: value));
  });
}
}

// dart format on
