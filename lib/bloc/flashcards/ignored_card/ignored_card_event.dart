import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flashcards/domain/models/flashcards/ignored_flashcard/ignored_flashcard.dart';

abstract class IgnoredCardEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class IgnoredCardRefresh extends IgnoredCardEvent {
  final Completer<void>? completer;

  IgnoredCardRefresh({this.completer});

  @override
  List<Object?> get props => [completer];
}

class IgnoredCardPageFetched extends IgnoredCardEvent {}

class IgnoredCardUnignored extends IgnoredCardEvent {
  final IgnoredFlashcard ignoredCard;

  IgnoredCardUnignored({required this.ignoredCard});

  @override
  List<Object?> get props => [ignoredCard];
}

class IgnoredCardUnignoreUndo extends IgnoredCardEvent {
  final IgnoredFlashcard ignoredCard;
  final int index;

  IgnoredCardUnignoreUndo({required this.ignoredCard, required this.index});

  @override
  List<Object?> get props => [ignoredCard, index];
}
