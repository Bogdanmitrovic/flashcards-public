import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_dto.freezed.dart';

part 'tag_dto.g.dart';

@freezed
abstract class TagDto with _$TagDto {
  const factory TagDto({
    @JsonKey(includeToJson: false) required String? id,
    required String name,
  }) = _TagDto;

  factory TagDto.fromJson(JsonMap json) => _$TagDtoFromJson(json);

  factory TagDto.fromJsonWithId(JsonMap json, String id) =>
      TagDto.fromJson(json).copyWith(id: id);

  factory TagDto.fromTagDomain(Tag tag) => TagDto(id: tag.id, name: tag.name);
}

extension TagDtoX on TagDto {
  Tag toTagDomain() => Tag(id: id!, name: name);
}
