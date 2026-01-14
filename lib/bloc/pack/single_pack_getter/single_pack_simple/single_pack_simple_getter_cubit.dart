import 'package:flashcards/bloc/pack/single_pack_getter/single_pack/single_pack_getter_state.dart';
import 'package:flashcards/bloc/pack/single_pack_getter/single_pack_simple/single_pack_simple_getter_state.dart';
import 'package:flashcards/data/repositories/flashcards/pack_repository.dart';
import 'package:flashcards/domain/models/flashcards/simple_pack/simple_pack.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SinglePackSimpleGetterCubit extends Cubit<SinglePackSimpleGetterState> {
  final PackRepository _packRepo;

  SinglePackSimpleGetterCubit({required PackRepository packRepo})
    : _packRepo = packRepo,
      super(SinglePackSimpleGetterInitial());

  void getPack(String packId) async {
    final state = this.state;
    if (state is! SinglePackSimpleGetterInitial) return;

    final result = await _packRepo.getPack(packId);
    switch (result) {
      case Error<SimplePack>(:final error):
        emit(SinglePackSimpleGetterError(error: error));
        return;
      case Ok<SimplePack>():
    }

    emit(SinglePackSimpleGetterLoaded(pack: result.value));
  }
}
