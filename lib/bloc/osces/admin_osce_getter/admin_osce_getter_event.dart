import 'dart:async';

import 'package:equatable/equatable.dart';

abstract class AdminOsceGetterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AdminOsceGetterPageFetched extends AdminOsceGetterEvent {}

class AdminOsceGetterCacheRead extends AdminOsceGetterEvent {}

class AdminOsceGetterRefresh extends AdminOsceGetterEvent {
  final Completer<void>? completer;

  AdminOsceGetterRefresh({this.completer});

  @override
  List<Object?> get props => [completer];
}
