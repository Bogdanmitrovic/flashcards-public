import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/mappers/datetime_timestamp_converter.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_pp_data_dto.freezed.dart';
part 'update_pp_data_dto.g.dart';

@freezed
abstract class UpdatePpDataDto with _$UpdatePpDataDto {
  @JsonSerializable(includeIfNull: false)
  const factory UpdatePpDataDto({
    String? profileId,
    String? packId,
    String? packName,
    @DatetimeTimestampConverter() DateTime? firstOpenedAt,
    @DatetimeTimestampConverter() DateTime? lastOpenedAt,
  }) = _UpdatePpDataDto;

  factory UpdatePpDataDto.fromJson(JsonMap json) =>
      _$UpdatePpDataDtoFromJson(json);
}
