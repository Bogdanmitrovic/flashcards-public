import 'package:flashcards/bloc/flashcards/flashcard/flashcard_event.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_state.dart';
import 'package:flashcards/data/repositories/flashcards/fcp_repository.dart';
import 'package:flashcards/data/repositories/flashcards/pp_repository.dart';
import 'package:flashcards/data/repositories/users/auth_repository.dart';
import 'package:flashcards/data/repositories/flashcards/flashcard_repository.dart';
import 'package:flashcards/data/repositories/users/profile_repository.dart';
import 'package:flashcards/data/repositories/utils/user_claims.dart';
import 'package:flashcards/data/services/api/dto/users/profile/update_profile/update_profile_dto.dart';
import 'package:flashcards/data/services/api/dto/users/profile/update_profile/update_profile_settings/update_profile_settings_dto.dart';
import 'package:flashcards/data/services/local/local_storage_service.dart';
import 'package:flashcards/domain/models/flashcards/flashcard/flashcard.dart';
import 'package:flashcards/domain/models/flashcards/stat_record/stat_record.dart';
import 'package:flashcards/domain/models/profile/streak/streak.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flashcards/utils/util_functions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fsrs/fsrs.dart';

class FlashcardBloc extends Bloc<FlashcardEvent, FlashcardState> {
  final FlashcardRepository _flashcardRepo;
  final FcpRepository _fcpRepo;
  final ProfileRepository _profileRepo;
  final PpRepository _ppRepo;
  final LocalStorageService _localStorageService;
  late final String _uid;

  final double _newCardsPercentage = 0.2;
  final int _sessionExtendedTargetCards = 20;

  FlashcardBloc({
    required FlashcardRepository flashcardRepo,
    required FcpRepository fcpRepo,
    required AuthRepository authRepo,
    required ProfileRepository profileRepo,
    required PpRepository ppRepo,
    required LocalStorageService localStorageService,
  }) : _flashcardRepo = flashcardRepo,
       _localStorageService = localStorageService,
       _fcpRepo = fcpRepo,
       _profileRepo = profileRepo,
       _ppRepo = ppRepo,
       super(FlashcardState()) {
    final user = authRepo.getCurrentUser();
    if (user == null) {
      throw Exception("User is null");
    }
    _uid = user.uid;

    on<FlashcardTestStarted>(_onFlashcardTestStarted);
    on<FlashcardAnswerShown>(_onFlashcardAnswerShown);
    on<FlashcardHintToggled>(_onFlashcardHintToggled);
    on<FlashcardSessionExtended>(_onFlashcardSessionExtended);
    on<FlashcardCardsPerSessionUpdated>(_onFlashcardCardsPerSessionUpdated);
    on<FlashcardRatingGiven>(_onFlashcardRatingGiven);
    on<FlashcardBookmarkToggled>(_onFlashcardBookmarkToggled);
    on<FlashcardIgnored>(_onFlashcardIgnored);
    on<FlashcardTutorialSeenChecked>(_onTutorialChecked);
    on<FlashcardTutorialFinished>(_onTutorialFinished);
  }

  void _onTutorialChecked(
    FlashcardTutorialSeenChecked event,
    Emitter<FlashcardState> emit,
  ) async {
    if (state.tutorialSeen == true) return;

    final isSeen = await _localStorageService.getFlashcardsTutorialSeen();
    if (!isSeen) {
      emit(state.copyWith(tutorialSeen: false));
    }
  }

  void _onTutorialFinished(
    FlashcardTutorialFinished event,
    Emitter<FlashcardState> emit,
  ) async {
    if (state.tutorialSeen == true) return;

    _localStorageService.setFlashcardsTutorialSeen();
    emit(state.copyWith(tutorialSeen: true));
  }

