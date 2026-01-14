import 'package:flashcards/bloc/pack/rename_pack/rename_pack_state.dart';
import 'package:flashcards/data/repositories/flashcards/pack_repository.dart';
import 'package:flashcards/utils/form_validations.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RenamePackCubit extends Cubit<RenamePackState> {
  final PackRepository _packRepo;

  RenamePackCubit({required PackRepository packRepo})
    : _packRepo = packRepo,
      super(RenamePackInitial());

  void renamePack(String packId, String name) async {
    final errors = _validateForm(name);
    if (errors.isNotEmpty) {
      emit(RenamePackFormInvalid(errors: errors));
      return;
    }

    emit(RenamePackLoading());
    final updateResult = await _packRepo.renamePack(packId, name);
    switch (updateResult) {
      case Error<void>(:final error):
        emit(RenamePackError(error: error));
        return;
      case Ok<void>():
    }

    emit(RenamePackSuccess(newName: name));
  }

  Map<String, String> _validateForm(String name) {
    final Map<String, String> errors = {};

    putErrorIfExists(errors, 'name', validateString(name));
    return errors;
  }
}
