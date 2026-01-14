// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_report_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FlashcardReportDto _$FlashcardReportDtoFromJson(Map<String, dynamic> json) =>
    _FlashcardReportDto(
      id: json['id'] as String?,
      packName: json['packName'] as String,
      flashcardSnapshot: FlashcardSnapshotDto.fromJson(
        json['flashcardSnapshot'] as Map<String, dynamic>,
      ),
      reportsCount: (json['reportsCount'] as num?)?.toInt() ?? 1,
      firstReportTime: const DatetimeTimestampConverter().fromJson(
        json['firstReportTime'] as Timestamp,
      ),
    );

Map<String, dynamic> _$FlashcardReportDtoToJson(_FlashcardReportDto instance) =>
    <String, dynamic>{
      'packName': instance.packName,
      'flashcardSnapshot': instance.flashcardSnapshot.toJson(),
      'reportsCount': instance.reportsCount,
      'firstReportTime': const DatetimeTimestampConverter().toJson(
        instance.firstReportTime,
      ),
    };
