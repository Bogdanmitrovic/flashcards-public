import 'dart:async';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_bloc.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';

class TimerContainer<B extends StateStreamable<S>, S> extends StatefulWidget {
  final bool Function(S previous, S current) listenWhen;
  final bool Function(S state) shouldStartTimer;
  final bool mode;
  final Duration? initialDuration;
  final VoidCallback? onFinished;
  const TimerContainer({
    super.key,
    required this.listenWhen,
    required this.shouldStartTimer,
    this.mode = true,
    this.initialDuration,
    this.onFinished,
  }) : assert(
         mode == true || (initialDuration != null),
         'initialDuration must be provided for backward mode',
       );

  @override
  State<TimerContainer<B, S>> createState() => _TimerContainerState<B, S>();
}

class _TimerContainerState<B extends StateStreamable<S>, S>
    extends State<TimerContainer<B, S>> {
  String _timerValue = "00:00";
  bool _timerStarted = false;
  late final Timer _timer;

  void _startTimer() {
    if (_timerStarted) return;
    _timerStarted = true;

    if (widget.mode == true) {
      int seconds = 0;
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        seconds++;
        _updateDisplay(seconds);
      });
    } else {
      int secondsLeft = widget.initialDuration!.inSeconds;
      _updateDisplay(secondsLeft);

      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        secondsLeft--;
        _updateDisplay(secondsLeft);

        if (secondsLeft <= 0) {
          timer.cancel();
          if (widget.onFinished != null) widget.onFinished!();
        }
      });
    }
  }

  void _updateDisplay(int totalSeconds) {
    final minutesStr = (totalSeconds ~/ 60).toString().padLeft(2, '0');
    final secondsStr = (totalSeconds % 60).toString().padLeft(2, '0');
    setState(() => _timerValue = '$minutesStr:$secondsStr');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final state = context.read<B>().state;
    if (widget.shouldStartTimer(state)) {
      _startTimer();
    }
  }

  @override
  void dispose() {
    if (_timerStarted) _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<B, S>(
      listenWhen: widget.listenWhen,
      listener: (context, state) {
        if (widget.shouldStartTimer(state)) {
          _startTimer();
        }
      },
      child: Text(
        AppLocalizations.of(context)!.flashcardTimerContainer(_timerValue),
        style: TextTheme.of(context).bodyLarge,
      ),
    );
  }
}
