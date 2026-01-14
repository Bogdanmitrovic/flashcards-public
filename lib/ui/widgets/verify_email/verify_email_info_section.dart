import 'package:flashcards/bloc/authorization/email_verification/email_verification_bloc.dart';
import 'package:flashcards/bloc/authorization/email_verification/email_verification_state.dart';
import 'package:flashcards/ui/widgets/core/card_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';

class VerifyEmailInfoSection extends StatelessWidget {
  const VerifyEmailInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmailVerificationBloc, EmailVerificationState>(
      builder: (context, state) {
        switch (state) {
          case EmailVerificationSent(:final email, :final secondEmail):
            if (secondEmail == null) {
              return _EmailSent();
            } else {
              return _TwoEmailsDetected();
            }
          default:
            return SizedBox.shrink();
        }
      },
    );
  }
}

class _EmailSent extends StatelessWidget {
  const _EmailSent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(
            context,
          )!.verifyEmailInfoSection_emailSentMessage1,
        ),
        SizedBox(height: 7),
        Text(
          AppLocalizations.of(
            context,
          )!.verifyEmailInfoSection_emailSentMessage2,
        ),
      ],
    );
  }
}

class _TwoEmailsDetected extends StatelessWidget {
  const _TwoEmailsDetected({super.key});

  @override
  Widget build(BuildContext context) {
    return CardFactory.info(
      subtitle: Text(
        AppLocalizations.of(
          context,
        )!.verifyEmailInfoSection_twoEmailsDetectedMessage,
      ),
    );
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Text("Note", style: TextStyle(fontSize: 18, color: Colors.red)),
    //     SizedBox(height: 7),
    //     Text("We've sent verification links to both email addresses. "),
    //     SizedBox(height: 7),
    //     Text(
    //       "The first link you click will determine which email is saved to your profile_reader.",
    //     ),
    //   ],
    // );
  }
}
