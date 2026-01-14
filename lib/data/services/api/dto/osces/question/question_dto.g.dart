// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuestionDto _$QuestionDtoFromJson(Map<String, dynamic> json) => _QuestionDto(
  id: json['id'] as String?,
  imageDownloadUrl: json['imageDownloadUrl'] as String? ?? null,
  text: json['text'] as String,
  checks: (json['checks'] as List<dynamic>)
      .map((e) => CheckDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  index: (json['index'] as num).toInt(),
);

Map<String, dynamic> _$QuestionDtoToJson(_QuestionDto instance) =>
    <String, dynamic>{
      'imageDownloadUrl': instance.imageDownloadUrl,
      'text': instance.text,
      'checks': instance.checks.map((e) => e.toJson()).toList(),
      'index': instance.index,
    };
