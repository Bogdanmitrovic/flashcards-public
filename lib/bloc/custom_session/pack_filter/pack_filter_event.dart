import 'package:equatable/equatable.dart';
import 'package:flashcards/domain/enums/pack_selected_filter.dart';

abstract class PackFilterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class PackFilterCountsFetched extends PackFilterEvent {
  final List<String> packIds;
  final int allCount;

  PackFilterCountsFetched({required this.packIds, required this.allCount});

  @override
  List<Object?> get props => [packIds, allCount];
}

class PackFilterSelected extends PackFilterEvent {
  final PackSelectedFilter filter;

  PackFilterSelected({required this.filter});

  @override
  List<Object?> get props => [filter];
}
