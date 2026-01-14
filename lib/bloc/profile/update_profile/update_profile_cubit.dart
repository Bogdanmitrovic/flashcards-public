import 'package:flashcards/bloc/profile/update_profile/update_profile_state.dart';
import 'package:flashcards/data/repositories/users/profile_repository.dart';
import 'package:flashcards/data/services/api/dto/users/profile/update_profile/update_profile_dto.dart';
import 'package:flashcards/domain/models/profile/profile.dart';
import 'package:flashcards/domain/models/profile/education_level.dart';
import 'package:flashcards/utils/form_validations.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  final ProfileRepository _profileRepo;

  UpdateProfileCubit({required ProfileRepository profileRepo})
    : _profileRepo = profileRepo,
      super(UpdateProfileDisabled());

  void enableForm() {
    emit(UpdateProfileEnabled());
  }

  void disableForm() {
    emit(UpdateProfileDisabled());
  }

  Future<void> updateProfile(
    Profile oldProfile,
    String name,
    String surname,
    EducationLevel educationLevel,
  ) async {
    emit(UpdateProfileLoading());

    var errors = _validateForm(name, surname);
    if (errors.isNotEmpty) {
      emit(UpdateProfileFormInvalid(errors: errors));
      return;
    }

    var newProfile = oldProfile.copyWith(
      name: name,
      surname: surname,
      educationLevel: educationLevel,
    );
    if (oldProfile == newProfile) {
      emit(UpdateProfileError(message: "All set — nothing to update"));
      return;
    }

    final updateDto = UpdateProfileDto(
      name: name,
      surname: surname,
      educationLevel: educationLevel,
    );
    var result = await _profileRepo.updateCurrentProfile(updateDto);

    switch (result) {
      case Ok<void>():
        emit(UpdateProfileSuccessful());
        break;
      case Error<void>(:final error):
        emit(UpdateProfileError(message: error.toString()));
        break;
    }
  }

  Map<String, String> _validateForm(String name, String surname) {
    final Map<String, String> errors = {};

    putErrorIfExists(errors, 'name', validateName(name));
    putErrorIfExists(errors, 'surname', validateSurname(surname));

    return errors;
  }
}
