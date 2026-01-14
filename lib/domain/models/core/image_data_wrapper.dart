import 'package:flashcards/domain/models/core/picked_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_data_wrapper.freezed.dart';

/// Used to encapsulate image data for editing image.
/// The flow would usually go like this:
/// pickedImage is local image data, it gets picked using imagePicker, if it's null it will use downloadUrl to load the image
/// if both are null it means there is no image.
/// When admin manually changes the image, or deletes it the isChanged should get flipped to true
/// so that we know if we should send it to the server.
/// It works like this because if we send "null" as image data to the server, server will try to delete it from storage
/// If we send nothing server wont touch the storage, that is why we need isChanged bool.
@freezed
abstract class ImageDataWrapper with _$ImageDataWrapper {
  const factory ImageDataWrapper({
    PickedImage? pickedImage,
    String? imageDownloadUrl,
    @Default(false) bool isChanged,
  }) = _ImageDataWrapper;
}

extension ImageDataWrapperX on ImageDataWrapper {
  bool get imageDataExists => pickedImage != null || imageDownloadUrl != null;

  /// ($1) is if image was manually deleted.
  ///
  ///
  /// ($2) is returned image object, it's null if the ($1) is true
  (bool, PickedImage?) getPickedImageAndDeletedFlag() {
    final imageDeleted = isChanged && pickedImage == null;
    return (imageDeleted, pickedImage);
  }

  bool get isEmpty => pickedImage == null && imageDownloadUrl == null;
}
