import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class DocumentReferenceConverter
    implements JsonConverter<DocumentReference<Object?>, Object?> {
  const DocumentReferenceConverter();

  @override
  DocumentReference<Object?> fromJson(Object? json) {
    return json as DocumentReference<Object?>;
  }

  @override
  Object? toJson(DocumentReference<Object?> object) {
    return object;
  }
}
