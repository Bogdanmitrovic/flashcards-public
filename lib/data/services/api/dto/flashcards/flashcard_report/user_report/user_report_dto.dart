import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/mappers/datetime_timestamp_converter.dart';
import 'package:flashcards/domain/enums/report_reason.dart';
import 'package:flashcards/domain/models/flashcards/reports/user_report/user_report.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_report_dto.g.dart';

part 'user_report_dto.freezed.dart';

@freezed
abstract class UserReportDto with _$UserReportDto {
  /// Id of this object is userId
  const factory UserReportDto({
    @JsonKey(includeToJson: false) String? id,
    @JsonEnum(fieldRename: FieldRename.pascal) required ReportReason reason,
    @DatetimeTimestampConverter() required DateTime reportTime,
    required String? message,
  }) = _UserReportDto;

  factory UserReportDto.fromJson(JsonMap json) => _$UserReportDtoFromJson(json);

  factory UserReportDto.fromJsonWithId(JsonMap json, String id) =>
      _$UserReportDtoFromJson(json).copyWith(id: id);

  factory UserReportDto.fromDomain(UserReport report) => UserReportDto(
    reason: report.reason,
    reportTime: report.reportTime,
    message: report.message,
  );
}

extension UserReportDtoX on UserReportDto {
  UserReport toDomain() => UserReport(
    userId: id!,
    reason: reason,
    reportTime: reportTime,
    message: message,
  );
}
