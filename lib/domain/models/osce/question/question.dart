import 'package:flashcards/domain/models/osce/question/check/check.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';

@freezed
abstract class Question with _$Question {
  const factory Question({
    required String id,
    required String text,
    required List<Check> checks,
    String? imageDownloadUrl,
    required int index,
  }) = _Question;

  factory Question.empty() => Question(id: "", text: "", checks: [], index: -1);
}

extension QuestionX on Question {
  int getMaxScore() => checks
      .where((check) => !check.isTitle)
      .fold(0, (sum, check) => sum + check.score);

  int getAchievedScore() => checks
      .where((check) => check.isChecked && !check.isTitle)
      .fold(0, (sum, check) => sum + check.score);
}

extension QuestionListX on List<Question> {
  double percentChecked() {
    final allRealChecks =
        expand((q) => q.checks).where((check) => !check.isTitle).toList();

    return allRealChecks.isEmpty
        ? 0
        : allRealChecks.where((c) => c.isChecked).length / allRealChecks.length;
  }
}
