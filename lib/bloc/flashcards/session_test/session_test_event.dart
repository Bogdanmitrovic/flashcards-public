import 'package:equatable/equatable.dart';
import 'package:flashcards/domain/models/flashcards/custom_session_summary/custom_session_summary.dart';
import 'package:flashcards/domain/models/profile/streak/streak.dart';
import 'package:flashcards/domain/models/profile/streak/streak.dart';

abstract class SessionTestEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SessionTestDataLoaded extends SessionTestEvent {
  final CustomSessionSummary sessionSummary;
  final Streak userStreak;

  SessionTestDataLoaded({
    required this.sessionSummary,
    required this.userStreak,
  });

  @override
  List<Object?> get props => [sessionSummary, userStreak];
}

class SessionTestNextPressed extends SessionTestEvent {
  final bool isCorrect;
  final Streak userStreak;

  SessionTestNextPressed({required this.isCorrect, required this.userStreak});

  @override
  List<Object?> get props => [isCorrect, userStreak];
}

class SessionTestBookmarkToggled extends SessionTestEvent {}

class SessionTestAnswerShown extends SessionTestEvent {}
