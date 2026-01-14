import 'dart:async';

import 'package:equatable/equatable.dart';

sealed class FcReportsGetterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FcReportsGetterFetched extends FcReportsGetterEvent {
  final bool restart;

  FcReportsGetterFetched({this.restart = false});

  @override
  List<Object?> get props => [restart];
}

class FcReportsGetterRefresh extends FcReportsGetterEvent {
  final Completer<void>? completer;

  FcReportsGetterRefresh({this.completer});

  @override
  List<Object?> get props => [completer];
}
