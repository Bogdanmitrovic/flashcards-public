// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'osce_snapshot_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OsceSnapshotDto _$OsceSnapshotDtoFromJson(Map<String, dynamic> json) =>
    _OsceSnapshotDto(
      name: json['name'] as String,
      scenario: json['scenario'] as String,
      isPaid: json['isPaid'] as bool,
    );

Map<String, dynamic> _$OsceSnapshotDtoToJson(_OsceSnapshotDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'scenario': instance.scenario,
      'isPaid': instance.isPaid,
    };
