import 'package:flashcards/domain/enums/report_reason.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_report.freezed.dart';

@freezed
abstract class UserReport with _$UserReport {
  const factory UserReport({
    required String userId,
    required ReportReason reason,
    required DateTime reportTime,
    required String? message,
  }) = _UserReport;
}
