// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_app_colors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomAppColors {

 Color get success; Color get onSuccess; Color get successContainer; Color get onSuccessContainer; Color get info; Color get onInfo; Color get infoContainer; Color get onInfoContainer; Color get warning; Color get onWarning; Color get warningContainer; Color get onWarningContainer;
/// Create a copy of CustomAppColors
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomAppColorsCopyWith<CustomAppColors> get copyWith => _$CustomAppColorsCopyWithImpl<CustomAppColors>(this as CustomAppColors, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomAppColors&&(identical(other.success, success) || other.success == success)&&(identical(other.onSuccess, onSuccess) || other.onSuccess == onSuccess)&&(identical(other.successContainer, successContainer) || other.successContainer == successContainer)&&(identical(other.onSuccessContainer, onSuccessContainer) || other.onSuccessContainer == onSuccessContainer)&&(identical(other.info, info) || other.info == info)&&(identical(other.onInfo, onInfo) || other.onInfo == onInfo)&&(identical(other.infoContainer, infoContainer) || other.infoContainer == infoContainer)&&(identical(other.onInfoContainer, onInfoContainer) || other.onInfoContainer == onInfoContainer)&&(identical(other.warning, warning) || other.warning == warning)&&(identical(other.onWarning, onWarning) || other.onWarning == onWarning)&&(identical(other.warningContainer, warningContainer) || other.warningContainer == warningContainer)&&(identical(other.onWarningContainer, onWarningContainer) || other.onWarningContainer == onWarningContainer));
}


@override
int get hashCode => Object.hash(runtimeType,success,onSuccess,successContainer,onSuccessContainer,info,onInfo,infoContainer,onInfoContainer,warning,onWarning,warningContainer,onWarningContainer);

@override
String toString() {
  return 'CustomAppColors(success: $success, onSuccess: $onSuccess, successContainer: $successContainer, onSuccessContainer: $onSuccessContainer, info: $info, onInfo: $onInfo, infoContainer: $infoContainer, onInfoContainer: $onInfoContainer, warning: $warning, onWarning: $onWarning, warningContainer: $warningContainer, onWarningContainer: $onWarningContainer)';
}


}

