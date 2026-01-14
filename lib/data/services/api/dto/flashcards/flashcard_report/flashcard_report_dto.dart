import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/mappers/datetime_timestamp_converter.dart';
import 'package:flashcards/data/services/api/dto/flashcards/fcp_data/flashcard_snapshot/flashcard_snapshot_dto.dart';
import 'package:flashcards/domain/models/flashcards/reports/flashcard_report/flashcard_report.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_report_dto.g.dart';

part 'flashcard_report_dto.freezed.dart';

@freezed
abstract class FlashcardReportDto with _$FlashcardReportDto {
  /// Id of this object is flashcardId
  @JsonSerializable(explicitToJson: true)
  const factory FlashcardReportDto({
    @JsonKey(includeToJson: false) String? id,
    required String packName,
    required FlashcardSnapshotDto flashcardSnapshot,
    @Default(1) int reportsCount,
    @DatetimeTimestampConverter() required DateTime firstReportTime,
  }) = _FlashcardReportDto;

  factory FlashcardReportDto.fromJson(JsonMap json) =>
      _$FlashcardReportDtoFromJson(json);

  factory FlashcardReportDto.fromJsonWithId(JsonMap json, String id) =>
      _$FlashcardReportDtoFromJson(json).copyWith(id: id);

  factory FlashcardReportDto.fromDomain(FlashcardReport report) =>
      FlashcardReportDto(
        id: report.flashcard.id,
        reportsCount: report.reportsCount,
        packName: report.packName,
        flashcardSnapshot: FlashcardSnapshotDto.fromFlashcard(report.flashcard),
        firstReportTime: report.firstReportTime,
      );
}

extension FlashcardReportDtoX on FlashcardReportDto {
  FlashcardReport toDomain() => FlashcardReport(
    /// I don't care if the flashcard is paid or not, so it will just apply the default
    /// 'false' value
    flashcard: flashcardSnapshot.toFlashcardDomain(id!),
    packName: packName,
    reportsCount: reportsCount,
    firstReportTime: firstReportTime,
  );
}
