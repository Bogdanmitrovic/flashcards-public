import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_flashcard_snapshot_dto.freezed.dart';

part 'update_flashcard_snapshot_dto.g.dart';

@freezed
abstract class UpdateFlashcardSnapshotDto with _$UpdateFlashcardSnapshotDto {
  @JsonSerializable(includeIfNull: false)
  const factory UpdateFlashcardSnapshotDto({
    String? packId,
    String? question,
    String? answer,
    List<String>? tags,
  }) = _UpdateFlashcardSnapshotDto;

  factory UpdateFlashcardSnapshotDto.fromJson(JsonMap json) =>
      _$UpdateFlashcardSnapshotDtoFromJson(json);
}
