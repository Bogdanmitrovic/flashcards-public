import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_session.freezed.dart';

@freezed
abstract class CustomSession with _$CustomSession {
  const factory CustomSession({
    required String id,
    required List<String> flashcardIds,
    required int currentIndex,
    required int cardCount,
    required int correctCount,
  }) = _CustomSession;
}

extension CustomSessionX on CustomSession {
  String get currentFlashcardId => flashcardIds[currentIndex];

  /// It returns null if the pack is finished or will be finished in the next step
  String? get peekNextFlashcardId {
    final willBeFinished = currentIndex >= cardCount - 1;
    return willBeFinished ? null : flashcardIds[currentIndex + 1];
  }

  CustomSession incrementCurrentIndex() =>
      copyWith(currentIndex: currentIndex + 1);

  CustomSession incrementCurrentIndexAndCorrectCount() =>
      copyWith(currentIndex: currentIndex + 1, correctCount: correctCount + 1);

  bool get isFinished => currentIndex >= cardCount;
}
