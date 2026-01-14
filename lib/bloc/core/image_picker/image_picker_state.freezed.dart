// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImagePickerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagePickerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImagePickerState()';
}


}

/// @nodoc
class $ImagePickerStateCopyWith<$Res>  {
$ImagePickerStateCopyWith(ImagePickerState _, $Res Function(ImagePickerState) __);
}


/// Adds pattern-matching-related methods to [ImagePickerState].
extension ImagePickerStatePatterns on ImagePickerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ImagePickerEmtpy value)?  empty,TResult Function( ImagePickerLoading value)?  loading,TResult Function( ImagePickerFileLoaded value)?  fileLoaded,TResult Function( ImagePickerBytesLoaded value)?  bytesLoaded,TResult Function( ImagePickerError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ImagePickerEmtpy() when empty != null:
return empty(_that);case ImagePickerLoading() when loading != null:
return loading(_that);case ImagePickerFileLoaded() when fileLoaded != null:
return fileLoaded(_that);case ImagePickerBytesLoaded() when bytesLoaded != null:
return bytesLoaded(_that);case ImagePickerError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ImagePickerEmtpy value)  empty,required TResult Function( ImagePickerLoading value)  loading,required TResult Function( ImagePickerFileLoaded value)  fileLoaded,required TResult Function( ImagePickerBytesLoaded value)  bytesLoaded,required TResult Function( ImagePickerError value)  error,}){
final _that = this;
switch (_that) {
case ImagePickerEmtpy():
return empty(_that);case ImagePickerLoading():
return loading(_that);case ImagePickerFileLoaded():
return fileLoaded(_that);case ImagePickerBytesLoaded():
return bytesLoaded(_that);case ImagePickerError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ImagePickerEmtpy value)?  empty,TResult? Function( ImagePickerLoading value)?  loading,TResult? Function( ImagePickerFileLoaded value)?  fileLoaded,TResult? Function( ImagePickerBytesLoaded value)?  bytesLoaded,TResult? Function( ImagePickerError value)?  error,}){
final _that = this;
switch (_that) {
case ImagePickerEmtpy() when empty != null:
return empty(_that);case ImagePickerLoading() when loading != null:
return loading(_that);case ImagePickerFileLoaded() when fileLoaded != null:
return fileLoaded(_that);case ImagePickerBytesLoaded() when bytesLoaded != null:
return bytesLoaded(_that);case ImagePickerError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  empty,TResult Function()?  loading,TResult Function( File file)?  fileLoaded,TResult Function( Uint8List bytes)?  bytesLoaded,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ImagePickerEmtpy() when empty != null:
return empty();case ImagePickerLoading() when loading != null:
return loading();case ImagePickerFileLoaded() when fileLoaded != null:
return fileLoaded(_that.file);case ImagePickerBytesLoaded() when bytesLoaded != null:
return bytesLoaded(_that.bytes);case ImagePickerError() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  empty,required TResult Function()  loading,required TResult Function( File file)  fileLoaded,required TResult Function( Uint8List bytes)  bytesLoaded,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case ImagePickerEmtpy():
return empty();case ImagePickerLoading():
return loading();case ImagePickerFileLoaded():
return fileLoaded(_that.file);case ImagePickerBytesLoaded():
return bytesLoaded(_that.bytes);case ImagePickerError():
return error(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  empty,TResult? Function()?  loading,TResult? Function( File file)?  fileLoaded,TResult? Function( Uint8List bytes)?  bytesLoaded,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case ImagePickerEmtpy() when empty != null:
return empty();case ImagePickerLoading() when loading != null:
return loading();case ImagePickerFileLoaded() when fileLoaded != null:
return fileLoaded(_that.file);case ImagePickerBytesLoaded() when bytesLoaded != null:
return bytesLoaded(_that.bytes);case ImagePickerError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class ImagePickerEmtpy implements ImagePickerState {
  const ImagePickerEmtpy();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagePickerEmtpy);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImagePickerState.empty()';
}


}




/// @nodoc


class ImagePickerLoading implements ImagePickerState {
  const ImagePickerLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagePickerLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImagePickerState.loading()';
}


}




