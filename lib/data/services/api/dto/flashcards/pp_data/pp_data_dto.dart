import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/mappers/datetime_timestamp_converter.dart';
import 'package:flashcards/domain/models/flashcards/pack_progress/pack_progress.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pp_data_dto.freezed.dart';

part 'pp_data_dto.g.dart';

@freezed
abstract class PpDataDto with _$PpDataDto {
  const factory PpDataDto({
    required String profileId,
    required String packId,
    required String packName,
    @DatetimeTimestampConverter() required DateTime firstOpenedAt,
    @DatetimeTimestampConverter() required DateTime lastOpenedAt,
  }) = _PpDataDto;

  factory PpDataDto.fromJson(JsonMap json) => _$PpDataDtoFromJson(json);
}

extension PpDataDtoX on PpDataDto {
  PackProgress toPackProgressDomain() => PackProgress(
    packId: packId,
    packName: packName,
    firstOpenedAt: firstOpenedAt,
    lastOpenedAt: lastOpenedAt,
  );
}
