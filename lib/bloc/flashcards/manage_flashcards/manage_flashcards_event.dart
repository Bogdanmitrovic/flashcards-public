import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flashcards/domain/models/flashcards/flashcard/flashcard.dart';

abstract class ManageFlashcardsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ManageFlashcardRefresh extends ManageFlashcardsEvent {
  final String packId;
  final Completer<void>? completer;

  ManageFlashcardRefresh({required this.packId, this.completer});

  @override
  List<Object?> get props => [completer, packId];
}

class ManageFlashcardPageFetched extends ManageFlashcardsEvent {
  final String packId;

  ManageFlashcardPageFetched({required this.packId});

  @override
  List<Object?> get props => [packId];
}

class ManageFlashcardCacheRead extends ManageFlashcardsEvent {
  final String packId;

  ManageFlashcardCacheRead({required this.packId});

  @override
  List<Object?> get props => [packId];
}
