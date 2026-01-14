import 'package:flashcards/domain/models/flashcards/flashcard/flashcard.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_report.freezed.dart';

@freezed
abstract class FlashcardReport with _$FlashcardReport {
  const factory FlashcardReport({
    required Flashcard flashcard,
    required String packName,
    required int reportsCount,
    required DateTime firstReportTime,
  }) = _FlashcardReport;
}
