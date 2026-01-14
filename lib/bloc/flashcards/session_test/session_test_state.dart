import 'package:flashcards/domain/models/flashcards/custom_session/custom_session.dart';
import 'package:flashcards/domain/models/flashcards/stat_record/stat_record.dart';
import 'package:flashcards/domain/models/profile/streak/streak.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_test_state.freezed.dart';

enum SessionTestStatus {
  initial,
  loading,
  bookmarkLoading,
  finished,
  noFlashcard,
  error,
}

extension SessionTestStatusX on SessionTestStatus {
  bool get isInitial => this == SessionTestStatus.initial;

  bool get isLoading => this == SessionTestStatus.loading;

  bool get isError => this == SessionTestStatus.error;

  bool get isBookmarkLoading => this == SessionTestStatus.bookmarkLoading;

  bool get isNoFlashcard => this == SessionTestStatus.noFlashcard;

  bool get isFinished => this == SessionTestStatus.finished;
}

@freezed
sealed class SessionTestState with _$SessionTestState {
  const factory SessionTestState.initial() = SessionTestInitial;

  const factory SessionTestState.loading() = SessionTestLoading;

  const factory SessionTestState.loaded({
    @Default(SessionTestStatus.initial) SessionTestStatus status,
    required CustomSession session,
    required StatRecord statRecord,

    /// Since some questions will have cloze they need to be redacted/revealed
    /// for that we need to store the original format of the question
    required String unformattedQuestion,
    @Default(false) bool answerShown,
    Streak? newStreak,
    Exception? error,
  }) = SessionTestLoaded;

  const factory SessionTestState.error(Exception error) = SessionTestError;
}
