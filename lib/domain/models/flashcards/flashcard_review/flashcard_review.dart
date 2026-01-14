import 'package:flashcards/domain/models/flashcards/stat_record/stat_record.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_review.freezed.dart';

@freezed
abstract class FlashcardReview with _$FlashcardReview {
  const factory FlashcardReview({
    required String packName,
    required int packFlashcardsCount,
    required StatRecord record,
  }) = _FlashcardReview;
}
