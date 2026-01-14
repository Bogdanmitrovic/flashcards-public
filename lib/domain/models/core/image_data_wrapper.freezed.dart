// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_data_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageDataWrapper {

 PickedImage? get pickedImage; String? get imageDownloadUrl; bool get isChanged;
/// Create a copy of ImageDataWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageDataWrapperCopyWith<ImageDataWrapper> get copyWith => _$ImageDataWrapperCopyWithImpl<ImageDataWrapper>(this as ImageDataWrapper, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageDataWrapper&&(identical(other.pickedImage, pickedImage) || other.pickedImage == pickedImage)&&(identical(other.imageDownloadUrl, imageDownloadUrl) || other.imageDownloadUrl == imageDownloadUrl)&&(identical(other.isChanged, isChanged) || other.isChanged == isChanged));
}


@override
int get hashCode => Object.hash(runtimeType,pickedImage,imageDownloadUrl,isChanged);

@override
String toString() {
  return 'ImageDataWrapper(pickedImage: $pickedImage, imageDownloadUrl: $imageDownloadUrl, isChanged: $isChanged)';
}


}

/// @nodoc
abstract mixin class $ImageDataWrapperCopyWith<$Res>  {
  factory $ImageDataWrapperCopyWith(ImageDataWrapper value, $Res Function(ImageDataWrapper) _then) = _$ImageDataWrapperCopyWithImpl;
@useResult
$Res call({
 PickedImage? pickedImage, String? imageDownloadUrl, bool isChanged
});




}
/// @nodoc
class _$ImageDataWrapperCopyWithImpl<$Res>
    implements $ImageDataWrapperCopyWith<$Res> {
  _$ImageDataWrapperCopyWithImpl(this._self, this._then);

  final ImageDataWrapper _self;
  final $Res Function(ImageDataWrapper) _then;

/// Create a copy of ImageDataWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pickedImage = freezed,Object? imageDownloadUrl = freezed,Object? isChanged = null,}) {
  return _then(_self.copyWith(
pickedImage: freezed == pickedImage ? _self.pickedImage : pickedImage // ignore: cast_nullable_to_non_nullable
as PickedImage?,imageDownloadUrl: freezed == imageDownloadUrl ? _self.imageDownloadUrl : imageDownloadUrl // ignore: cast_nullable_to_non_nullable
as String?,isChanged: null == isChanged ? _self.isChanged : isChanged // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageDataWrapper].
extension ImageDataWrapperPatterns on ImageDataWrapper {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageDataWrapper value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageDataWrapper() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageDataWrapper value)  $default,){
final _that = this;
switch (_that) {
case _ImageDataWrapper():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageDataWrapper value)?  $default,){
final _that = this;
switch (_that) {
case _ImageDataWrapper() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PickedImage? pickedImage,  String? imageDownloadUrl,  bool isChanged)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageDataWrapper() when $default != null:
return $default(_that.pickedImage,_that.imageDownloadUrl,_that.isChanged);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PickedImage? pickedImage,  String? imageDownloadUrl,  bool isChanged)  $default,) {final _that = this;
switch (_that) {
case _ImageDataWrapper():
return $default(_that.pickedImage,_that.imageDownloadUrl,_that.isChanged);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PickedImage? pickedImage,  String? imageDownloadUrl,  bool isChanged)?  $default,) {final _that = this;
switch (_that) {
case _ImageDataWrapper() when $default != null:
return $default(_that.pickedImage,_that.imageDownloadUrl,_that.isChanged);case _:
  return null;

}
}

}

/// @nodoc


class _ImageDataWrapper implements ImageDataWrapper {
  const _ImageDataWrapper({this.pickedImage, this.imageDownloadUrl, this.isChanged = false});
  

@override final  PickedImage? pickedImage;
@override final  String? imageDownloadUrl;
@override@JsonKey() final  bool isChanged;

/// Create a copy of ImageDataWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageDataWrapperCopyWith<_ImageDataWrapper> get copyWith => __$ImageDataWrapperCopyWithImpl<_ImageDataWrapper>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageDataWrapper&&(identical(other.pickedImage, pickedImage) || other.pickedImage == pickedImage)&&(identical(other.imageDownloadUrl, imageDownloadUrl) || other.imageDownloadUrl == imageDownloadUrl)&&(identical(other.isChanged, isChanged) || other.isChanged == isChanged));
}


@override
int get hashCode => Object.hash(runtimeType,pickedImage,imageDownloadUrl,isChanged);

@override
String toString() {
  return 'ImageDataWrapper(pickedImage: $pickedImage, imageDownloadUrl: $imageDownloadUrl, isChanged: $isChanged)';
}


}

/// @nodoc
abstract mixin class _$ImageDataWrapperCopyWith<$Res> implements $ImageDataWrapperCopyWith<$Res> {
  factory _$ImageDataWrapperCopyWith(_ImageDataWrapper value, $Res Function(_ImageDataWrapper) _then) = __$ImageDataWrapperCopyWithImpl;
@override @useResult
$Res call({
 PickedImage? pickedImage, String? imageDownloadUrl, bool isChanged
});




}
/// @nodoc
class __$ImageDataWrapperCopyWithImpl<$Res>
    implements _$ImageDataWrapperCopyWith<$Res> {
  __$ImageDataWrapperCopyWithImpl(this._self, this._then);

  final _ImageDataWrapper _self;
  final $Res Function(_ImageDataWrapper) _then;

/// Create a copy of ImageDataWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pickedImage = freezed,Object? imageDownloadUrl = freezed,Object? isChanged = null,}) {
  return _then(_ImageDataWrapper(
pickedImage: freezed == pickedImage ? _self.pickedImage : pickedImage // ignore: cast_nullable_to_non_nullable
as PickedImage?,imageDownloadUrl: freezed == imageDownloadUrl ? _self.imageDownloadUrl : imageDownloadUrl // ignore: cast_nullable_to_non_nullable
as String?,isChanged: null == isChanged ? _self.isChanged : isChanged // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