  void _onFlashcardIgnored(
    FlashcardIgnored event,
    Emitter<FlashcardState> emit,
  ) async {
    if (state.status.isSessionEnded ||
        state.status.isPackFinished ||
        state.status.isLoading ||
        state.status.isBookmarkLoading) {
      return;
    }
    final flashcard = state.flashcard;
    if (flashcard == null) {
      throw Exception("Flashcard is null inside onFlashcardIgnored");
    }

    emit(state.copyWith(status: FlashcardStatus.loading, errorMessage: null));

    final currStatRecord = state.statRecords[state.currentCardIndex];
    final ignoreResult = await _fcpRepo.safeIgnoreCard(record: currStatRecord);
    switch (ignoreResult) {
      case Error<void>(:final error):
        emit(
          state.copyWith(
            status: FlashcardStatus.error,
            errorMessage: error.toString(),
          ),
        );
        return;
      case Ok<void>():
    }

    final shouldReturn = await _checkLengthAndEmit(emit: emit);
    if (shouldReturn) return;

    final newCurrIndex = state.currentCardIndex + 1;
    final fcResult = await _getNewFlashcardAndEmitError(
      emit: emit,
      currCardIndex: newCurrIndex,
      records: state.statRecords,
    );
    if (fcResult.status == 'error') return;

    emit(
      state.copyWith(
        status: FlashcardStatus.loaded,
        flashcard: fcResult.flashcard!,
        statRecords: fcResult.records!,
        answerVisible: false,
        currentCardIndex: newCurrIndex,
      ),
    );
  }

  void _onFlashcardCardsPerSessionUpdated(
    FlashcardCardsPerSessionUpdated event,
    Emitter<FlashcardState> emit,
  ) async {
    emit(state.copyWith(status: FlashcardStatus.loading, errorMessage: null));

    final updateDto = UpdateProfileDto(
      profileSettings: UpdateProfileSettingsDto(
        cardsPerSession: event.cardPerSession,
      ),
    );
    final profileResult = await _profileRepo.updateCurrentProfile(updateDto);
    switch (profileResult) {
      case Error<void>(:final error):
        emit(
          state.copyWith(
            status: FlashcardStatus.error,
            errorMessage: error.toString(),
          ),
        );
        return;
      case Ok<void>():
    }

    emit(state.copyWith(status: FlashcardStatus.profileUpdated));
  }

  void _onFlashcardBookmarkToggled(
    FlashcardBookmarkToggled event,
    Emitter<FlashcardState> emit,
  ) async {
    if (state.flashcard == null ||
        state.status.isBookmarkLoading ||
        state.status.isLoading) {
      return;
    }

    final currStatRecord = state.statRecords[state.currentCardIndex];
    final updatedRecords = _updateCurrentStatRecord(
      (record) => record.copyWith(hasBookmark: !currStatRecord.hasBookmark),
    );
    emit(
      state.copyWith(
        status: FlashcardStatus.bookmarkLoading,
        statRecords: updatedRecords,
        errorMessage: null,
      ),
    );

    late final Result<void> bookmarkResult;
    if (!currStatRecord.hasBookmark) {
      bookmarkResult = await _fcpRepo.safeAddBookmark(record: currStatRecord);
    } else {
      bookmarkResult = await _fcpRepo.removeBookmark(
        flashcardId: currStatRecord.flashcardId,
        record: currStatRecord,
      );
    }

    switch (bookmarkResult) {
      case Error<void>(:final error):
        // revert previous state and emit error
        final revert = _updateCurrentStatRecord(
          (record) => record.copyWith(hasBookmark: currStatRecord.hasBookmark),
        );
        emit(
          state.copyWith(
            status: FlashcardStatus.error,
            statRecords: revert,
            errorMessage: error.toString(),
          ),
        );
        return;
      case Ok<void>():
    }

    //_updateCacheForBookmark(currStatRecord);

    emit(state.copyWith(status: FlashcardStatus.loaded));
  }

