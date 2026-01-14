import 'package:freezed_annotation/freezed_annotation.dart';

part 'osce_attempt.freezed.dart';

@freezed
abstract class OsceAttempt with _$OsceAttempt {
  const factory OsceAttempt({
    required String id,
    required DateTime attemptDate,
    required int maxScore,
    required int achievedScore,
  }) = _OsceAttempt;
}
