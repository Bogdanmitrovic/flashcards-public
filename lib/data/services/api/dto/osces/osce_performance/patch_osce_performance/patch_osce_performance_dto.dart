import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/mappers/datetime_timestamp_converter.dart';
import 'package:flashcards/data/services/api/dto/osces/osce_performance/patch_osce_performance/patch_osce_snapshot/patch_osce_snapshot_dto.dart';
import 'package:flashcards/domain/models/osce/osce_performance/osce_performance.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patch_osce_performance_dto.freezed.dart';

part 'patch_osce_performance_dto.g.dart';

@freezed
abstract class PatchOscePerformanceDto with _$PatchOscePerformanceDto {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory PatchOscePerformanceDto({
    PatchOsceSnapshotDto? osceSnapshot,
    int? bestScore,
    int? attemptsCount,
  }) = _PatchOscePerformanceDto;

  factory PatchOscePerformanceDto.fromJson(JsonMap json) =>
      _$PatchOscePerformanceDtoFromJson(json);
}
