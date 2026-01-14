import 'package:flashcards/data/services/api/dto/osces/osce_performance/patch_osce_performance/patch_osce_snapshot/patch_osce_snapshot_dto.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patch_osce_dto.freezed.dart';
part 'patch_osce_dto.g.dart';

@freezed
abstract class PatchOsceDto with _$PatchOsceDto {
  @JsonSerializable(includeIfNull: false)
  const factory PatchOsceDto({String? name, String? scenario, bool? isPaid}) =
      _PatchOsceDto;

  factory PatchOsceDto.fromJson(JsonMap json) => _$PatchOsceDtoFromJson(json);
}

extension PatchOsceDtoX on PatchOsceDto {
  PatchOsceSnapshotDto? toOscePatchSnapshot() {
    if (name != null && scenario != null) {
      return PatchOsceSnapshotDto(name: name, scenario: scenario);
    }

    if (name != null) {
      return PatchOsceSnapshotDto(name: name);
    }

    if (scenario != null) {
      return PatchOsceSnapshotDto(scenario: scenario);
    }

    return null;
  }
}
