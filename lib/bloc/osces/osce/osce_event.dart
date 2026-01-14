import 'package:equatable/equatable.dart';
import 'package:flashcards/domain/models/osce/simple_osce/simple_osce.dart';

sealed class OsceEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OsceRequested extends OsceEvent {
  final SimpleOsce simpleOsce;

  OsceRequested({required this.simpleOsce});

  @override
  List<Object?> get props => [simpleOsce];
}

class OsceTestStarted extends OsceEvent {}

class ToggleCheck extends OsceEvent {
  final int checkIndex;

  ToggleCheck({required this.checkIndex});

  @override
  List<Object?> get props => [checkIndex];
}

class NextQuestionRequested extends OsceEvent {}

class OsceCurrentQuestionRevealed extends OsceEvent {}

class PreviousQuestionRequested extends OsceEvent {}

class OsceTutorialSeenChecked extends OsceEvent {}

class OsceTutorialFinished extends OsceEvent {}
