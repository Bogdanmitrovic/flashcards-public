// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_question_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchQuestionDto _$PatchQuestionDtoFromJson(Map<String, dynamic> json) =>
    _PatchQuestionDto(
      imageDownloadUrl: json['imageDownloadUrl'] as String?,
      text: json['text'] as String?,
      checks: (json['checks'] as List<dynamic>?)
          ?.map((e) => CheckDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      index: (json['index'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PatchQuestionDtoToJson(
  _PatchQuestionDto instance,
) => <String, dynamic>{
  if (instance.imageDownloadUrl case final value?) 'imageDownloadUrl': value,
  if (instance.text case final value?) 'text': value,
  if (instance.checks?.map((e) => e.toJson()).toList() case final value?)
    'checks': value,
  if (instance.index case final value?) 'index': value,
};
