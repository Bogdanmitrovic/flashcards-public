import 'package:flashcards/domain/models/osce/simple_osce/simple_osce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'osce_performance.freezed.dart';

@freezed
abstract class OscePerformance with _$OscePerformance {
  const factory OscePerformance({
    required SimpleOsce simpleOsce,
    required DateTime firstAttemptDate,
    required int bestScore,
    required int attemptsCount,
  }) = _OscePerformance;
}
