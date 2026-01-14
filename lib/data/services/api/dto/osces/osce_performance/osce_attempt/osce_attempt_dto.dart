import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/mappers/datetime_timestamp_converter.dart';
import 'package:flashcards/domain/models/osce/osce_performance/osce_attempt/osce_attempt.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'osce_attempt_dto.freezed.dart';

part 'osce_attempt_dto.g.dart';

@freezed
abstract class OsceAttemptDto with _$OsceAttemptDto {
  const factory OsceAttemptDto({
    @JsonKey(includeToJson: false) String? id,
    @DatetimeTimestampConverter() required DateTime attemptDate,
    required int maxScore,
    required int achievedScore,
  }) = _OsceAttemptDto;

  factory OsceAttemptDto.fromJson(JsonMap json) =>
      _$OsceAttemptDtoFromJson(json);

  factory OsceAttemptDto.fromJsonWithId(JsonMap json, String id) =>
      OsceAttemptDto.fromJson(json).copyWith(id: id);

  factory OsceAttemptDto.fromDomain(OsceAttempt domain) => OsceAttemptDto(
    attemptDate: domain.attemptDate,
    maxScore: domain.maxScore,
    achievedScore: domain.achievedScore,
  );
}

extension OsceAttemptDtoX on OsceAttemptDto {
  OsceAttempt toDomain() => OsceAttempt(
    id: id!,
    attemptDate: attemptDate,
    maxScore: maxScore,
    achievedScore: achievedScore,
  );
}
