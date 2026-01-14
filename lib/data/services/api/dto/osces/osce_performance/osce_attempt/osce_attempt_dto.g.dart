// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'osce_attempt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OsceAttemptDto _$OsceAttemptDtoFromJson(Map<String, dynamic> json) =>
    _OsceAttemptDto(
      id: json['id'] as String?,
      attemptDate: const DatetimeTimestampConverter().fromJson(
        json['attemptDate'] as Timestamp,
      ),
      maxScore: (json['maxScore'] as num).toInt(),
      achievedScore: (json['achievedScore'] as num).toInt(),
    );

Map<String, dynamic> _$OsceAttemptDtoToJson(_OsceAttemptDto instance) =>
    <String, dynamic>{
      'attemptDate': const DatetimeTimestampConverter().toJson(
        instance.attemptDate,
      ),
      'maxScore': instance.maxScore,
      'achievedScore': instance.achievedScore,
    };
