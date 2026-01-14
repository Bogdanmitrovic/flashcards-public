// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_snapshot_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FlashcardSnapshotDto _$FlashcardSnapshotDtoFromJson(
  Map<String, dynamic> json,
) => _FlashcardSnapshotDto(
  packId: json['packId'] as String,
  question: json['question'] as String,
  answer: json['answer'] as String,
  questionImageUrl: json['questionImageUrl'] as String?,
  answerImageUrl: json['answerImageUrl'] as String?,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$FlashcardSnapshotDtoToJson(
  _FlashcardSnapshotDto instance,
) => <String, dynamic>{
  'packId': instance.packId,
  'question': instance.question,
  'answer': instance.answer,
  'questionImageUrl': instance.questionImageUrl,
  'answerImageUrl': instance.answerImageUrl,
  'tags': instance.tags,
};
