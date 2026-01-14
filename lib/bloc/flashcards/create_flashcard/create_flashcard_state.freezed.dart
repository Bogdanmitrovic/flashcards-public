// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_flashcard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateFlashcardState {

 CreateFlashcardStatus get status; Map<String, String> get formErrors; List<Tag>? get allAvailableTags; List<Tag> get selectedTags; ImageDataWrapper get questionImageData; ImageDataWrapper get answerImageData; bool get shouldExit; Exception? get error;
/// Create a copy of CreateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFlashcardStateCopyWith<CreateFlashcardState> get copyWith => _$CreateFlashcardStateCopyWithImpl<CreateFlashcardState>(this as CreateFlashcardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFlashcardState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.formErrors, formErrors)&&const DeepCollectionEquality().equals(other.allAvailableTags, allAvailableTags)&&const DeepCollectionEquality().equals(other.selectedTags, selectedTags)&&(identical(other.questionImageData, questionImageData) || other.questionImageData == questionImageData)&&(identical(other.answerImageData, answerImageData) || other.answerImageData == answerImageData)&&(identical(other.shouldExit, shouldExit) || other.shouldExit == shouldExit)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(formErrors),const DeepCollectionEquality().hash(allAvailableTags),const DeepCollectionEquality().hash(selectedTags),questionImageData,answerImageData,shouldExit,error);

@override
String toString() {
  return 'CreateFlashcardState(status: $status, formErrors: $formErrors, allAvailableTags: $allAvailableTags, selectedTags: $selectedTags, questionImageData: $questionImageData, answerImageData: $answerImageData, shouldExit: $shouldExit, error: $error)';
}


}

