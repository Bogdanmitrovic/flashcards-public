import 'dart:async';

import 'package:equatable/equatable.dart';

sealed class UserReportsGetterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class UserReportsGetterFetched extends UserReportsGetterEvent {}

class UserReportsGetterRefresh extends UserReportsGetterEvent {
  final Completer<void>? completer;

  UserReportsGetterRefresh({this.completer});

  @override
  List<Object?> get props => [completer];
}
