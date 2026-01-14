import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_session_patch_dto.freezed.dart';
part 'custom_session_patch_dto.g.dart';

@freezed
abstract class CustomSessionPatchDto with _$CustomSessionPatchDto {
  @JsonSerializable(includeIfNull: false)
  const factory CustomSessionPatchDto({int? correctCount, int? currentIndex}) =
      _CustomSessionPatchDto;

  factory CustomSessionPatchDto.fromJson(JsonMap json) =>
      _$CustomSessionPatchDtoFromJson(json);
}
