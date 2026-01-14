import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flashcards/domain/models/algolia/algolia_pack/algolia_pack.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';

abstract class PackSearcherEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class PackSearcherPackAddedToState extends PackSearcherEvent {
  final AlgoliaPack pack;

  PackSearcherPackAddedToState({required this.pack});

  @override
  List<Object?> get props => [pack];
}

class PackSearcherPackUpdatedInState extends PackSearcherEvent {
  final String packId;
  final AlgoliaPack Function(AlgoliaPack pack) copyWith;

  PackSearcherPackUpdatedInState({
    required this.copyWith,
    required this.packId,
  });

  @override
  List<Object?> get props => [copyWith, packId];
}

class PackSearcherPackRemovedFromState extends PackSearcherEvent {
  final String packId;

  PackSearcherPackRemovedFromState({required this.packId});

  @override
  List<Object?> get props => [packId];
}

class PackSearcherNextPageRequested extends PackSearcherEvent {}

class PackSearcherRequestSent extends PackSearcherEvent {
  final String query;
  final Completer<void>? completer;

  PackSearcherRequestSent({required this.query, this.completer});

  @override
  List<Object?> get props => [query, completer];
}

class PackSearcherTagToggled extends PackSearcherEvent {
  final Tag tag;

  PackSearcherTagToggled({required this.tag});

  @override
  List<Object?> get props => [tag];
}

// class PackSearcherClaimsFetched extends PackSearcherEvent {}
