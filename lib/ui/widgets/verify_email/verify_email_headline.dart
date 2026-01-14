import 'package:flashcards/bloc/authorization/email_verification/email_verification_bloc.dart';
import 'package:flashcards/bloc/authorization/email_verification/email_verification_state.dart';
import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';

class VerifyEmailHeadline extends StatelessWidget {
  const VerifyEmailHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    var secondEmailTextStyle = TextStyle(color: context.colors.primaryContainer);

    return BlocBuilder<EmailVerificationBloc, EmailVerificationState>(
      builder: (context, state) {
        late Widget firstText;
        Widget? emailText;
        Widget? secondEmailText;
        switch (state) {
          case EmailVerificationsendingEmail():
            firstText = Text(
              AppLocalizations.of(
                context,
              )!.verifyEmailHeadline_sendingVerificationLink,
              style: TextTheme.of(context).headlineMedium,
            );
            break;
          case EmailVerificationLoadingUser():
            firstText = Text(
              textAlign: TextAlign.center,
              AppLocalizations.of(
                context,
              )!.verifyEmailHeadline_refreshingApplicationState,
              style: TextTheme.of(context).headlineMedium,
            );
            break;
          case EmailVerificationError():
            firstText = Text(
              textAlign: TextAlign.center,
              AppLocalizations.of(
                context,
              )!.verifyEmailHeadline_errorSendingVerificationLink,
              style: TextTheme.of(context).headlineMedium,
            );
            break;
          case EmailVerificationSent(:final email, :final secondEmail):
            firstText = Text(
              AppLocalizations.of(
                context,
              )!.verifyEmailHeadline_verifyYourEmailAddress,
              style: TextTheme.of(context).headlineMedium,
            );
            emailText = Text(
              email,
              style: TextTheme.of(context).headlineSmall?.merge(
                secondEmail == null
                    ? TextStyle(color: context.colors.primary)
                    : secondEmailTextStyle,
              ),
            );
            if (secondEmail != null) {
              secondEmailText = Text(
                secondEmail,
                style: TextTheme.of(
                  context,
                ).headlineSmall?.merge(TextStyle(color: context.colors.primary)),
              );
            }
          default:
            firstText = Text(
              AppLocalizations.of(
                context,
              )!.verifyEmailHeadline_verifyYourEmailAddress,
              style: TextTheme.of(context).headlineMedium,
            );
        }
        return Column(
          children: [
            firstText,
            emailText ?? SizedBox.shrink(),
            secondEmailText ?? SizedBox.shrink(),
          ],
        );
      },
    );
  }
}
