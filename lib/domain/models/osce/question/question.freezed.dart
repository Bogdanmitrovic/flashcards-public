// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Question {

 String get id; String get text; List<Check> get checks; String? get imageDownloadUrl; int get index;
/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionCopyWith<Question> get copyWith => _$QuestionCopyWithImpl<Question>(this as Question, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Question&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.checks, checks)&&(identical(other.imageDownloadUrl, imageDownloadUrl) || other.imageDownloadUrl == imageDownloadUrl)&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,id,text,const DeepCollectionEquality().hash(checks),imageDownloadUrl,index);

@override
String toString() {
  return 'Question(id: $id, text: $text, checks: $checks, imageDownloadUrl: $imageDownloadUrl, index: $index)';
}


}

/// @nodoc
abstract mixin class $QuestionCopyWith<$Res>  {
  factory $QuestionCopyWith(Question value, $Res Function(Question) _then) = _$QuestionCopyWithImpl;
@useResult
$Res call({
 String id, String text, List<Check> checks, String? imageDownloadUrl, int index
});




}
/// @nodoc
class _$QuestionCopyWithImpl<$Res>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._self, this._then);

  final Question _self;
  final $Res Function(Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? text = null,Object? checks = null,Object? imageDownloadUrl = freezed,Object? index = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,checks: null == checks ? _self.checks : checks // ignore: cast_nullable_to_non_nullable
as List<Check>,imageDownloadUrl: freezed == imageDownloadUrl ? _self.imageDownloadUrl : imageDownloadUrl // ignore: cast_nullable_to_non_nullable
as String?,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Question].
extension QuestionPatterns on Question {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Question value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Question() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Question value)  $default,){
final _that = this;
switch (_that) {
case _Question():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Question value)?  $default,){
final _that = this;
switch (_that) {
case _Question() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String text,  List<Check> checks,  String? imageDownloadUrl,  int index)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.id,_that.text,_that.checks,_that.imageDownloadUrl,_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String text,  List<Check> checks,  String? imageDownloadUrl,  int index)  $default,) {final _that = this;
switch (_that) {
case _Question():
return $default(_that.id,_that.text,_that.checks,_that.imageDownloadUrl,_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String text,  List<Check> checks,  String? imageDownloadUrl,  int index)?  $default,) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.id,_that.text,_that.checks,_that.imageDownloadUrl,_that.index);case _:
  return null;

}
}

}

/// @nodoc


class _Question implements Question {
  const _Question({required this.id, required this.text, required final  List<Check> checks, this.imageDownloadUrl, required this.index}): _checks = checks;
  

@override final  String id;
@override final  String text;
 final  List<Check> _checks;
@override List<Check> get checks {
  if (_checks is EqualUnmodifiableListView) return _checks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_checks);
}

@override final  String? imageDownloadUrl;
@override final  int index;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionCopyWith<_Question> get copyWith => __$QuestionCopyWithImpl<_Question>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Question&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other._checks, _checks)&&(identical(other.imageDownloadUrl, imageDownloadUrl) || other.imageDownloadUrl == imageDownloadUrl)&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,id,text,const DeepCollectionEquality().hash(_checks),imageDownloadUrl,index);

@override
String toString() {
  return 'Question(id: $id, text: $text, checks: $checks, imageDownloadUrl: $imageDownloadUrl, index: $index)';
}


}

/// @nodoc
abstract mixin class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) _then) = __$QuestionCopyWithImpl;
@override @useResult
$Res call({
 String id, String text, List<Check> checks, String? imageDownloadUrl, int index
});




}
/// @nodoc
class __$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(this._self, this._then);

  final _Question _self;
  final $Res Function(_Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? text = null,Object? checks = null,Object? imageDownloadUrl = freezed,Object? index = null,}) {
  return _then(_Question(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,checks: null == checks ? _self._checks : checks // ignore: cast_nullable_to_non_nullable
as List<Check>,imageDownloadUrl: freezed == imageDownloadUrl ? _self.imageDownloadUrl : imageDownloadUrl // ignore: cast_nullable_to_non_nullable
as String?,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
