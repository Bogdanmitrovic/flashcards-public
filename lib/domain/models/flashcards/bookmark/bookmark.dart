import 'package:equatable/equatable.dart';
import 'package:fsrs/fsrs.dart';

class Bookmark extends Equatable {
  final String flashcardId;
  final String question;
  final String answer;
  final Card fsrsCard;

  const Bookmark({
    required this.flashcardId,
    required this.question,
    required this.answer,
    required this.fsrsCard,
  });

  @override
  List<Object?> get props => [flashcardId, question, answer, fsrsCard];
}
