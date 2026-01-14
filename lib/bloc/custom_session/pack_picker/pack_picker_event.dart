import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flashcards/domain/models/flashcards/simple_pack/simple_pack.dart';

sealed class PackPickerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class PackPickerPageFetched extends PackPickerEvent {}

// class PackPickerCacheRead extends PackPickerEvent {}

class PackPickerRefresh extends PackPickerEvent {
  final Completer<void>? completer;

  PackPickerRefresh({this.completer});

  @override
  List<Object?> get props => [completer];
}

class PackPickerPackToggled extends PackPickerEvent {
  final SimplePack pack;

  PackPickerPackToggled({required this.pack});

  @override
  List<Object?> get props => [pack];
}
