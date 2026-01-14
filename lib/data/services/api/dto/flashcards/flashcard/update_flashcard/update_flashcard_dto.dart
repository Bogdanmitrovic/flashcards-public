import 'dart:typed_data';
import 'package:flashcards/data/mappers/uint8list_converter.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_flashcard_dto.freezed.dart';

part 'update_flashcard_dto.g.dart';

@freezed
abstract class UpdateFlashcardDto with _$UpdateFlashcardDto {
  @JsonSerializable(includeIfNull: false)
  const factory UpdateFlashcardDto({
    String? question,
    String? answer,
    List<String>? tags,
  }) = _UpdateFlashcardDto;

  factory UpdateFlashcardDto.fromJson(JsonMap json) =>
      _$UpdateFlashcardDtoFromJson(json);
}