/// @nodoc


class ImagePickerFileLoaded implements ImagePickerState {
  const ImagePickerFileLoaded({required this.file});
  

 final  File file;

/// Create a copy of ImagePickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImagePickerFileLoadedCopyWith<ImagePickerFileLoaded> get copyWith => _$ImagePickerFileLoadedCopyWithImpl<ImagePickerFileLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagePickerFileLoaded&&(identical(other.file, file) || other.file == file));
}


@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString() {
  return 'ImagePickerState.fileLoaded(file: $file)';
}


}

/// @nodoc
abstract mixin class $ImagePickerFileLoadedCopyWith<$Res> implements $ImagePickerStateCopyWith<$Res> {
  factory $ImagePickerFileLoadedCopyWith(ImagePickerFileLoaded value, $Res Function(ImagePickerFileLoaded) _then) = _$ImagePickerFileLoadedCopyWithImpl;
@useResult
$Res call({
 File file
});




}
/// @nodoc
class _$ImagePickerFileLoadedCopyWithImpl<$Res>
    implements $ImagePickerFileLoadedCopyWith<$Res> {
  _$ImagePickerFileLoadedCopyWithImpl(this._self, this._then);

  final ImagePickerFileLoaded _self;
  final $Res Function(ImagePickerFileLoaded) _then;

/// Create a copy of ImagePickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = null,}) {
  return _then(ImagePickerFileLoaded(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

/// @nodoc


class ImagePickerBytesLoaded implements ImagePickerState {
  const ImagePickerBytesLoaded({required this.bytes});
  

 final  Uint8List bytes;

/// Create a copy of ImagePickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImagePickerBytesLoadedCopyWith<ImagePickerBytesLoaded> get copyWith => _$ImagePickerBytesLoadedCopyWithImpl<ImagePickerBytesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagePickerBytesLoaded&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

@override
String toString() {
  return 'ImagePickerState.bytesLoaded(bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class $ImagePickerBytesLoadedCopyWith<$Res> implements $ImagePickerStateCopyWith<$Res> {
  factory $ImagePickerBytesLoadedCopyWith(ImagePickerBytesLoaded value, $Res Function(ImagePickerBytesLoaded) _then) = _$ImagePickerBytesLoadedCopyWithImpl;
@useResult
$Res call({
 Uint8List bytes
});




}
/// @nodoc
class _$ImagePickerBytesLoadedCopyWithImpl<$Res>
    implements $ImagePickerBytesLoadedCopyWith<$Res> {
  _$ImagePickerBytesLoadedCopyWithImpl(this._self, this._then);

  final ImagePickerBytesLoaded _self;
  final $Res Function(ImagePickerBytesLoaded) _then;

/// Create a copy of ImagePickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bytes = null,}) {
  return _then(ImagePickerBytesLoaded(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class ImagePickerError implements ImagePickerState {
  const ImagePickerError({required this.error});
  

 final  Exception error;

/// Create a copy of ImagePickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImagePickerErrorCopyWith<ImagePickerError> get copyWith => _$ImagePickerErrorCopyWithImpl<ImagePickerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagePickerError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ImagePickerState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ImagePickerErrorCopyWith<$Res> implements $ImagePickerStateCopyWith<$Res> {
  factory $ImagePickerErrorCopyWith(ImagePickerError value, $Res Function(ImagePickerError) _then) = _$ImagePickerErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$ImagePickerErrorCopyWithImpl<$Res>
    implements $ImagePickerErrorCopyWith<$Res> {
  _$ImagePickerErrorCopyWithImpl(this._self, this._then);

  final ImagePickerError _self;
  final $Res Function(ImagePickerError) _then;

/// Create a copy of ImagePickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ImagePickerError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
