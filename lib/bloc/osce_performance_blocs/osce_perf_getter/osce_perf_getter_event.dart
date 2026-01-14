import 'dart:async';
import 'package:equatable/equatable.dart';

sealed class OscePerfGetterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OscePerfGetterFetched extends OscePerfGetterEvent {
  final bool restart;

  OscePerfGetterFetched({this.restart = false});

  @override
  List<Object?> get props => [restart];
}

class OscePerfGetterRefresh extends OscePerfGetterEvent {
  final Completer<void>? completer;

  OscePerfGetterRefresh({this.completer});

  @override
  List<Object?> get props => [completer];
}

class OscePerfGetterIncreaseCount extends OscePerfGetterEvent {
  final String osceId;

  OscePerfGetterIncreaseCount({required this.osceId});

  @override
  List<Object?> get props => [osceId];
}

class OscePerfGetterDeleted extends OscePerfGetterEvent {
  final String osceId;

  OscePerfGetterDeleted({required this.osceId});

  @override
  List<Object?> get props => [osceId];
}
