import 'package:auto_route/auto_route.dart';
import 'package:flashcards/bloc/authorization/auth/auth_bloc.dart';
import 'package:flashcards/bloc/authorization/auth/auth_event.dart';
import 'package:flashcards/bloc/authorization/auth/auth_state.dart';
import 'package:flashcards/bloc/authorization/email_verification/email_verification_bloc.dart';
import 'package:flashcards/bloc/authorization/email_verification/email_verification_state.dart';
import 'package:flashcards/config/router/router.dart';
import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flashcards/ui/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';

class VerifyEmailActionButtons extends StatelessWidget {
  const VerifyEmailActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    void onSignOut() {
      context.read<AuthBloc>().add(AuthSignOut());
    }

    return BlocBuilder<EmailVerificationBloc, EmailVerificationState>(
      builder: (context, state) {
        switch (state) {
          case EmailVerificationSent(
            email: final email,
            canResendEmail: final canResendEmail,
          ):
            bool isLoading =
                state is EmailVerificationLoadingUser ||
                state is EmailVerificationsendingEmail;
            return Row(
              spacing: 10,
              children: [
                Expanded(
                  child: BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return OutlinedButton(
                        onPressed: !isLoading ? onSignOut : null,
                        child:
                            state is! AuthLoading
                                ? Text(
                                  AppLocalizations.of(
                                    context,
                                  )!.basicText_signOut,
                                )
                                : CircularProgressIndicator(
                                  color: context.colors.primary,
                                ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: FilledButton(
                    style: tonalButtonStyle(context),
                    onPressed:
                        () => context.router.push(
                          ChangeEmailDuringVerificationRoute(
                            emailVerificationBloc:
                                context.read<EmailVerificationBloc>(),
                          ),
                        ),
                    child: Text(
                      AppLocalizations.of(
                        context,
                      )!.verifyEmailActionButtons_changeEmail,
                    ),
                  ),
                ),
              ],
            );
          default:
            return SizedBox.shrink();
        }
      },
    );
  }
}
