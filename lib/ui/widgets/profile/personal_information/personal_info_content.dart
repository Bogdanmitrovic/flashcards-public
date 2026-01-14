import 'package:flashcards/bloc/profile/profile_reader/profile_reader_cubit.dart';
import 'package:flashcards/bloc/profile/update_profile/update_profile_cubit.dart';
import 'package:flashcards/bloc/profile/update_profile/update_profile_state.dart';
import 'package:flashcards/data/repositories/users/profile_repository.dart';
import 'package:flashcards/domain/models/profile/profile.dart';
import 'package:flashcards/ui/constants/styles.dart';
import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flashcards/ui/widgets/core/bloc_text_field.dart';
import 'package:flashcards/domain/models/profile/education_level.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';

class PersonalInfoContent extends StatelessWidget {
  final Profile profile;

  const PersonalInfoContent({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => UpdateProfileCubit(
            profileRepo: context.read<ProfileRepository>(),
          ),
      child: _PersonalInfoContentView(profile: profile),
    );
  }
}

class _PersonalInfoContentView extends StatefulWidget {
  final Profile profile;

  const _PersonalInfoContentView({super.key, required this.profile});

  @override
  State<_PersonalInfoContentView> createState() =>
      _PersonalInfoContentViewState();
}

class _PersonalInfoContentViewState extends State<_PersonalInfoContentView> {
  late final TextEditingController _nameTextCont;
  late final TextEditingController _surnameTextCont;
  // used to display localized value of enum in dropdown
  late final TextEditingController _educationLevelController;
  late EducationLevel _selectedEducationLevel;

  @override
  void initState() {
    super.initState();
    _nameTextCont = TextEditingController(text: widget.profile.name);
    _surnameTextCont = TextEditingController(text: widget.profile.surname);
    _selectedEducationLevel = widget.profile.educationLevel;
    _educationLevelController = TextEditingController(text: "");

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _educationLevelController.text = widget.profile.educationLevel
            .toLocalizedString(context);
      }
    });
  }

  @override
  void dispose() {
    _nameTextCont.dispose();
    _surnameTextCont.dispose();
    _educationLevelController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateProfileCubit, UpdateProfileState>(
      listenWhen:
          (previous, current) =>
              (current is UpdateProfileDisabled ||
                  current is UpdateProfileSuccessful ||
                  current is UpdateProfileError) &&
              current != previous,
      listener: (context, state) {
        switch (state) {
          case UpdateProfileDisabled():
            _nameTextCont.text = widget.profile.name;
            _surnameTextCont.text = widget.profile.surname;
            _selectedEducationLevel = widget.profile.educationLevel;
            break;
          case UpdateProfileSuccessful():
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  AppLocalizations.of(
                    context,
                  )!.personalInfoContent_updateSuccessMessage,
                ),
              ),
            );
            context.read<ProfileReaderCubit>().readProfile();
            break;
          case UpdateProfileError(:final message):
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));
            break;
          default:
            break;
        }
      },
      child: Container(
        margin: const EdgeInsets.only(top: 35),
        padding: EdgeInsets.symmetric(horizontal: horizontalScreenPadding),
        height: MediaQuery.of(context).size.height - 330,
        child: Stack(
          children: [
            Column(
              spacing: 30,
              children: [
                BlocTextField<UpdateProfileCubit, UpdateProfileState>(
                  errorSelector:
                      (state) =>
                          state is UpdateProfileFormInvalid
                              ? state.errors['name']
                              : null,
                  labelText: AppLocalizations.of(context)!.basicText_name,
                  textEditingController: _nameTextCont,
                  isEnabledState: (state) => state is! UpdateProfileDisabled,
                ),
                BlocTextField<UpdateProfileCubit, UpdateProfileState>(
                  errorSelector:
                      (state) =>
                          state is UpdateProfileFormInvalid
                              ? state.errors['surname']
                              : null,
                  labelText: AppLocalizations.of(context)!.basicText_surname,
                  textEditingController: _surnameTextCont,
                  isEnabledState: (state) => state is! UpdateProfileDisabled,
                ),
                BlocBuilder<UpdateProfileCubit, UpdateProfileState>(
                  builder: (context, state) {
                    return DropdownMenu<EducationLevel>(
                      controller: _educationLevelController,
                      enabled: state is! UpdateProfileDisabled,
                      width: double.infinity,
                      initialSelection: _selectedEducationLevel,
                      label: Text(
                        AppLocalizations.of(context)!.basicText_educationLevel,
                      ),
                      onSelected:
                          (EducationLevel? newValue) => setState(() {
                            if (newValue == null) return;
                            _educationLevelController.text = newValue
                                .toLocalizedString(context);
                            _selectedEducationLevel = newValue;
                          }),
                      dropdownMenuEntries:
                          EducationLevel.values.map((level) {
                            return DropdownMenuEntry<EducationLevel>(
                              value: level,
                              label: level.toLocalizedString(context),
                            );
                          }).toList(),
                    );
                  },
                ),
              ],
            ),
            BlocBuilder<UpdateProfileCubit, UpdateProfileState>(
              builder:
                  (context, state) => _ActionButtons(
                    nameCont: _nameTextCont,
                    surnameCont: _surnameTextCont,
                    educationLevel: _selectedEducationLevel,
                    oldProfile: widget.profile,
                    state: state,
                    cubit: context.read<UpdateProfileCubit>(),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButtons extends StatelessWidget {
  final UpdateProfileState state;
  final UpdateProfileCubit cubit;
  final TextEditingController nameCont;
  final TextEditingController surnameCont;
  final EducationLevel educationLevel;
  final Profile oldProfile;

  const _ActionButtons({
    super.key,
    required this.state,
    required this.cubit,
    required this.nameCont,
    required this.surnameCont,
    required this.educationLevel,
    required this.oldProfile,
  });

  @override
  Widget build(BuildContext context) {
    void onSave() {
      cubit.updateProfile(
        oldProfile,
        nameCont.text,
        surnameCont.text,
        educationLevel,
      );
    }

    List<Widget> buttons = [];
    switch (state) {
      case UpdateProfileDisabled():
        buttons.add(
          Expanded(
            child: SizedBox(
              height: 50,
              child: FilledButton(
                onPressed: cubit.enableForm,
                child: Text(AppLocalizations.of(context)!.basicText_edit),
              ),
            ),
          ),
        );
        break;
      default:
        buttons.add(
          Expanded(
            child: SizedBox(
              height: 50,
              child: OutlinedButton(
                onPressed: cubit.disableForm,
                child: Text(AppLocalizations.of(context)!.basicText_cancel),
              ),
            ),
          ),
        );
        buttons.add(
          Expanded(
            child: SizedBox(
              height: 50,
              child: FilledButton(
                onPressed: state is! UpdateProfileLoading ? onSave : null,
                child:
                    state is! UpdateProfileLoading
                        ? Text(AppLocalizations.of(context)!.basicText_save)
                        : SizedBox(
                          height: 30,
                          width: 30,
                          child: CircularProgressIndicator(
                            color: context.colors.primary,
                          ),
                        ),
              ),
            ),
          ),
        );
    }
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: buttons,
      ),
    );
  }
}
