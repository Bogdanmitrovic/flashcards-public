import 'package:flashcards/bloc/authorization/email_verification/email_verification_bloc.dart';
import 'package:flashcards/bloc/authorization/email_verification/email_verification_event.dart';
import 'package:flashcards/bloc/authorization/email_verification/email_verification_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';

class VerifyEmailResendLinkButton extends StatelessWidget {
  const VerifyEmailResendLinkButton({super.key});

  @override
  Widget build(BuildContext context) {
    void onResendLink() {
      context.read<EmailVerificationBloc>().add(
        SendEmailVerification(
          onSuccess:
              () => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    AppLocalizations.of(
                      context,
                    )!.verifyEmailResendLinkButton_successMessage,
                  ),
                ),
              ),
        ),
      );
    }

    return BlocBuilder<EmailVerificationBloc, EmailVerificationState>(
      builder: (context, state) {
        switch (state) {
          case EmailVerificationSent(:final email, :final canResendEmail):
            return SizedBox(
              width: double.infinity,
              height: 60,
              child: FilledButton(
                onPressed: canResendEmail ? onResendLink : null,
                child: Text(
                  canResendEmail
                      ? AppLocalizations.of(
                        context,
                      )!.verifyEmailResendLinkButton_resendLinkButtonText
                      : AppLocalizations.of(
                        context,
                      )!.verifyEmailResendLinkButton_waitButtonText,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            );
          default:
            return SizedBox.shrink();
        }
      },
    );
  }
}