/// @nodoc
abstract mixin class $CustomAppColorsCopyWith<$Res>  {
  factory $CustomAppColorsCopyWith(CustomAppColors value, $Res Function(CustomAppColors) _then) = _$CustomAppColorsCopyWithImpl;
@useResult
$Res call({
 Color success, Color onSuccess, Color successContainer, Color onSuccessContainer, Color info, Color onInfo, Color infoContainer, Color onInfoContainer, Color warning, Color onWarning, Color warningContainer, Color onWarningContainer
});




}
/// @nodoc
class _$CustomAppColorsCopyWithImpl<$Res>
    implements $CustomAppColorsCopyWith<$Res> {
  _$CustomAppColorsCopyWithImpl(this._self, this._then);

  final CustomAppColors _self;
  final $Res Function(CustomAppColors) _then;

/// Create a copy of CustomAppColors
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? onSuccess = null,Object? successContainer = null,Object? onSuccessContainer = null,Object? info = null,Object? onInfo = null,Object? infoContainer = null,Object? onInfoContainer = null,Object? warning = null,Object? onWarning = null,Object? warningContainer = null,Object? onWarningContainer = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as Color,onSuccess: null == onSuccess ? _self.onSuccess : onSuccess // ignore: cast_nullable_to_non_nullable
as Color,successContainer: null == successContainer ? _self.successContainer : successContainer // ignore: cast_nullable_to_non_nullable
as Color,onSuccessContainer: null == onSuccessContainer ? _self.onSuccessContainer : onSuccessContainer // ignore: cast_nullable_to_non_nullable
as Color,info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Color,onInfo: null == onInfo ? _self.onInfo : onInfo // ignore: cast_nullable_to_non_nullable
as Color,infoContainer: null == infoContainer ? _self.infoContainer : infoContainer // ignore: cast_nullable_to_non_nullable
as Color,onInfoContainer: null == onInfoContainer ? _self.onInfoContainer : onInfoContainer // ignore: cast_nullable_to_non_nullable
as Color,warning: null == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as Color,onWarning: null == onWarning ? _self.onWarning : onWarning // ignore: cast_nullable_to_non_nullable
as Color,warningContainer: null == warningContainer ? _self.warningContainer : warningContainer // ignore: cast_nullable_to_non_nullable
as Color,onWarningContainer: null == onWarningContainer ? _self.onWarningContainer : onWarningContainer // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomAppColors].
extension CustomAppColorsPatterns on CustomAppColors {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomAppColors value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomAppColors() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomAppColors value)  $default,){
final _that = this;
switch (_that) {
case _CustomAppColors():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomAppColors value)?  $default,){
final _that = this;
switch (_that) {
case _CustomAppColors() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Color success,  Color onSuccess,  Color successContainer,  Color onSuccessContainer,  Color info,  Color onInfo,  Color infoContainer,  Color onInfoContainer,  Color warning,  Color onWarning,  Color warningContainer,  Color onWarningContainer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomAppColors() when $default != null:
return $default(_that.success,_that.onSuccess,_that.successContainer,_that.onSuccessContainer,_that.info,_that.onInfo,_that.infoContainer,_that.onInfoContainer,_that.warning,_that.onWarning,_that.warningContainer,_that.onWarningContainer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Color success,  Color onSuccess,  Color successContainer,  Color onSuccessContainer,  Color info,  Color onInfo,  Color infoContainer,  Color onInfoContainer,  Color warning,  Color onWarning,  Color warningContainer,  Color onWarningContainer)  $default,) {final _that = this;
switch (_that) {
case _CustomAppColors():
return $default(_that.success,_that.onSuccess,_that.successContainer,_that.onSuccessContainer,_that.info,_that.onInfo,_that.infoContainer,_that.onInfoContainer,_that.warning,_that.onWarning,_that.warningContainer,_that.onWarningContainer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Color success,  Color onSuccess,  Color successContainer,  Color onSuccessContainer,  Color info,  Color onInfo,  Color infoContainer,  Color onInfoContainer,  Color warning,  Color onWarning,  Color warningContainer,  Color onWarningContainer)?  $default,) {final _that = this;
switch (_that) {
case _CustomAppColors() when $default != null:
return $default(_that.success,_that.onSuccess,_that.successContainer,_that.onSuccessContainer,_that.info,_that.onInfo,_that.infoContainer,_that.onInfoContainer,_that.warning,_that.onWarning,_that.warningContainer,_that.onWarningContainer);case _:
  return null;

}
}

}

/// @nodoc


class _CustomAppColors implements CustomAppColors {
  const _CustomAppColors({required this.success, required this.onSuccess, required this.successContainer, required this.onSuccessContainer, required this.info, required this.onInfo, required this.infoContainer, required this.onInfoContainer, required this.warning, required this.onWarning, required this.warningContainer, required this.onWarningContainer});
  

@override final  Color success;
@override final  Color onSuccess;
@override final  Color successContainer;
@override final  Color onSuccessContainer;
@override final  Color info;
@override final  Color onInfo;
@override final  Color infoContainer;
@override final  Color onInfoContainer;
@override final  Color warning;
@override final  Color onWarning;
@override final  Color warningContainer;
@override final  Color onWarningContainer;

/// Create a copy of CustomAppColors
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomAppColorsCopyWith<_CustomAppColors> get copyWith => __$CustomAppColorsCopyWithImpl<_CustomAppColors>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomAppColors&&(identical(other.success, success) || other.success == success)&&(identical(other.onSuccess, onSuccess) || other.onSuccess == onSuccess)&&(identical(other.successContainer, successContainer) || other.successContainer == successContainer)&&(identical(other.onSuccessContainer, onSuccessContainer) || other.onSuccessContainer == onSuccessContainer)&&(identical(other.info, info) || other.info == info)&&(identical(other.onInfo, onInfo) || other.onInfo == onInfo)&&(identical(other.infoContainer, infoContainer) || other.infoContainer == infoContainer)&&(identical(other.onInfoContainer, onInfoContainer) || other.onInfoContainer == onInfoContainer)&&(identical(other.warning, warning) || other.warning == warning)&&(identical(other.onWarning, onWarning) || other.onWarning == onWarning)&&(identical(other.warningContainer, warningContainer) || other.warningContainer == warningContainer)&&(identical(other.onWarningContainer, onWarningContainer) || other.onWarningContainer == onWarningContainer));
}


