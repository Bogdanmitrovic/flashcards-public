import 'dart:io';
import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_picker_state.freezed.dart';

@freezed
sealed class ImagePickerState with _$ImagePickerState {
  const factory ImagePickerState.empty() = ImagePickerEmtpy;

  const factory ImagePickerState.loading() = ImagePickerLoading;

  /// File is used for android/ios
  const factory ImagePickerState.fileLoaded({required File file}) =
      ImagePickerFileLoaded;

  /// Bytes are used for web version, since it doesn't support "File" type
  const factory ImagePickerState.bytesLoaded({required Uint8List bytes}) =
      ImagePickerBytesLoaded;

  const factory ImagePickerState.error({required Exception error}) =
      ImagePickerError;
}