  void _onFlashcardRatingGiven(
    FlashcardRatingGiven event,
    Emitter<FlashcardState> emit,
  ) async {
    if (state.status.isSessionEnded ||
        state.status.isPackFinished ||
        state.status.isLoading ||
        state.status.isBookmarkLoading) {
      return;
    }

    if (state.flashcard == null) {
      throw Exception("Flashcard is null inside flashcard state");
    }
    emit(state.copyWith(status: FlashcardStatus.loading, errorMessage: null));

    // count streak, if it needs to
    final streakResult = await _profileRepo.checkAndIncrementCardsCount(
      event.userStreak,
    );
    switch (streakResult) {
      case Error<Streak?>(:final error):
        print(error);
      case Ok<Streak?>(:final value):
        if (value == null) break;
        print(value);
    }

    final oldCard = state.statRecords[state.currentCardIndex].card;
    final newCard = FSRS().repeat(oldCard, DateTime.now())[event.rating]!.card;

    final updatedRecords = _updateCurrentStatRecord(
      (record) => record.copyWith(card: newCard),
    );

    final newStatRecord = updatedRecords[state.currentCardIndex];
    final coordinatorResult = await _fcpRepo.safeUpdateCard(
      newStatRecord: newStatRecord,
      currStatRecord: state.statRecords[state.currentCardIndex],
    );
    switch (coordinatorResult) {
      case Error<void>(:final error):
        emit(
          state.copyWith(
            status: FlashcardStatus.error,
            errorMessage: error.toString(),
          ),
        );
        return;
      case Ok<void>():
    }

    final shouldReturn = await _checkLengthAndEmit(emit: emit);
    if (shouldReturn) return;

    final newIndex = state.currentCardIndex + 1;
    final flashcardResult = await _getNewFlashcardAndEmitError(
      emit: emit,
      records: updatedRecords,
      currCardIndex: newIndex,
    );
    if (flashcardResult.status == 'error') return;

    emit(
      state.copyWith(
        status: FlashcardStatus.loaded,
        flashcard: flashcardResult.flashcard!,
        currentCardIndex: newIndex,
        statRecords: flashcardResult.records!,
        errorMessage: null,
        hintVisible: false,
        answerVisible: false,
      ),
    );
  }

  void _onFlashcardTestStarted(
    FlashcardTestStarted event,
    Emitter<FlashcardState> emit,
  ) async {
    if (!state.status.isInitial &&
        !(state.status.isError && state.flashcard == null)) {
      return;
    }

    emit(
      state.copyWith(
        status: FlashcardStatus.loading,
        answerVisible: false,
        hintVisible: false,
        errorMessage: null,
        testType: event.testType,
        pack: event.pack,
        cardsPerSession: event.cardsPerSession,
      ),
    );

    final claims = await UserClaims.current();
    final hasCards = claims.hasCards;
    emit(state.copyWith(hasCards: hasCards));

    // start counting, if it needs to
    final streakResult = await _profileRepo.checkAndStartStreak(
      event.userStreak,
    );
    switch (streakResult) {
      case Error<Streak?>(:final error):
        print(error);
      // emit(state.copyWith(status: FlashcardStatus.error, errorMessage: error.toString()));
      // don't exit, continue but still show the message
      case Ok<Streak?>(:final value):
        if (value == null) break;
        print(value);
    }

    late final Result<List<StatRecord>> fcpResult;
    switch (event.testType) {
      case TestType.regular:
        fcpResult = await _fcpRepo.loadDataForStandardTest(
          packId: event.pack!.id,
          target: event.cardsPerSession,
          newCardsPercentage: _newCardsPercentage,
          isPaid: event.pack!.isPaid,
          hasCards: state.hasCards,
        );

        // open a flashcard_builder as well
        final ppResult = await _ppRepo.openPack(
          packId: event.pack!.id,
          packName: event.pack!.name,
        );
        switch (ppResult) {
          case Error<void>(:final error):
            emit(
              state.copyWith(
                status: FlashcardStatus.error,
                errorMessage: error.toString(),
              ),
            );
            return;
          case Ok<void>():
        }
        break;
      case TestType.bookmark:
        fcpResult = await _fcpRepo.loadDataForBookmarksTest(
          event.cardsPerSession,
          state.hasCards!,
        );
        break;
    }

    switch (fcpResult) {
      case Error<List<StatRecord>>(:final error):
        emit(
          state.copyWith(
            status: FlashcardStatus.error,
            errorMessage: error.toString(),
          ),
        );
        return;
      case Ok<List<StatRecord>>():
    }

    int currentCardIndex = 0;
    var records = fcpResult.value;

    // no stat records, flashcard_builder finished for now
    if (records.isEmpty) {
      emit(state.copyWith(status: FlashcardStatus.packFinished));
      return;
    }

    final result = await _getNewFlashcardAndEmitError(
      emit: emit,
      records: records,
      currCardIndex: currentCardIndex,
    );
    if (result.status == 'error') return;

    emit(
      state.copyWith(
        status: FlashcardStatus.loaded,
        statRecords: result.records!,
        flashcard: result.flashcard!,
        currentCardIndex: currentCardIndex,
      ),
    );

    // when everything is loaded and user is ready to start the test,
    // we check to see if he saw the tutorial
    add(FlashcardTutorialSeenChecked());
  }

