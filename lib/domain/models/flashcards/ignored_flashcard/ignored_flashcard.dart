import 'package:equatable/equatable.dart';

class IgnoredFlashcard extends Equatable {
  final String flashcardId;
  final String question;
  final String answer;

  const IgnoredFlashcard({
    required this.flashcardId,
    required this.question,
    required this.answer,
  });

  @override
  List<Object?> get props => [flashcardId, question];
}
