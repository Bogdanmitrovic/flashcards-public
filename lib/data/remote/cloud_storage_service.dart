import 'package:firebase_storage/firebase_storage.dart';

/// Service for accessing storage references for database documents. Data is organized
/// exactly like in firestore db, references to the data are the same as in db.
class CloudStorageService {
  final _storageRef = FirebaseStorage.instance.ref();

  // Osce images
  Reference get _oscesRef => _storageRef.child("osces");

  Reference _getOsceRef(String osceId) => _oscesRef.child(osceId);

  Reference _getQuestionsRef(String osceId) =>
      _getOsceRef(osceId).child("questions");

  Reference _getQuestionRef(String osceId, String questionId) =>
      _getQuestionsRef(osceId).child(questionId);

  /// It gives you the reference to the image for the specific question, the hierarchy goes like this:
  /// /osces/{osceId}/questions/{questionId}/image.jpg
  Reference getQuestionImageRef({
    required String osceId,
    required String questionId,
  }) {
    return _getQuestionRef(osceId, questionId).child("image.jpg");
  }

  // Flashcard images, one for question, one for answer
  Reference get _flashcardsRef => _storageRef.child("flashcards");

  Reference _getFlashcardRef(String flashcardId) =>
      _flashcardsRef.child(flashcardId);

  /// It gives you reference to the flashcard's question image, the path looks like this:
  /// /flashcards/{flashcardId}/question.jpg
  Reference getFlashcardQuestionImageRef(String flashcardId) =>
      _getFlashcardRef(flashcardId).child("question.jpg");

  /// It gives you reference to the flashcard's answer image, the path looks like this:
  /// /flashcards/{flashcardId}/answer.jpg
  Reference getFlashcardAnswerImageRef(String flashcardId) =>
      _getFlashcardRef(flashcardId).child("answer.jpg");
}
