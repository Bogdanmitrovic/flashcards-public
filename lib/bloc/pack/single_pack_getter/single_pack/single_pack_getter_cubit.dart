import 'package:flashcards/bloc/pack/single_pack_getter/single_pack/single_pack_getter_state.dart';
import 'package:flashcards/data/repositories/flashcards/pack_repository.dart';
import 'package:flashcards/domain/models/flashcards/pack/pack.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SinglePackGetterCubit extends Cubit<SinglePackGetterState> {
  final PackRepository _packRepo;

  SinglePackGetterCubit({required PackRepository packRepo})
    : _packRepo = packRepo,
      super(SinglePackGetterInitial());

  void getPack(String packId) async {
    final state = this.state;
    if (state is! SinglePackGetterInitial) return;

    final result = await _packRepo.getFullPack(packId: packId);
    switch (result) {
      case Error<Pack>(:final error):
        emit(SinglePackGetterError(error: error));
        return;
      case Ok<Pack>():
    }

    emit(SinglePackGetterLoaded(pack: result.value));
  }
}
