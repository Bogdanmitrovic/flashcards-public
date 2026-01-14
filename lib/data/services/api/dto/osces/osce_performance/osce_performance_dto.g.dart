// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'osce_performance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OscePerformanceDto _$OscePerformanceDtoFromJson(Map<String, dynamic> json) =>
    _OscePerformanceDto(
      osceId: json['osceId'] as String,
      osceSnapshot: OsceSnapshotDto.fromJson(
        json['osceSnapshot'] as Map<String, dynamic>,
      ),
      firstAttemptDate: const DatetimeTimestampConverter().fromJson(
        json['firstAttemptDate'] as Timestamp,
      ),
      bestScore: (json['bestScore'] as num).toInt(),
      attemptsCount: (json['attemptsCount'] as num).toInt(),
    );

Map<String, dynamic> _$OscePerformanceDtoToJson(_OscePerformanceDto instance) =>
    <String, dynamic>{
      'osceId': instance.osceId,
      'osceSnapshot': instance.osceSnapshot.toJson(),
      'firstAttemptDate': const DatetimeTimestampConverter().toJson(
        instance.firstAttemptDate,
      ),
      'bestScore': instance.bestScore,
      'attemptsCount': instance.attemptsCount,
    };
