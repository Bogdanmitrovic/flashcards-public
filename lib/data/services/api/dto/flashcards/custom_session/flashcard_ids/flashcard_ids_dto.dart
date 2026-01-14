import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_ids_dto.freezed.dart';

part 'flashcard_ids_dto.g.dart';

@freezed
abstract class FlashcardIdsDto with _$FlashcardIdsDto {
  const factory FlashcardIdsDto({required List<String> flashcardIds}) =
      _FlashcardIdsDto;

  factory FlashcardIdsDto.fromJson(JsonMap json) =>
      _$FlashcardIdsDtoFromJson(json);
}
