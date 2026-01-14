import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/mappers/datetime_timestamp_converter.dart';
import 'package:flashcards/data/services/api/dto/osces/osce_performance/osce_snapshot/osce_snapshot_dto.dart';
import 'package:flashcards/domain/models/osce/osce_performance/osce_performance.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'osce_performance_dto.freezed.dart';

part 'osce_performance_dto.g.dart';

@freezed
abstract class OscePerformanceDto with _$OscePerformanceDto {
  /// Id of this document is the same as OSCE id
  ///
  /// But it still has osceId field that is the same as doc id.
  /// The reason is that we will user collection group query, which would combine all perf documents from all profiles and a lot of them will have the same id
  /// We can then filter them by osceId.
  @JsonSerializable(explicitToJson: true)
  const factory OscePerformanceDto({
    required String osceId,
    required OsceSnapshotDto osceSnapshot,
    @DatetimeTimestampConverter() required DateTime firstAttemptDate,
    required int bestScore,
    required int attemptsCount,
  }) = _OscePerformanceDto;

  factory OscePerformanceDto.fromJson(JsonMap json) =>
      _$OscePerformanceDtoFromJson(json);

  factory OscePerformanceDto.fromJsonWithId(JsonMap json, String id) =>
      OscePerformanceDto.fromJson(json).copyWith(osceId: id);

  factory OscePerformanceDto.fromDomain(OscePerformance domain) =>
      OscePerformanceDto(
        osceId: domain.simpleOsce.id,
        osceSnapshot: OsceSnapshotDto.fromSimpleOsce(domain.simpleOsce),
        firstAttemptDate: domain.firstAttemptDate,
        bestScore: domain.bestScore,
        attemptsCount: domain.attemptsCount,
      );
}

extension OscePerformanceDtoX on OscePerformanceDto {
  OscePerformance toDomain() => OscePerformance(
    simpleOsce: osceSnapshot.toSimpleOsce(osceId),
    firstAttemptDate: firstAttemptDate,
    bestScore: bestScore,
    attemptsCount: attemptsCount,
  );
}
