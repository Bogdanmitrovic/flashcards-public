import 'package:flashcards/bloc/flashcards/flashcard/flashcard_bloc.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_event.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_state.dart';
import 'package:flashcards/bloc/profile/profile_reader/profile_reader_cubit.dart';
import 'package:flashcards/bloc/profile/profile_reader/profile_reader_state.dart';
import 'package:flashcards/ui/widgets/flashcard/flashcard_test/rating_buttons/score_segmented_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';
import 'package:fsrs/fsrs.dart' as fsrs;

class FlashcardRatingButtons extends StatefulWidget {
  const FlashcardRatingButtons({super.key});

  @override
  State<FlashcardRatingButtons> createState() => _FlashcardRatingButtonsState();
}

class _FlashcardRatingButtonsState extends State<FlashcardRatingButtons> {
  fsrs.Rating? _activeRating;

  // late fsrs.Card _cardAgain;
  // late fsrs.Card _cardHard;
  // late fsrs.Card _cardGood;
  // late fsrs.Card _cardEasy;

  @override
  void initState() {
    super.initState();
  }

  // void _initCardData(fsrs.Card card) {
  //   final schedulingCards = fsrs.FSRS().repeat(card, DateTime.now());
  //   _cardAgain = schedulingCards[fsrs.Rating.again]!.card;
  //   _cardHard = schedulingCards[fsrs.Rating.hard]!.card;
  //   _cardGood = schedulingCards[fsrs.Rating.good]!.card;
  //   _cardEasy = schedulingCards[fsrs.Rating.easy]!.card;
  // }

  void _onSelectRating(fsrs.Rating? rating) {
    setState(() => _activeRating = rating);
    if (rating == null) return;

    final profileState = context.read<ProfileReaderCubit>().state;
    if (profileState is! ProfileReaderIsLoaded) {
      throw Exception("Profile is not loaded");
    }

    context.read<FlashcardBloc>().add(
      FlashcardRatingGiven(
        rating: rating,
        userStreak: profileState.profile.streak,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FlashcardBloc, FlashcardState>(
      listenWhen:
          (previous, current) =>
              current.status.isLoaded && current.status != previous.status,
      listener: (context, state) {
        if (state.status.isLoaded) {
          setState(() => _activeRating = null);
        }
      },
      builder: (context, state) {
        if (!state.answerVisible) return SizedBox.shrink();

        //_initCardData(state.statRecords[state.currentCardIndex].card);
        return ScoreSegmentedButton<fsrs.Rating>(
          onChanged: _onSelectRating,
          segments: [
            ScoreSegment(
              value: fsrs.Rating.easy,
              label:
                  AppLocalizations.of(
                    context,
                  )!.flashcardRatingButtons_easyLabel,
              tooltip:
                  AppLocalizations.of(
                    context,
                  )!.flashcardRatingButtons_easyTooltip,
              //time: formatInterval(_cardEasy.due, DateTime.now()),
            ),
            ScoreSegment(
              value: fsrs.Rating.good,
              label:
                  AppLocalizations.of(
                    context,
                  )!.flashcardRatingButtons_goodLabel,
              tooltip:
                  AppLocalizations.of(
                    context,
                  )!.flashcardRatingButtons_goodTooltip,
              //time: formatInterval(_cardGood.due, DateTime.now()),
            ),
            ScoreSegment(
              value: fsrs.Rating.hard,
              label:
                  AppLocalizations.of(
                    context,
                  )!.flashcardRatingButtons_hardLabel,
              tooltip:
                  AppLocalizations.of(
                    context,
                  )!.flashcardRatingButtons_hardTooltip,
              //time: formatInterval(_cardHard.due, DateTime.now()),
            ),
            ScoreSegment(
              value: fsrs.Rating.again,
              label:
                  AppLocalizations.of(
                    context,
                  )!.flashcardRatingButtons_againLabel,
              tooltip:
                  AppLocalizations.of(
                    context,
                  )!.flashcardRatingButtons_againTooltip,
              //time: formatInterval(_cardAgain.due, DateTime.now()),
            ),
          ],
          selectedValue: _activeRating,
        );
      },
    );
  }
}
