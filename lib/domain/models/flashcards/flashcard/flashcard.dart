import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard.freezed.dart';

@freezed
abstract class Flashcard with _$Flashcard {
  const factory Flashcard({
    required String id,
    required String packId,
    required String question,
    required String answer,
    @Default(false) bool isPaid,
    String? questionImageUrl,
    String? answerImageUrl,
    required List<Tag> tags,
  }) = _Flashcard;
}
