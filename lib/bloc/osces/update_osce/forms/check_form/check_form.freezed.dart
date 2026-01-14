// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckForm {

 TextEditingController get controller; TextEditingController get scoreController; bool get isTitle;
/// Create a copy of CheckForm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckFormCopyWith<CheckForm> get copyWith => _$CheckFormCopyWithImpl<CheckForm>(this as CheckForm, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckForm&&(identical(other.controller, controller) || other.controller == controller)&&(identical(other.scoreController, scoreController) || other.scoreController == scoreController)&&(identical(other.isTitle, isTitle) || other.isTitle == isTitle));
}


@override
int get hashCode => Object.hash(runtimeType,controller,scoreController,isTitle);

@override
String toString() {
  return 'CheckForm(controller: $controller, scoreController: $scoreController, isTitle: $isTitle)';
}


}

/// @nodoc
abstract mixin class $CheckFormCopyWith<$Res>  {
  factory $CheckFormCopyWith(CheckForm value, $Res Function(CheckForm) _then) = _$CheckFormCopyWithImpl;
@useResult
$Res call({
 TextEditingController controller, TextEditingController scoreController, bool isTitle
});




}
/// @nodoc
class _$CheckFormCopyWithImpl<$Res>
    implements $CheckFormCopyWith<$Res> {
  _$CheckFormCopyWithImpl(this._self, this._then);

  final CheckForm _self;
  final $Res Function(CheckForm) _then;

/// Create a copy of CheckForm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? controller = null,Object? scoreController = null,Object? isTitle = null,}) {
  return _then(_self.copyWith(
controller: null == controller ? _self.controller : controller // ignore: cast_nullable_to_non_nullable
as TextEditingController,scoreController: null == scoreController ? _self.scoreController : scoreController // ignore: cast_nullable_to_non_nullable
as TextEditingController,isTitle: null == isTitle ? _self.isTitle : isTitle // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckForm].
extension CheckFormPatterns on CheckForm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckForm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckForm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckForm value)  $default,){
final _that = this;
switch (_that) {
case _CheckForm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckForm value)?  $default,){
final _that = this;
switch (_that) {
case _CheckForm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextEditingController controller,  TextEditingController scoreController,  bool isTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckForm() when $default != null:
return $default(_that.controller,_that.scoreController,_that.isTitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextEditingController controller,  TextEditingController scoreController,  bool isTitle)  $default,) {final _that = this;
switch (_that) {
case _CheckForm():
return $default(_that.controller,_that.scoreController,_that.isTitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextEditingController controller,  TextEditingController scoreController,  bool isTitle)?  $default,) {final _that = this;
switch (_that) {
case _CheckForm() when $default != null:
return $default(_that.controller,_that.scoreController,_that.isTitle);case _:
  return null;

}
}

}

/// @nodoc


class _CheckForm implements CheckForm {
  const _CheckForm({required this.controller, required this.scoreController, this.isTitle = false});
  

@override final  TextEditingController controller;
@override final  TextEditingController scoreController;
@override@JsonKey() final  bool isTitle;

/// Create a copy of CheckForm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckFormCopyWith<_CheckForm> get copyWith => __$CheckFormCopyWithImpl<_CheckForm>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckForm&&(identical(other.controller, controller) || other.controller == controller)&&(identical(other.scoreController, scoreController) || other.scoreController == scoreController)&&(identical(other.isTitle, isTitle) || other.isTitle == isTitle));
}


@override
int get hashCode => Object.hash(runtimeType,controller,scoreController,isTitle);

@override
String toString() {
  return 'CheckForm(controller: $controller, scoreController: $scoreController, isTitle: $isTitle)';
}


}

/// @nodoc
abstract mixin class _$CheckFormCopyWith<$Res> implements $CheckFormCopyWith<$Res> {
  factory _$CheckFormCopyWith(_CheckForm value, $Res Function(_CheckForm) _then) = __$CheckFormCopyWithImpl;
@override @useResult
$Res call({
 TextEditingController controller, TextEditingController scoreController, bool isTitle
});




}
/// @nodoc
class __$CheckFormCopyWithImpl<$Res>
    implements _$CheckFormCopyWith<$Res> {
  __$CheckFormCopyWithImpl(this._self, this._then);

  final _CheckForm _self;
  final $Res Function(_CheckForm) _then;

/// Create a copy of CheckForm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? controller = null,Object? scoreController = null,Object? isTitle = null,}) {
  return _then(_CheckForm(
controller: null == controller ? _self.controller : controller // ignore: cast_nullable_to_non_nullable
as TextEditingController,scoreController: null == scoreController ? _self.scoreController : scoreController // ignore: cast_nullable_to_non_nullable
as TextEditingController,isTitle: null == isTitle ? _self.isTitle : isTitle // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
