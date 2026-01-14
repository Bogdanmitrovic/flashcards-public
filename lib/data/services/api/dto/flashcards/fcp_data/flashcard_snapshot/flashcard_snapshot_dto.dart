import 'package:flashcards/domain/models/flashcards/bookmark/bookmark.dart';
import 'package:flashcards/domain/models/flashcards/flashcard/flashcard.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_snapshot_dto.freezed.dart';

part 'flashcard_snapshot_dto.g.dart';

@freezed
abstract class FlashcardSnapshotDto with _$FlashcardSnapshotDto {
  const factory FlashcardSnapshotDto({
    required String packId,
    required String question,
    required String answer,
    required String? questionImageUrl,
    required String? answerImageUrl,
    @Default([]) List<String> tags,
  }) = _FlashcardSnapshotDto;

  factory FlashcardSnapshotDto.fromJson(JsonMap json) =>
      _$FlashcardSnapshotDtoFromJson(json);

  factory FlashcardSnapshotDto.fromFlashcardWithBookmark(
    Flashcard flashcard,
    Bookmark bookmark,
  ) => FlashcardSnapshotDto(
    packId: flashcard.packId,
    question: bookmark.question,
    answer: bookmark.answer,
    answerImageUrl: flashcard.answerImageUrl,
    questionImageUrl: flashcard.questionImageUrl,
    tags: flashcard.tags.map((tag) => tag.id).toList(),
  );

  factory FlashcardSnapshotDto.fromFlashcard(Flashcard flashcard) =>
      FlashcardSnapshotDto(
        questionImageUrl: flashcard.questionImageUrl,
        answerImageUrl: flashcard.answerImageUrl,
        packId: flashcard.packId,
        question: flashcard.question,
        answer: flashcard.answer,
        tags: flashcard.tags.toIdList(),
      );
}

extension FlashcardSnapshotDtoX on FlashcardSnapshotDto {
  /// We ask for isPaid in order to attach it to the flashcard domain object.
  /// If you don't plan to use isPaid flag, it will be set to default false value
  Flashcard toFlashcardDomain(String flashcardId, {bool isPaid = false}) => Flashcard(
    id: flashcardId,
    packId: packId,
    question: question,
    answer: answer,
    tags: tags.map((e) => Tag.fromId(e)).toList(),
    questionImageUrl: questionImageUrl,
    answerImageUrl: answerImageUrl,
    isPaid: isPaid
  );
}
