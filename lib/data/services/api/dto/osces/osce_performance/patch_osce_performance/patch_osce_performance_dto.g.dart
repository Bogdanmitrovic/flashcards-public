// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_osce_performance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchOscePerformanceDto _$PatchOscePerformanceDtoFromJson(
  Map<String, dynamic> json,
) => _PatchOscePerformanceDto(
  osceSnapshot: json['osceSnapshot'] == null
      ? null
      : PatchOsceSnapshotDto.fromJson(
          json['osceSnapshot'] as Map<String, dynamic>,
        ),
  bestScore: (json['bestScore'] as num?)?.toInt(),
  attemptsCount: (json['attemptsCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$PatchOscePerformanceDtoToJson(
  _PatchOscePerformanceDto instance,
) => <String, dynamic>{
  if (instance.osceSnapshot?.toJson() case final value?) 'osceSnapshot': value,
  if (instance.bestScore case final value?) 'bestScore': value,
  if (instance.attemptsCount case final value?) 'attemptsCount': value,
};
