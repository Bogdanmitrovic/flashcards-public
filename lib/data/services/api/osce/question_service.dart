// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flashcards/data/services/api/dto/osces/question/question_dto.dart';
// import 'package:flashcards/domain/models/osce/question.dart';
// import 'package:flashcards/utils/result.dart';
//
// class QuestionService {
//   final FirebaseFirestore _db = FirebaseFirestore.instance;
//   final String collectionString = "osce_questions";
//
//   Future<Result<Question>> getDocument(String questionId) async {
//     try {
//       final snapshot =
//           await _db.collection(collectionString).doc(questionId).get();
//       if (snapshot.data() == null) {
//         return Result.error(Exception("Question not found!"));
//       }
//       return Result.ok(
//         Question(id: snapshot.id, text: snapshot.data()!["name"], checks: [])
//       );
//     } on Exception catch (error) {
//       return Result.error(error);
//     }
//   }
// }
