import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flashcards/data/services/api/users/auth_service.dart';
import 'package:flashcards/utils/typedefs.dart';

class PaginatedDtoResult<T> {
  final List<T> items;
  final DocumentSnapshot<JsonMap>? lastDocument;

  const PaginatedDtoResult({required this.items, required this.lastDocument});
}

User getCurrentUserAndThrow({
  required AuthService authService,
  required String repoName,
}) {
  final user = authService.getCurrentUser();
  if (user == null) {
    throw Exception("User is null inside $repoName");
  }
  return user;
}

bool isErrorNotFound(Exception error) =>
    error is FirebaseException && error.code == "not-found";

DocumentSnapshot<JsonMap>? getLastDocFromSnapshot(
  QuerySnapshot<JsonMap> snapshot,
) {
  DocumentSnapshot<JsonMap>? lastDoc;
  if (snapshot.docs.isNotEmpty) {
    lastDoc = snapshot.docs[snapshot.docs.length - 1];
  }
  return lastDoc;
}
