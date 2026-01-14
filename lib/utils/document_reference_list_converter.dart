import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class DocumentReferenceListConverter
    implements JsonConverter<List<DocumentReference<Object?>>, List<dynamic>> {
  const DocumentReferenceListConverter();

  @override
  List<DocumentReference<Object?>> fromJson(List<dynamic> json) {
    return json.map((e) => e as DocumentReference<Object?>).toList();
  }

  @override
  List<dynamic> toJson(List<DocumentReference<Object?>> object) {
    return object;
  }
}
