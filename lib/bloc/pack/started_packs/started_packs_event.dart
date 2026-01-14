import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flashcards/domain/models/flashcards/pack_progress/pack_progress.dart';

sealed class StartedPacksEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class StartedPacksFetched extends StartedPacksEvent {}

class StartedPacksProgressDeleted extends StartedPacksEvent {
  final PackProgress packProgress;

  StartedPacksProgressDeleted({required this.packProgress});

  @override
  List<Object?> get props => [packProgress];
}

class StartedPacksRefresh extends StartedPacksEvent {
  final Completer<void>? completer;

  StartedPacksRefresh({this.completer});

  @override
  List<Object?> get props => [completer];
}
