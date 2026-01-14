// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_osce_snapshot_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchOsceSnapshotDto _$PatchOsceSnapshotDtoFromJson(
  Map<String, dynamic> json,
) => _PatchOsceSnapshotDto(
  name: json['name'] as String?,
  scenario: json['scenario'] as String?,
);

Map<String, dynamic> _$PatchOsceSnapshotDtoToJson(
  _PatchOsceSnapshotDto instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.scenario case final value?) 'scenario': value,
};
