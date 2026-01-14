import 'package:flashcards/data/services/api/dto/flashcards/custom_session/flashcard_ids/flashcard_ids_patch/flashcard_ids_patch_dto.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_pack_dto.freezed.dart';

part 'update_pack_dto.g.dart';

@freezed
abstract class UpdatePackDto with _$UpdatePackDto {
  @JsonSerializable(includeIfNull: false)
  const factory UpdatePackDto({
    String? name,
    @JsonKey(includeFromJson: false, includeToJson: false)
    FlashcardIdsPatchDto? flashcardIdsPatchDto,
    int? flashcardsCount,
    Map<String, int>? tagCounts,
    List<String>? tags,
  }) = _UpdatePackDto;

  factory UpdatePackDto.fromJson(JsonMap json) => _$UpdatePackDtoFromJson(json);
}
