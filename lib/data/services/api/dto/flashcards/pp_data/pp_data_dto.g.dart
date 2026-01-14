// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pp_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PpDataDto _$PpDataDtoFromJson(Map<String, dynamic> json) => _PpDataDto(
  profileId: json['profileId'] as String,
  packId: json['packId'] as String,
  packName: json['packName'] as String,
  firstOpenedAt: const DatetimeTimestampConverter().fromJson(
    json['firstOpenedAt'] as Timestamp,
  ),
  lastOpenedAt: const DatetimeTimestampConverter().fromJson(
    json['lastOpenedAt'] as Timestamp,
  ),
);

Map<String, dynamic> _$PpDataDtoToJson(_PpDataDto instance) =>
    <String, dynamic>{
      'profileId': instance.profileId,
      'packId': instance.packId,
      'packName': instance.packName,
      'firstOpenedAt': const DatetimeTimestampConverter().toJson(
        instance.firstOpenedAt,
      ),
      'lastOpenedAt': const DatetimeTimestampConverter().toJson(
        instance.lastOpenedAt,
      ),
    };
