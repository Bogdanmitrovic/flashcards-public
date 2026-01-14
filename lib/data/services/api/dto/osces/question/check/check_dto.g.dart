// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckDto _$CheckDtoFromJson(Map<String, dynamic> json) => _CheckDto(
  text: json['text'] as String,
  isTitle: json['isTitle'] as bool,
  index: (json['index'] as num).toInt(),
  score: (json['score'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$CheckDtoToJson(_CheckDto instance) => <String, dynamic>{
  'text': instance.text,
  'isTitle': instance.isTitle,
  'index': instance.index,
  'score': instance.score,
};
