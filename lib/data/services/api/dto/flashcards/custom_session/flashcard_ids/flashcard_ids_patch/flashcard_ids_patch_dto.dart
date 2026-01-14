import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_ids_patch_dto.freezed.dart';

part 'flashcard_ids_patch_dto.g.dart';

@freezed
abstract class FlashcardIdsPatchDto with _$FlashcardIdsPatchDto {
  @JsonSerializable(includeIfNull: false)
  const factory FlashcardIdsPatchDto({List<String>? flashcardIds}) =
      _FlashcardIdsPatchDto;

  factory FlashcardIdsPatchDto.fromJson(JsonMap json) =>
      _$FlashcardIdsPatchDtoFromJson(json);
}