/// @nodoc
abstract mixin class $CreateFlashcardStateCopyWith<$Res>  {
  factory $CreateFlashcardStateCopyWith(CreateFlashcardState value, $Res Function(CreateFlashcardState) _then) = _$CreateFlashcardStateCopyWithImpl;
@useResult
$Res call({
 CreateFlashcardStatus status, Map<String, String> formErrors, List<Tag>? allAvailableTags, List<Tag> selectedTags, ImageDataWrapper questionImageData, ImageDataWrapper answerImageData, bool shouldExit, Exception? error
});


$ImageDataWrapperCopyWith<$Res> get questionImageData;$ImageDataWrapperCopyWith<$Res> get answerImageData;

}
/// @nodoc
class _$CreateFlashcardStateCopyWithImpl<$Res>
    implements $CreateFlashcardStateCopyWith<$Res> {
  _$CreateFlashcardStateCopyWithImpl(this._self, this._then);

  final CreateFlashcardState _self;
  final $Res Function(CreateFlashcardState) _then;

/// Create a copy of CreateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? formErrors = null,Object? allAvailableTags = freezed,Object? selectedTags = null,Object? questionImageData = null,Object? answerImageData = null,Object? shouldExit = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateFlashcardStatus,formErrors: null == formErrors ? _self.formErrors : formErrors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,allAvailableTags: freezed == allAvailableTags ? _self.allAvailableTags : allAvailableTags // ignore: cast_nullable_to_non_nullable
as List<Tag>?,selectedTags: null == selectedTags ? _self.selectedTags : selectedTags // ignore: cast_nullable_to_non_nullable
as List<Tag>,questionImageData: null == questionImageData ? _self.questionImageData : questionImageData // ignore: cast_nullable_to_non_nullable
as ImageDataWrapper,answerImageData: null == answerImageData ? _self.answerImageData : answerImageData // ignore: cast_nullable_to_non_nullable
as ImageDataWrapper,shouldExit: null == shouldExit ? _self.shouldExit : shouldExit // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}
/// Create a copy of CreateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageDataWrapperCopyWith<$Res> get questionImageData {
  
  return $ImageDataWrapperCopyWith<$Res>(_self.questionImageData, (value) {
    return _then(_self.copyWith(questionImageData: value));
  });
}/// Create a copy of CreateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageDataWrapperCopyWith<$Res> get answerImageData {
  
  return $ImageDataWrapperCopyWith<$Res>(_self.answerImageData, (value) {
    return _then(_self.copyWith(answerImageData: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateFlashcardState].
extension CreateFlashcardStatePatterns on CreateFlashcardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateFlashcardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateFlashcardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateFlashcardState value)  $default,){
final _that = this;
switch (_that) {
case _CreateFlashcardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateFlashcardState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateFlashcardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreateFlashcardStatus status,  Map<String, String> formErrors,  List<Tag>? allAvailableTags,  List<Tag> selectedTags,  ImageDataWrapper questionImageData,  ImageDataWrapper answerImageData,  bool shouldExit,  Exception? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateFlashcardState() when $default != null:
return $default(_that.status,_that.formErrors,_that.allAvailableTags,_that.selectedTags,_that.questionImageData,_that.answerImageData,_that.shouldExit,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreateFlashcardStatus status,  Map<String, String> formErrors,  List<Tag>? allAvailableTags,  List<Tag> selectedTags,  ImageDataWrapper questionImageData,  ImageDataWrapper answerImageData,  bool shouldExit,  Exception? error)  $default,) {final _that = this;
switch (_that) {
case _CreateFlashcardState():
return $default(_that.status,_that.formErrors,_that.allAvailableTags,_that.selectedTags,_that.questionImageData,_that.answerImageData,_that.shouldExit,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreateFlashcardStatus status,  Map<String, String> formErrors,  List<Tag>? allAvailableTags,  List<Tag> selectedTags,  ImageDataWrapper questionImageData,  ImageDataWrapper answerImageData,  bool shouldExit,  Exception? error)?  $default,) {final _that = this;
switch (_that) {
case _CreateFlashcardState() when $default != null:
return $default(_that.status,_that.formErrors,_that.allAvailableTags,_that.selectedTags,_that.questionImageData,_that.answerImageData,_that.shouldExit,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _CreateFlashcardState implements CreateFlashcardState {
  const _CreateFlashcardState({this.status = CreateFlashcardStatus.initial, final  Map<String, String> formErrors = const {}, final  List<Tag>? allAvailableTags, final  List<Tag> selectedTags = const [], this.questionImageData = const ImageDataWrapper(), this.answerImageData = const ImageDataWrapper(), this.shouldExit = false, this.error}): _formErrors = formErrors,_allAvailableTags = allAvailableTags,_selectedTags = selectedTags;
  

@override@JsonKey() final  CreateFlashcardStatus status;
 final  Map<String, String> _formErrors;
@override@JsonKey() Map<String, String> get formErrors {
  if (_formErrors is EqualUnmodifiableMapView) return _formErrors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_formErrors);
}

 final  List<Tag>? _allAvailableTags;
@override List<Tag>? get allAvailableTags {
  final value = _allAvailableTags;
  if (value == null) return null;
  if (_allAvailableTags is EqualUnmodifiableListView) return _allAvailableTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Tag> _selectedTags;
@override@JsonKey() List<Tag> get selectedTags {
  if (_selectedTags is EqualUnmodifiableListView) return _selectedTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedTags);
}

@override@JsonKey() final  ImageDataWrapper questionImageData;
@override@JsonKey() final  ImageDataWrapper answerImageData;
@override@JsonKey() final  bool shouldExit;
@override final  Exception? error;

/// Create a copy of CreateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFlashcardStateCopyWith<_CreateFlashcardState> get copyWith => __$CreateFlashcardStateCopyWithImpl<_CreateFlashcardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFlashcardState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._formErrors, _formErrors)&&const DeepCollectionEquality().equals(other._allAvailableTags, _allAvailableTags)&&const DeepCollectionEquality().equals(other._selectedTags, _selectedTags)&&(identical(other.questionImageData, questionImageData) || other.questionImageData == questionImageData)&&(identical(other.answerImageData, answerImageData) || other.answerImageData == answerImageData)&&(identical(other.shouldExit, shouldExit) || other.shouldExit == shouldExit)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_formErrors),const DeepCollectionEquality().hash(_allAvailableTags),const DeepCollectionEquality().hash(_selectedTags),questionImageData,answerImageData,shouldExit,error);

@override
String toString() {
  return 'CreateFlashcardState(status: $status, formErrors: $formErrors, allAvailableTags: $allAvailableTags, selectedTags: $selectedTags, questionImageData: $questionImageData, answerImageData: $answerImageData, shouldExit: $shouldExit, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CreateFlashcardStateCopyWith<$Res> implements $CreateFlashcardStateCopyWith<$Res> {
  factory _$CreateFlashcardStateCopyWith(_CreateFlashcardState value, $Res Function(_CreateFlashcardState) _then) = __$CreateFlashcardStateCopyWithImpl;
@override @useResult
$Res call({
 CreateFlashcardStatus status, Map<String, String> formErrors, List<Tag>? allAvailableTags, List<Tag> selectedTags, ImageDataWrapper questionImageData, ImageDataWrapper answerImageData, bool shouldExit, Exception? error
});


@override $ImageDataWrapperCopyWith<$Res> get questionImageData;@override $ImageDataWrapperCopyWith<$Res> get answerImageData;

}
/// @nodoc
class __$CreateFlashcardStateCopyWithImpl<$Res>
    implements _$CreateFlashcardStateCopyWith<$Res> {
  __$CreateFlashcardStateCopyWithImpl(this._self, this._then);

  final _CreateFlashcardState _self;
  final $Res Function(_CreateFlashcardState) _then;

/// Create a copy of CreateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? formErrors = null,Object? allAvailableTags = freezed,Object? selectedTags = null,Object? questionImageData = null,Object? answerImageData = null,Object? shouldExit = null,Object? error = freezed,}) {
  return _then(_CreateFlashcardState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateFlashcardStatus,formErrors: null == formErrors ? _self._formErrors : formErrors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,allAvailableTags: freezed == allAvailableTags ? _self._allAvailableTags : allAvailableTags // ignore: cast_nullable_to_non_nullable
as List<Tag>?,selectedTags: null == selectedTags ? _self._selectedTags : selectedTags // ignore: cast_nullable_to_non_nullable
as List<Tag>,questionImageData: null == questionImageData ? _self.questionImageData : questionImageData // ignore: cast_nullable_to_non_nullable
as ImageDataWrapper,answerImageData: null == answerImageData ? _self.answerImageData : answerImageData // ignore: cast_nullable_to_non_nullable
as ImageDataWrapper,shouldExit: null == shouldExit ? _self.shouldExit : shouldExit // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}

/// Create a copy of CreateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageDataWrapperCopyWith<$Res> get questionImageData {
  
  return $ImageDataWrapperCopyWith<$Res>(_self.questionImageData, (value) {
    return _then(_self.copyWith(questionImageData: value));
  });
}/// Create a copy of CreateFlashcardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageDataWrapperCopyWith<$Res> get answerImageData {
  
  return $ImageDataWrapperCopyWith<$Res>(_self.answerImageData, (value) {
    return _then(_self.copyWith(answerImageData: value));
  });
}
}

// dart format on
