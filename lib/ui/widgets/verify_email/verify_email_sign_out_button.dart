import 'package:flashcards/bloc/authorization/auth/auth_bloc.dart';
import 'package:flashcards/bloc/authorization/auth/auth_event.dart';
import 'package:flashcards/bloc/authorization/auth/auth_state.dart';
import 'package:flashcards/bloc/authorization/email_verification/email_verification_bloc.dart';
import 'package:flashcards/bloc/authorization/email_verification/email_verification_state.dart';
import 'package:flashcards/ui/widgets/core/bloc_buttons/bloc_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';

class VerifyEmailSignOutButton extends StatelessWidget {
  const VerifyEmailSignOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    void onSignOut() {
      context.read<AuthBloc>().add(AuthSignOut());
    }

    return BlocBuilder<EmailVerificationBloc, EmailVerificationState>(
      builder: (context, state) {
        switch (state) {
          case EmailVerificationError(:final error):
            return BlocButton<AuthBloc, AuthState>(
              textString: AppLocalizations.of(context)!.basicText_signOut,
              onPressed: (context) => onSignOut,
              isLoadingState: (state) => state is AuthLoading,
            );
          default:
            return SizedBox.shrink();
        }
      },
    );
  }
}
