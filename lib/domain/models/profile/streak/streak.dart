import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/mappers/datetime_timestamp_converter.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'streak.freezed.dart';

part 'streak.g.dart';

@freezed
abstract class Streak with _$Streak {
  const factory Streak({
    required int count,
    @DatetimeTimestampConverter() required DateTime lastStreakDate,
  }) = _Streak;

  factory Streak.fromJson(JsonMap json) => _$StreakFromJson(json);
}
