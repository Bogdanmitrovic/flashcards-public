// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_flashcard_snapshot_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateFlashcardSnapshotDto _$UpdateFlashcardSnapshotDtoFromJson(
  Map<String, dynamic> json,
) => _UpdateFlashcardSnapshotDto(
  packId: json['packId'] as String?,
  question: json['question'] as String?,
  answer: json['answer'] as String?,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$UpdateFlashcardSnapshotDtoToJson(
  _UpdateFlashcardSnapshotDto instance,
) => <String, dynamic>{
  if (instance.packId case final value?) 'packId': value,
  if (instance.question case final value?) 'question': value,
  if (instance.answer case final value?) 'answer': value,
  if (instance.tags case final value?) 'tags': value,
};
