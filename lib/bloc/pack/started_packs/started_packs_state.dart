import 'package:flashcards/domain/models/flashcards/pack_progress/pack_progress.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'started_packs_state.freezed.dart';

enum StartedPacksLoadedStatus {
  initial,
  resettingProgress,
  resetSuccessful,
  error,
}

extension StartedPacksLoadedStatusX on StartedPacksLoadedStatus {
  bool get isInitial => this == StartedPacksLoadedStatus.initial;

  bool get isResettingProgress =>
      this == StartedPacksLoadedStatus.resettingProgress;

  bool get isResetSuccessful =>
      this == StartedPacksLoadedStatus.resetSuccessful;

  bool get isError => this == StartedPacksLoadedStatus.error;
}

@freezed
abstract class StartedPacksState with _$StartedPacksState {
  const factory StartedPacksState({
    @Default(StartedPacksLoadedStatus.initial) StartedPacksLoadedStatus status,
    required PagingState<int, PackProgress> pagingState,
    Exception? error,
  }) = _StartedPacksState;
}
