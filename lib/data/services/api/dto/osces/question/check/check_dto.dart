import 'package:flashcards/domain/models/osce/question/check/check.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_dto.freezed.dart';

part 'check_dto.g.dart';

@freezed
abstract class CheckDto with _$CheckDto {
  const factory CheckDto({
    required String text,
    required bool isTitle,
    required int index,
    @Default(1) int score,
  }) = _CheckDto;

  factory CheckDto.fromJson(JsonMap json) => _$CheckDtoFromJson(json);

  factory CheckDto.fromDomain(Check check, int index) => CheckDto(
    text: check.text,
    isTitle: check.isTitle,
    index: index,
    score: check.isTitle ? 0 : check.score,
  );
}

extension CheckDtoX on CheckDto {
  Check toDomain() => Check(
    text: text,
    isTitle: isTitle,
    isChecked: false,
    index: index,
    score: score,
  );
}
