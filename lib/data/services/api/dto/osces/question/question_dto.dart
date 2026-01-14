import 'package:collection/collection.dart';
import 'package:flashcards/data/services/api/dto/osces/question/check/check_dto.dart';
import 'package:flashcards/domain/models/osce/question/question.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_dto.freezed.dart';

part 'question_dto.g.dart';

@freezed
abstract class QuestionDto with _$QuestionDto {
  @JsonSerializable(explicitToJson: true)
  const factory QuestionDto({
    @JsonKey(includeToJson: false) String? id,
    @Default(null) String? imageDownloadUrl,
    required String text,
    required List<CheckDto> checks,
    required int index,
  }) = _QuestionDto;

  factory QuestionDto.fromJson(JsonMap json) =>
      _$QuestionDtoFromJson(json).sortedChecks();

  factory QuestionDto.fromJsonWithId(JsonMap json, String id) =>
      QuestionDto.fromJson(json).copyWith(id: id);

  factory QuestionDto.fromDomain({
    required Question question,
    required String? imageUrl,
  }) => QuestionDto(
    text: question.text,
    checks:
        question.checks
            .mapIndexed((index, check) => CheckDto.fromDomain(check, index))
            .toList(),
    index: question.index,
    imageDownloadUrl: imageUrl,
  );
}

extension QuestionDtoX on QuestionDto {
  Question toDomain() => Question(
    text: text,
    checks: checks.map((checkDto) => checkDto.toDomain()).toList(),
    index: index,
    id: id!,
    imageDownloadUrl: imageDownloadUrl,
  );

  QuestionDto sortedChecks() {
    final newChecks = List<CheckDto>.of(checks)..sortBy((c) => c.index);
    return copyWith(checks: newChecks);
  }
}

extension QuesionDtoListX on List<QuestionDto> {
  List<Question> toQuestionsDomain() => map((dto) => dto.toDomain()).toList();
}
