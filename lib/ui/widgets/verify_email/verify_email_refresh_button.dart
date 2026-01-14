import 'package:flashcards/bloc/authorization/email_verification/email_verification_bloc.dart';
import 'package:flashcards/bloc/authorization/email_verification/email_verification_event.dart';
import 'package:flashcards/bloc/authorization/email_verification/email_verification_state.dart';
import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyEmailRefreshButton extends StatelessWidget {
  const VerifyEmailRefreshButton({super.key});

  @override
  Widget build(BuildContext context) {
    void onReloadUser() {
      context.read<EmailVerificationBloc>().add(EmailVerificationReloadUser());
    }

    return BlocBuilder<EmailVerificationBloc, EmailVerificationState>(
      builder: (context, state) {
        bool isLoading =
            state is EmailVerificationLoadingUser ||
            state is EmailVerificationsendingEmail;
        return IconButton(
          onPressed: !isLoading ? onReloadUser : null,
          icon: Icon(
            Icons.refresh,
            color: !isLoading
                ? context.colors.primaryContainer
                : context.colors.outlineVariant,
          ),
        );
      },
    );
  }
}
