import 'package:flashcards/domain/models/flashcards/flashcard_review/flashcard_review.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fc_review_getter_state.freezed.dart';

@freezed
sealed class FcReviewGetterState with _$FcReviewGetterState {
  const factory FcReviewGetterState.initial() = FcReviewGetterInitial;

  const factory FcReviewGetterState.loading() = FcReviewGetterLoading;

  const factory FcReviewGetterState.loaded({
    required FlashcardReview fcReview,
  }) = FcReviewGetterLoaded;

  const factory FcReviewGetterState.forbidden({
    required String question,
    required String answer,
  }) = FcReviewGetterForbidden;

  const factory FcReviewGetterState.error({required Exception error}) =
      FcReviewGetterError;
}
