import 'package:flashcards/bloc/authorization/email_verification/email_verification_bloc.dart';
import 'package:flashcards/bloc/authorization/email_verification/email_verification_state.dart';
import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyEmailIcon extends StatelessWidget {
  const VerifyEmailIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmailVerificationBloc, EmailVerificationState>(
      builder: (context, state) {
        switch (state) {
          case EmailVerificationsendingEmail():
          case EmailVerificationLoadingUser():
            return SizedBox(
              height: 100,
              width: 100,
              child: CircularProgressIndicator(
                padding: EdgeInsets.all(10),
                color: context.colors.primary,
                strokeWidth: 5,
              ),
            );
          case EmailVerificationError():
            return Icon(Icons.error_outline, size: 100, color: context.colors.error);
          default:
            return Icon(
              Icons.verified_outlined,
              size: 100,
              color: context.colors.primary,
            );
        }
      },
    );
  }
}
