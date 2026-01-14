import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_session_summary.freezed.dart';

@freezed
abstract class CustomSessionSummary with _$CustomSessionSummary {
  const factory CustomSessionSummary({
    required String id,
    required DateTime createdAt,
    required bool isPaid,
    required int cardCount,
    required int correctCount,
    required int currentIndex,
  }) = _CustomSeesionSummary;
}

extension CustomSessionSummaryX on CustomSessionSummary {
  bool get isFinished => currentIndex >= cardCount;
}