  void _onFlashcardSessionExtended(
    FlashcardSessionExtended event,
    Emitter<FlashcardState> emit,
  ) async {
    if (!state.status.isSessionEnded) return;

    await _loadNextBatchAndEmit(
      emit: emit,
      newCardsPerSession: _sessionExtendedTargetCards,
    );
  }

  void _onFlashcardAnswerShown(
    FlashcardAnswerShown event,
    Emitter<FlashcardState> emit,
  ) {
    // if flashcard has cloze, we need to format it
    final currRecord = state.statRecords[state.currentCardIndex];
    final clozeFlashcard = state.flashcard!.copyWith(
      question: revealClozeQuestion(currRecord.flashcard!.question),
    );

    emit(
      state.copyWith(
        status: FlashcardStatus.loaded,
        answerVisible: true,
        flashcard: clozeFlashcard,
      ),
    );
  }

  void _onFlashcardHintToggled(
    FlashcardHintToggled event,
    Emitter<FlashcardState> emit,
  ) {
    final toggleValue = !state.hintVisible;
    emit(
      state.copyWith(status: FlashcardStatus.loaded, hintVisible: toggleValue),
    );
  }

  Future<bool> _checkLengthAndEmit({
    required Emitter<FlashcardState> emit,
    List<StatRecord>? updatedRecords,
  }) async {
    final records = updatedRecords ?? state.statRecords;

    // it means we ran out of flashcards from this session
    if (state.currentCardIndex >= records.length - 1) {
      // if user choose an option to extend the session, we continue extending it
      if (state.currentBatch > 0) {
        await _loadNextBatchAndEmit(emit: emit);
        return true;
      }
      FlashcardState newState;
      if (updatedRecords == null) {
        newState = state.copyWith(
          status: FlashcardStatus.sessionEnded,
          errorMessage: null,
        );
      } else {
        newState = state.copyWith(
          status: FlashcardStatus.sessionEnded,
          statRecords: updatedRecords,
          errorMessage: null,
        );
      }
      emit(newState);
      return true;
    }
    return false;
  }

