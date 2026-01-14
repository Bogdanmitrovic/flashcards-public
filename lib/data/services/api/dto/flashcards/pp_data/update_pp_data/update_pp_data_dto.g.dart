// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_pp_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdatePpDataDto _$UpdatePpDataDtoFromJson(Map<String, dynamic> json) =>
    _UpdatePpDataDto(
      profileId: json['profileId'] as String?,
      packId: json['packId'] as String?,
      packName: json['packName'] as String?,
      firstOpenedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
        json['firstOpenedAt'],
        const DatetimeTimestampConverter().fromJson,
      ),
      lastOpenedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
        json['lastOpenedAt'],
        const DatetimeTimestampConverter().fromJson,
      ),
    );

Map<String, dynamic> _$UpdatePpDataDtoToJson(_UpdatePpDataDto instance) =>
    <String, dynamic>{
      if (instance.profileId case final value?) 'profileId': value,
      if (instance.packId case final value?) 'packId': value,
      if (instance.packName case final value?) 'packName': value,
      if (_$JsonConverterToJson<Timestamp, DateTime>(
            instance.firstOpenedAt,
            const DatetimeTimestampConverter().toJson,
          )
          case final value?)
        'firstOpenedAt': value,
      if (_$JsonConverterToJson<Timestamp, DateTime>(
            instance.lastOpenedAt,
            const DatetimeTimestampConverter().toJson,
          )
          case final value?)
        'lastOpenedAt': value,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
