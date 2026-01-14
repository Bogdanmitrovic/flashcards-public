// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_report_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserReportDto _$UserReportDtoFromJson(Map<String, dynamic> json) =>
    _UserReportDto(
      id: json['id'] as String?,
      reason: $enumDecode(_$ReportReasonEnumMap, json['reason']),
      reportTime: const DatetimeTimestampConverter().fromJson(
        json['reportTime'] as Timestamp,
      ),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UserReportDtoToJson(
  _UserReportDto instance,
) => <String, dynamic>{
  'reason': _$ReportReasonEnumMap[instance.reason]!,
  'reportTime': const DatetimeTimestampConverter().toJson(instance.reportTime),
  'message': instance.message,
};

const _$ReportReasonEnumMap = {
  ReportReason.inappropriateContent: 'inappropriateContent',
  ReportReason.incorrectInformation: 'incorrectInformation',
  ReportReason.poorTranslation: 'poorTranslation',
  ReportReason.duplicateFlashcard: 'duplicateFlashcard',
  ReportReason.other: 'other',
};
