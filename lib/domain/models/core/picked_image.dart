import 'dart:io';
import 'dart:typed_data';

class PickedImage {
  /// mobile
  final File? file;

  /// web
  final Uint8List? bytes;

  PickedImage({this.file, this.bytes})
    : assert(
        (file == null) != (bytes == null),
        'Exactly one of file or bytes must be provided',
      );
}

extension PickedImageX on PickedImage {
  Future<Uint8List> getImageBytes() async {
    if (file != null) {
      return await file!.readAsBytes();
    }

    return bytes!;
  }
}