@override
int get hashCode => Object.hash(runtimeType,success,onSuccess,successContainer,onSuccessContainer,info,onInfo,infoContainer,onInfoContainer,warning,onWarning,warningContainer,onWarningContainer);

@override
String toString() {
  return 'CustomAppColors(success: $success, onSuccess: $onSuccess, successContainer: $successContainer, onSuccessContainer: $onSuccessContainer, info: $info, onInfo: $onInfo, infoContainer: $infoContainer, onInfoContainer: $onInfoContainer, warning: $warning, onWarning: $onWarning, warningContainer: $warningContainer, onWarningContainer: $onWarningContainer)';
}


}

/// @nodoc
abstract mixin class _$CustomAppColorsCopyWith<$Res> implements $CustomAppColorsCopyWith<$Res> {
  factory _$CustomAppColorsCopyWith(_CustomAppColors value, $Res Function(_CustomAppColors) _then) = __$CustomAppColorsCopyWithImpl;
@override @useResult
$Res call({
 Color success, Color onSuccess, Color successContainer, Color onSuccessContainer, Color info, Color onInfo, Color infoContainer, Color onInfoContainer, Color warning, Color onWarning, Color warningContainer, Color onWarningContainer
});




}
/// @nodoc
class __$CustomAppColorsCopyWithImpl<$Res>
    implements _$CustomAppColorsCopyWith<$Res> {
  __$CustomAppColorsCopyWithImpl(this._self, this._then);

  final _CustomAppColors _self;
  final $Res Function(_CustomAppColors) _then;

/// Create a copy of CustomAppColors
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? onSuccess = null,Object? successContainer = null,Object? onSuccessContainer = null,Object? info = null,Object? onInfo = null,Object? infoContainer = null,Object? onInfoContainer = null,Object? warning = null,Object? onWarning = null,Object? warningContainer = null,Object? onWarningContainer = null,}) {
  return _then(_CustomAppColors(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as Color,onSuccess: null == onSuccess ? _self.onSuccess : onSuccess // ignore: cast_nullable_to_non_nullable
as Color,successContainer: null == successContainer ? _self.successContainer : successContainer // ignore: cast_nullable_to_non_nullable
as Color,onSuccessContainer: null == onSuccessContainer ? _self.onSuccessContainer : onSuccessContainer // ignore: cast_nullable_to_non_nullable
as Color,info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Color,onInfo: null == onInfo ? _self.onInfo : onInfo // ignore: cast_nullable_to_non_nullable
as Color,infoContainer: null == infoContainer ? _self.infoContainer : infoContainer // ignore: cast_nullable_to_non_nullable
as Color,onInfoContainer: null == onInfoContainer ? _self.onInfoContainer : onInfoContainer // ignore: cast_nullable_to_non_nullable
as Color,warning: null == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as Color,onWarning: null == onWarning ? _self.onWarning : onWarning // ignore: cast_nullable_to_non_nullable
as Color,warningContainer: null == warningContainer ? _self.warningContainer : warningContainer // ignore: cast_nullable_to_non_nullable
as Color,onWarningContainer: null == onWarningContainer ? _self.onWarningContainer : onWarningContainer // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

// dart format on
