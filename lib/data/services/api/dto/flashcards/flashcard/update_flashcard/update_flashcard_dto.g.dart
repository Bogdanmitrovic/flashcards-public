// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_flashcard_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateFlashcardDto _$UpdateFlashcardDtoFromJson(Map<String, dynamic> json) =>
    _UpdateFlashcardDto(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UpdateFlashcardDtoToJson(_UpdateFlashcardDto instance) =>
    <String, dynamic>{
      if (instance.question case final value?) 'question': value,
      if (instance.answer case final value?) 'answer': value,
      if (instance.tags case final value?) 'tags': value,
    };
