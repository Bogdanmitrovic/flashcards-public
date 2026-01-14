// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuestionForm {

 String get id;/// Used to differentiate if the question is loaded from db or is added locally.
///
/// This way you know if you should call update or add method from repository.
 bool get isLocal; TextEditingController get controller; List<CheckForm> get checkForms; ImageDataWrapper get imageData;/// Used to check if the form has changed so that you can ignore sending the request if it's not changed
 Question get original;
/// Create a copy of QuestionForm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionFormCopyWith<QuestionForm> get copyWith => _$QuestionFormCopyWithImpl<QuestionForm>(this as QuestionForm, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionForm&&(identical(other.id, id) || other.id == id)&&(identical(other.isLocal, isLocal) || other.isLocal == isLocal)&&(identical(other.controller, controller) || other.controller == controller)&&const DeepCollectionEquality().equals(other.checkForms, checkForms)&&(identical(other.imageData, imageData) || other.imageData == imageData)&&(identical(other.original, original) || other.original == original));
}


@override
int get hashCode => Object.hash(runtimeType,id,isLocal,controller,const DeepCollectionEquality().hash(checkForms),imageData,original);

@override
String toString() {
  return 'QuestionForm(id: $id, isLocal: $isLocal, controller: $controller, checkForms: $checkForms, imageData: $imageData, original: $original)';
}


}

/// @nodoc
abstract mixin class $QuestionFormCopyWith<$Res>  {
  factory $QuestionFormCopyWith(QuestionForm value, $Res Function(QuestionForm) _then) = _$QuestionFormCopyWithImpl;
@useResult
$Res call({
 String id, bool isLocal, TextEditingController controller, List<CheckForm> checkForms, ImageDataWrapper imageData, Question original
});


$ImageDataWrapperCopyWith<$Res> get imageData;$QuestionCopyWith<$Res> get original;

}
/// @nodoc
class _$QuestionFormCopyWithImpl<$Res>
    implements $QuestionFormCopyWith<$Res> {
  _$QuestionFormCopyWithImpl(this._self, this._then);

  final QuestionForm _self;
  final $Res Function(QuestionForm) _then;

/// Create a copy of QuestionForm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? isLocal = null,Object? controller = null,Object? checkForms = null,Object? imageData = null,Object? original = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isLocal: null == isLocal ? _self.isLocal : isLocal // ignore: cast_nullable_to_non_nullable
as bool,controller: null == controller ? _self.controller : controller // ignore: cast_nullable_to_non_nullable
as TextEditingController,checkForms: null == checkForms ? _self.checkForms : checkForms // ignore: cast_nullable_to_non_nullable
as List<CheckForm>,imageData: null == imageData ? _self.imageData : imageData // ignore: cast_nullable_to_non_nullable
as ImageDataWrapper,original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as Question,
  ));
}
/// Create a copy of QuestionForm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageDataWrapperCopyWith<$Res> get imageData {
  
  return $ImageDataWrapperCopyWith<$Res>(_self.imageData, (value) {
    return _then(_self.copyWith(imageData: value));
  });
}/// Create a copy of QuestionForm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestionCopyWith<$Res> get original {
  
  return $QuestionCopyWith<$Res>(_self.original, (value) {
    return _then(_self.copyWith(original: value));
  });
}
}


/// Adds pattern-matching-related methods to [QuestionForm].
extension QuestionFormPatterns on QuestionForm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionForm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionForm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionForm value)  $default,){
final _that = this;
switch (_that) {
case _QuestionForm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionForm value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionForm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool isLocal,  TextEditingController controller,  List<CheckForm> checkForms,  ImageDataWrapper imageData,  Question original)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionForm() when $default != null:
return $default(_that.id,_that.isLocal,_that.controller,_that.checkForms,_that.imageData,_that.original);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool isLocal,  TextEditingController controller,  List<CheckForm> checkForms,  ImageDataWrapper imageData,  Question original)  $default,) {final _that = this;
switch (_that) {
case _QuestionForm():
return $default(_that.id,_that.isLocal,_that.controller,_that.checkForms,_that.imageData,_that.original);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool isLocal,  TextEditingController controller,  List<CheckForm> checkForms,  ImageDataWrapper imageData,  Question original)?  $default,) {final _that = this;
switch (_that) {
case _QuestionForm() when $default != null:
return $default(_that.id,_that.isLocal,_that.controller,_that.checkForms,_that.imageData,_that.original);case _:
  return null;

}
}

}

