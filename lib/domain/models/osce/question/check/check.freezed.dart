// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Check {

 String get text; bool get isTitle; bool get isChecked; int get index; int get score;
/// Create a copy of Check
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckCopyWith<Check> get copyWith => _$CheckCopyWithImpl<Check>(this as Check, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Check&&(identical(other.text, text) || other.text == text)&&(identical(other.isTitle, isTitle) || other.isTitle == isTitle)&&(identical(other.isChecked, isChecked) || other.isChecked == isChecked)&&(identical(other.index, index) || other.index == index)&&(identical(other.score, score) || other.score == score));
}


@override
int get hashCode => Object.hash(runtimeType,text,isTitle,isChecked,index,score);

@override
String toString() {
  return 'Check(text: $text, isTitle: $isTitle, isChecked: $isChecked, index: $index, score: $score)';
}


}

/// @nodoc
abstract mixin class $CheckCopyWith<$Res>  {
  factory $CheckCopyWith(Check value, $Res Function(Check) _then) = _$CheckCopyWithImpl;
@useResult
$Res call({
 String text, bool isTitle, bool isChecked, int index, int score
});




}
/// @nodoc
class _$CheckCopyWithImpl<$Res>
    implements $CheckCopyWith<$Res> {
  _$CheckCopyWithImpl(this._self, this._then);

  final Check _self;
  final $Res Function(Check) _then;

/// Create a copy of Check
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? isTitle = null,Object? isChecked = null,Object? index = null,Object? score = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isTitle: null == isTitle ? _self.isTitle : isTitle // ignore: cast_nullable_to_non_nullable
as bool,isChecked: null == isChecked ? _self.isChecked : isChecked // ignore: cast_nullable_to_non_nullable
as bool,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Check].
extension CheckPatterns on Check {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Check value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Check() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Check value)  $default,){
final _that = this;
switch (_that) {
case _Check():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Check value)?  $default,){
final _that = this;
switch (_that) {
case _Check() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  bool isTitle,  bool isChecked,  int index,  int score)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Check() when $default != null:
return $default(_that.text,_that.isTitle,_that.isChecked,_that.index,_that.score);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  bool isTitle,  bool isChecked,  int index,  int score)  $default,) {final _that = this;
switch (_that) {
case _Check():
return $default(_that.text,_that.isTitle,_that.isChecked,_that.index,_that.score);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  bool isTitle,  bool isChecked,  int index,  int score)?  $default,) {final _that = this;
switch (_that) {
case _Check() when $default != null:
return $default(_that.text,_that.isTitle,_that.isChecked,_that.index,_that.score);case _:
  return null;

}
}

}

/// @nodoc


class _Check implements Check {
  const _Check({required this.text, required this.isTitle, required this.isChecked, required this.index, this.score = 1});
  

@override final  String text;
@override final  bool isTitle;
@override final  bool isChecked;
@override final  int index;
@override@JsonKey() final  int score;

/// Create a copy of Check
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckCopyWith<_Check> get copyWith => __$CheckCopyWithImpl<_Check>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Check&&(identical(other.text, text) || other.text == text)&&(identical(other.isTitle, isTitle) || other.isTitle == isTitle)&&(identical(other.isChecked, isChecked) || other.isChecked == isChecked)&&(identical(other.index, index) || other.index == index)&&(identical(other.score, score) || other.score == score));
}


@override
int get hashCode => Object.hash(runtimeType,text,isTitle,isChecked,index,score);

@override
String toString() {
  return 'Check(text: $text, isTitle: $isTitle, isChecked: $isChecked, index: $index, score: $score)';
}


}

/// @nodoc
abstract mixin class _$CheckCopyWith<$Res> implements $CheckCopyWith<$Res> {
  factory _$CheckCopyWith(_Check value, $Res Function(_Check) _then) = __$CheckCopyWithImpl;
@override @useResult
$Res call({
 String text, bool isTitle, bool isChecked, int index, int score
});




}
/// @nodoc
class __$CheckCopyWithImpl<$Res>
    implements _$CheckCopyWith<$Res> {
  __$CheckCopyWithImpl(this._self, this._then);

  final _Check _self;
  final $Res Function(_Check) _then;

/// Create a copy of Check
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? isTitle = null,Object? isChecked = null,Object? index = null,Object? score = null,}) {
  return _then(_Check(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isTitle: null == isTitle ? _self.isTitle : isTitle // ignore: cast_nullable_to_non_nullable
as bool,isChecked: null == isChecked ? _self.isChecked : isChecked // ignore: cast_nullable_to_non_nullable
as bool,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
