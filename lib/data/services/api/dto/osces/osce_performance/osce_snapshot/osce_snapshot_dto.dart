import 'package:flashcards/domain/models/osce/simple_osce/simple_osce.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'osce_snapshot_dto.freezed.dart';

part 'osce_snapshot_dto.g.dart';

@freezed
abstract class OsceSnapshotDto with _$OsceSnapshotDto {
  @JsonSerializable(includeIfNull: false)
  const factory OsceSnapshotDto({
    required String name,
    required String scenario,
    required bool isPaid,
  }) = _OsceSnapshotDto;

  factory OsceSnapshotDto.fromJson(JsonMap json) =>
      _$OsceSnapshotDtoFromJson(json);

  factory OsceSnapshotDto.fromSimpleOsce(SimpleOsce simpleOsce) =>
      OsceSnapshotDto(
        name: simpleOsce.name,
        scenario: simpleOsce.scenario,
        isPaid: simpleOsce.isPaid,
      );
}

extension OsceSnapshotDtoX on OsceSnapshotDto {
  SimpleOsce toSimpleOsce(String osceId) =>
      SimpleOsce(id: osceId, name: name, scenario: scenario, isPaid: isPaid);
}
