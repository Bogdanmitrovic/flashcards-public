import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/mappers/datetime_timestamp_converter.dart';
import 'package:flashcards/domain/models/osce/osce_performance/osce_performance.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patch_osce_snapshot_dto.freezed.dart';

part 'patch_osce_snapshot_dto.g.dart';

@freezed
abstract class PatchOsceSnapshotDto with _$PatchOsceSnapshotDto {
  @JsonSerializable(includeIfNull: false)
  const factory PatchOsceSnapshotDto({String? name, String? scenario}) =
      _PatchOsceSnapshotDto;

  factory PatchOsceSnapshotDto.fromJson(JsonMap json) =>
      _$PatchOsceSnapshotDtoFromJson(json);
}
