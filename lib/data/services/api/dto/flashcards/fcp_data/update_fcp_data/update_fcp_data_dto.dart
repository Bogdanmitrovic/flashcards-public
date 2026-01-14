import 'package:flashcards/data/mappers/fsrs_mapper.dart';
import 'package:flashcards/data/services/api/dto/flashcards/fcp_data/update_fcp_data/update_flashcard_snapshot/update_flashcard_snapshot_dto.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fsrs/fsrs.dart';

part 'update_fcp_data_dto.freezed.dart';

part 'update_fcp_data_dto.g.dart';

const _snapshotFieldName = 'flashcardSnapshot';

@freezed
abstract class UpdateFcpDataDto with _$UpdateFcpDataDto {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory UpdateFcpDataDto({
    String? profileId,
    String? flashcardId,
    bool? hasBookmark,
    bool? ignored,
    @JsonKey(name: _snapshotFieldName)
    UpdateFlashcardSnapshotDto? updateFlashcardSnapshotDto,
    @JsonKey(
      name: 'fsrs_card',
      fromJson: FsrsCardX.fromJson,
      toJson: FsrsCardX.toJsonStatic,
    )
    Card? fsrsCard,
  }) = _UpdateFcpDataDto;
  factory UpdateFcpDataDto.fromJson(JsonMap json) =>
      _$UpdateFcpDataDtoFromJson(json);
}

extension UpdateFcpDataDtoX on UpdateFcpDataDto {
  JsonMap toJsonWithIncludedNulls() {
    final json = toJson();

    if (updateFlashcardSnapshotDto == null) {
      json[_snapshotFieldName] = null;
    }
    return json;
  }
}
