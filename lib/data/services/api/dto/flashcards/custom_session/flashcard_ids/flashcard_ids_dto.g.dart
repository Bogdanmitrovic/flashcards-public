// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_ids_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FlashcardIdsDto _$FlashcardIdsDtoFromJson(Map<String, dynamic> json) =>
    _FlashcardIdsDto(
      flashcardIds: (json['flashcardIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$FlashcardIdsDtoToJson(_FlashcardIdsDto instance) =>
    <String, dynamic>{'flashcardIds': instance.flashcardIds};