/// @nodoc


class _QuestionForm implements QuestionForm {
  const _QuestionForm({required this.id, required this.isLocal, required this.controller, required final  List<CheckForm> checkForms, required this.imageData, required this.original}): _checkForms = checkForms;
  

@override final  String id;
/// Used to differentiate if the question is loaded from db or is added locally.
///
/// This way you know if you should call update or add method from repository.
@override final  bool isLocal;
@override final  TextEditingController controller;
 final  List<CheckForm> _checkForms;
@override List<CheckForm> get checkForms {
  if (_checkForms is EqualUnmodifiableListView) return _checkForms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_checkForms);
}

@override final  ImageDataWrapper imageData;
/// Used to check if the form has changed so that you can ignore sending the request if it's not changed
@override final  Question original;

/// Create a copy of QuestionForm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionFormCopyWith<_QuestionForm> get copyWith => __$QuestionFormCopyWithImpl<_QuestionForm>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionForm&&(identical(other.id, id) || other.id == id)&&(identical(other.isLocal, isLocal) || other.isLocal == isLocal)&&(identical(other.controller, controller) || other.controller == controller)&&const DeepCollectionEquality().equals(other._checkForms, _checkForms)&&(identical(other.imageData, imageData) || other.imageData == imageData)&&(identical(other.original, original) || other.original == original));
}


@override
int get hashCode => Object.hash(runtimeType,id,isLocal,controller,const DeepCollectionEquality().hash(_checkForms),imageData,original);

@override
String toString() {
  return 'QuestionForm(id: $id, isLocal: $isLocal, controller: $controller, checkForms: $checkForms, imageData: $imageData, original: $original)';
}


}

/// @nodoc
abstract mixin class _$QuestionFormCopyWith<$Res> implements $QuestionFormCopyWith<$Res> {
  factory _$QuestionFormCopyWith(_QuestionForm value, $Res Function(_QuestionForm) _then) = __$QuestionFormCopyWithImpl;
@override @useResult
$Res call({
 String id, bool isLocal, TextEditingController controller, List<CheckForm> checkForms, ImageDataWrapper imageData, Question original
});


@override $ImageDataWrapperCopyWith<$Res> get imageData;@override $QuestionCopyWith<$Res> get original;

}
/// @nodoc
class __$QuestionFormCopyWithImpl<$Res>
    implements _$QuestionFormCopyWith<$Res> {
  __$QuestionFormCopyWithImpl(this._self, this._then);

  final _QuestionForm _self;
  final $Res Function(_QuestionForm) _then;

/// Create a copy of QuestionForm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? isLocal = null,Object? controller = null,Object? checkForms = null,Object? imageData = null,Object? original = null,}) {
  return _then(_QuestionForm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isLocal: null == isLocal ? _self.isLocal : isLocal // ignore: cast_nullable_to_non_nullable
as bool,controller: null == controller ? _self.controller : controller // ignore: cast_nullable_to_non_nullable
as TextEditingController,checkForms: null == checkForms ? _self._checkForms : checkForms // ignore: cast_nullable_to_non_nullable
as List<CheckForm>,imageData: null == imageData ? _self.imageData : imageData // ignore: cast_nullable_to_non_nullable
as ImageDataWrapper,original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as Question,
  ));
}

/// Create a copy of QuestionForm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageDataWrapperCopyWith<$Res> get imageData {
  
  return $ImageDataWrapperCopyWith<$Res>(_self.imageData, (value) {
    return _then(_self.copyWith(imageData: value));
  });
}/// Create a copy of QuestionForm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestionCopyWith<$Res> get original {
  
  return $QuestionCopyWith<$Res>(_self.original, (value) {
    return _then(_self.copyWith(original: value));
  });
}
}

// dart format on
