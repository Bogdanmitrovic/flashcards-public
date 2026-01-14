import 'dart:async';

import 'package:equatable/equatable.dart';

abstract class PacksGetterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class PacksGetterPageFetched extends PacksGetterEvent {}

class PacksGetterCacheRead extends PacksGetterEvent {}

class PacksGetterRefresh extends PacksGetterEvent {
  final Completer<void>? completer;

  PacksGetterRefresh({this.completer});

  @override
  List<Object?> get props => [completer];
}

// class PacksGetterClaimsFetched extends PacksGetterEvent {}
