import 'dart:async';
import 'package:equatable/equatable.dart';

sealed class OsceAttemptsGetterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OsceAttemptsGetterFetched extends OsceAttemptsGetterEvent {
  final bool restart;

  OsceAttemptsGetterFetched({this.restart = false});

  @override
  List<Object?> get props => [restart];
}

class OsceAttemptsGetterRefresh extends OsceAttemptsGetterEvent {
  final Completer<void>? completer;

  OsceAttemptsGetterRefresh({this.completer});

  @override
  List<Object?> get props => [completer];
}

class OsceAttemptsRemoved extends OsceAttemptsGetterEvent {
  final String attemptId;

  OsceAttemptsRemoved({required this.attemptId});

  @override
  List<Object?> get props => [attemptId];
}
