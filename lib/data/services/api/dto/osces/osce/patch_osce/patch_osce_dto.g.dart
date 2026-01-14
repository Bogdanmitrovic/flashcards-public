// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_osce_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchOsceDto _$PatchOsceDtoFromJson(Map<String, dynamic> json) =>
    _PatchOsceDto(
      name: json['name'] as String?,
      scenario: json['scenario'] as String?,
      isPaid: json['isPaid'] as bool?,
    );

Map<String, dynamic> _$PatchOsceDtoToJson(_PatchOsceDto instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.scenario case final value?) 'scenario': value,
      if (instance.isPaid case final value?) 'isPaid': value,
    };
