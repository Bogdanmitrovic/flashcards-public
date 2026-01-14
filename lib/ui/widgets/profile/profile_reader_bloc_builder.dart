import 'package:flashcards/bloc/profile/profile_reader/profile_reader_cubit.dart';
import 'package:flashcards/bloc/profile/profile_reader/profile_reader_state.dart';
import 'package:flashcards/domain/models/profile/profile.dart';
import 'package:flashcards/ui/widgets/core/app_bar_with_back_button.dart';
import 'package:flashcards/ui/widgets/core/error_screen.dart';
import 'package:flashcards/ui/widgets/core/loading_overlay_with_text.dart';
import 'package:flashcards/ui/widgets/core/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';
import 'package:loader_overlay/loader_overlay.dart';

// Returns error and loading scaffold if profile is not loaded / in error state
class ProfileReaderBlocBuilder extends StatelessWidget {
  final Widget Function(Profile profile) onLoadedContent;

  const ProfileReaderBlocBuilder({super.key, required this.onLoadedContent});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileReaderCubit, ProfileReaderState>(
      builder: (context, state) {
        if (state case ProfileReaderLoading()) {
          context.loaderOverlay.show(
            widgetBuilder:
                (_) => LoadingOverlayWithText(
                  textString:
                      AppLocalizations.of(context)!.loadingProfileData_message,
                ),
          );
        } else {
          context.loaderOverlay.hide();
        }

        switch (state) {
          case ProfileReaderInitial():
            return Scaffold(
              appBar: AppBarWithBackButton(
                title: Text(AppLocalizations.of(context)!.basicText_profile),
              ),
              body: ErrorScreen(
                errorMessage: "",
                message:
                    AppLocalizations.of(
                      context,
                    )!.profileReaderBlocBuilder_neverLoaded,
                onReload:
                    () => context.read<ProfileReaderCubit>().readProfile(),
              ),
            );
          case ProfileReaderError(:var message):
            return Scaffold(
              appBar: AppBarWithBackButton(
                title: Text(AppLocalizations.of(context)!.basicText_profile),
              ),
              body: ErrorScreen(
                errorMessage: message,
                message:
                    AppLocalizations.of(
                      context,
                    )!.readProfileErrorScreen_errorMessage,
                onReload:
                    () => context.read<ProfileReaderCubit>().readProfile(),
              ),
            );
          case ProfileReaderIsLoaded(:final profile):
            return onLoadedContent(profile);
          case ProfileReaderLoading():
          // return Scaffold(
          //   appBar: AppBarWithBackButton(
          //     title: Text(AppLocalizations.of(context)!.basicText_profile),
          //   ),
          //   body: LoadingScreen(message: AppLocalizations.of(context)!.loadingProfileData_message,),
          // );
          default:
            return Scaffold();
        }
      },
    );
    ;
  }
}
