import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flashcards/bloc/core/image_picker/image_picker_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerCubit extends Cubit<ImagePickerState> {
  ImagePickerCubit() : super(ImagePickerEmtpy());

  void pickImage() async {
    if (state is ImagePickerLoading) return;

    //emit(ImagePickerLoading());

    try {
      final result = await FilePicker.platform.pickFiles(type: FileType.image);

      if (result == null || result.files.isEmpty) {
        // emit(
        //   ImagePickerError(
        //     error: Exception("Error loading picture, please try again"),
        //   ),
        // );
        return;
      }

      if (kIsWeb) {
        final bytes = result.files.first.bytes!;
        emit(ImagePickerBytesLoaded(bytes: bytes));
      } else {
        final file = File(result.files.single.path!);
        emit(ImagePickerFileLoaded(file: file));
      }
    } on Exception catch (error) {
      emit(ImagePickerError(error: error));
    }
  }

  void reset() {
    if (state is ImagePickerLoading) return;

    emit(ImagePickerEmtpy());
  }
}
