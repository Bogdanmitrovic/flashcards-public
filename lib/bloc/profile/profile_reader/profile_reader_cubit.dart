import 'dart:async';
import 'package:flashcards/bloc/profile/profile_reader/profile_reader_state.dart';
import 'package:flashcards/data/repositories/users/profile_repository.dart';
import 'package:flashcards/domain/models/profile/profile.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileReaderCubit extends Cubit<ProfileReaderState> {
  final ProfileRepository _profileRepo;

  ProfileReaderCubit({required ProfileRepository profileRepo})
    : _profileRepo = profileRepo,
      super(ProfileReaderInitial());

  void resetProfile() {
    emit(ProfileReaderInitial());
  }

  Future<void> readProfile() async {
    emit(ProfileReaderLoading());

    final result = await _profileRepo.getCurrentProfile();
    switch (result) {
      case Ok<Profile>(value: var profile):
        emit(ProfileReaderIsLoaded(profile: profile));
        break;
      case Error<Profile>(error: var error):
        emit(ProfileReaderError(message: error.toString()));
    }
  }

  void updateProfileState(Profile Function(Profile profile) update) {
    final currentState = state;
    if (currentState is! ProfileReaderIsLoaded) {
      throw Exception(
        "You can't call updateProfileState if state is not loaded",
      );
    }

    final updatedProfile = update(currentState.profile);

    emit(currentState.copyWith(profile: updatedProfile));
  }
}
