import 'dart:async';

import 'package:equatable/equatable.dart';

abstract class OsceGetterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OsceGetterPageFetched extends OsceGetterEvent {}

class OsceGetterCacheRead extends OsceGetterEvent {}

class OsceGetterRefresh extends OsceGetterEvent {
  final Completer<void>? completer;

  OsceGetterRefresh({this.completer});

  @override
  List<Object?> get props => [completer];
}

// class OsceGetterClaimsFetched extends OsceGetterEvent {}
