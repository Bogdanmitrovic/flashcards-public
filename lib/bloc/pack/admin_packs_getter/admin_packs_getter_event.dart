import 'dart:async';

import 'package:equatable/equatable.dart';

abstract class AdminPacksGetterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AdminPackGetterPackRequested extends AdminPacksGetterEvent {
  final String packId;

  AdminPackGetterPackRequested({required this.packId});

  @override
  List<Object?> get props => [packId];
}

class AdminPacksGetterRefresh extends AdminPacksGetterEvent {
  final Completer<void>? completer;

  AdminPacksGetterRefresh({this.completer});

  @override
  List<Object?> get props => [completer];
}

class AdminPacksGetterPageFetched extends AdminPacksGetterEvent {}

class AdminPacksGetterCacheRead extends AdminPacksGetterEvent {}
