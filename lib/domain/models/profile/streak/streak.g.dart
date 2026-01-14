// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streak.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Streak _$StreakFromJson(Map<String, dynamic> json) => _Streak(
  count: (json['count'] as num).toInt(),
  lastStreakDate: const DatetimeTimestampConverter().fromJson(
    json['lastStreakDate'] as Timestamp,
  ),
);

Map<String, dynamic> _$StreakToJson(_Streak instance) => <String, dynamic>{
  'count': instance.count,
  'lastStreakDate': const DatetimeTimestampConverter().toJson(
    instance.lastStreakDate,
  ),
};
