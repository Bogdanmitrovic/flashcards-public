import 'package:flashcards/data/services/api/dto/osces/question/check/check_dto.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patch_question_dto.freezed.dart';

part 'patch_question_dto.g.dart';

@freezed
abstract class PatchQuestionDto with _$PatchQuestionDto {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory PatchQuestionDto({
    String? imageDownloadUrl,
    String? text,
    List<CheckDto>? checks,
    int? index,
  }) = _PatchQuestionDto;

  factory PatchQuestionDto.fromJson(JsonMap json) =>
      _$PatchQuestionDtoFromJson(json);
}

extension PatchQuestionDtoX on PatchQuestionDto {
  toJsonWithIncludedNullImage() {
    final json = toJson();

    if (imageDownloadUrl == null) {
      json["imageDownloadUrl"] = null;
    }
    return json;
  }
}