  Future<GetNewFlashcard> _getNewFlashcardAndEmitError({
    required Emitter<FlashcardState> emit,
    required List<StatRecord> records,
    required int currCardIndex,
  }) async {
    late final Flashcard flashcard;
    final currStatRecord = records[currCardIndex];
    // if we already have flashcard data, we use that instead of calling the db
    if (currStatRecord.flashcard != null) {
      flashcard = currStatRecord.flashcard!;
    } else {
      final fcId = currStatRecord.flashcardId;
      final cardResult = await _flashcardRepo.getFlashcard(fcId);
      switch (cardResult) {
        case Error<Flashcard>(:final error):
          emit(
            state.copyWith(
              status: FlashcardStatus.error,
              errorMessage: error.toString(),
            ),
          );
          return GetNewFlashcard(status: "error");
        case Ok<Flashcard>():
      }
      flashcard = cardResult.value;
      // also write this new flashcard inside stat record
      records = _updateStatRecordAt(
        records,
        currCardIndex,
        (record) => record.copyWith(flashcard: flashcard),
      );
    }

    // if flashcard.question has cloze, we need to format it
    final clozeFlashcard = flashcard.copyWith(
      question: redactClozeQuestion(flashcard.question),
    );

    return GetNewFlashcard(
      status: 'success',
      flashcard: clozeFlashcard,
      records: records,
    );
  }

  Future<void> _loadNextBatchAndEmit({
    required Emitter<FlashcardState> emit,
    int? newCardsPerSession,
  }) async {
    if (state.testType == null || state.cardsPerSession == null) {
      throw Exception(
        "Test type or cardsPerSession can't be null in _loadNextBatchAndEmit handler",
      );
    }

    emit(state.copyWith(status: FlashcardStatus.loading, errorMessage: null));

    final int cardsPerSession = newCardsPerSession ?? state.cardsPerSession!;
    Result<List<StatRecord>> testResult;
    switch (state.testType!) {
      case TestType.regular:
        if (state.pack == null) {
          throw Exception("Pack can't be null if the test type is regular");
        }
        testResult = await _fcpRepo.loadDataForStandardTest(
          packId: state.pack!.id,
          isPaid: state.pack!.isPaid,
          target: cardsPerSession,
          newCardsPercentage: _newCardsPercentage,
          hasCards: state.hasCards,
        );
        break;
      case TestType.bookmark:
        testResult = await _fcpRepo.loadDataForBookmarksTest(
          cardsPerSession,
          state.hasCards!,
        );
        break;
    }

    switch (testResult) {
      case Error<List<StatRecord>>(:final error):
        emit(
          state.copyWith(
            status: FlashcardStatus.error,
            errorMessage: error.toString(),
          ),
        );
        return;
      case Ok<List<StatRecord>>():
    }
    var records = testResult.value;
    final currentCardIndex = 0;

    // no records pulled, means that this flashcard_builder is finished for now
    if (records.isEmpty) {
      emit(state.copyWith(status: FlashcardStatus.packFinished));
      return;
    }

    final result = await _getNewFlashcardAndEmitError(
      emit: emit,
      records: records,
      currCardIndex: currentCardIndex,
    );
    if (result.status == 'error') return;

    emit(
      state.copyWith(
        status: FlashcardStatus.loaded,
        cardsPerSession: cardsPerSession,
        flashcard: result.flashcard!,
        statRecords: result.records!,
        currentCardIndex: currentCardIndex,
        currentBatch: state.currentBatch + 1,
        hintVisible: false,
        answerVisible: false,
        errorMessage: null,
      ),
    );
  }

  List<StatRecord> _updateCurrentStatRecord(
    StatRecord Function(StatRecord record) copyWith,
  ) {
    return _updateStatRecordAt(
      state.statRecords,
      state.currentCardIndex,
      copyWith,
    );
  }

  List<StatRecord> _updateStatRecordAt(
    List<StatRecord> records,
    int index,
    StatRecord Function(StatRecord record) copyWith,
  ) {
    final updatedRecords = List<StatRecord>.from(records);
    updatedRecords[index] = copyWith(updatedRecords[index]);

    return updatedRecords;
  }

  bool _isDueToday(DateTime due) {
    final now = DateTime.now();
    return due.year == now.year && due.month == now.month && due.day == now.day;
  }
}

class GetNewFlashcard {
  final Flashcard? flashcard;
  final List<StatRecord>? records;
  final String status;

  const GetNewFlashcard({this.flashcard, required this.status, this.records});
}
