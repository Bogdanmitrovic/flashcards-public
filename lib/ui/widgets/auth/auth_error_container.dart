import 'package:flashcards/bloc/authorization/auth/auth_bloc.dart';
import 'package:flashcards/bloc/authorization/auth/auth_state.dart';
import 'package:flashcards/utils/firebase_error_mapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';

class AuthErrorContainer extends StatelessWidget {
  final String? controllerErrorMessage;
  final String? successMessage;

  const AuthErrorContainer({
    super.key,
    required this.controllerErrorMessage,
    this.successMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        late String? message;
        if (controllerErrorMessage != null) {
          message = controllerErrorMessage!;
        } else if (state.error != null) {
          message =
              mapFirebaseError(error: state.error, context: context).message;
        } else {
          message = null;
        }

        if (message != null) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              textAlign: TextAlign.center,
              message,
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }

        if (state is Authenticated && successMessage != null) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              successMessage!,
              style: TextStyle(color: Colors.green, fontSize: 18),
            ),
          );
        }

        if (state is AuthVerifyEmailPending && successMessage != null) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              textAlign: TextAlign.center,
              AppLocalizations.of(
                context,
              )!.authErrorContainer_verifyEmailSuccess,
              style: TextStyle(color: Colors.green, fontSize: 18),
            ),
          );
        }

        return SizedBox.shrink();
      },
    );
  }
}
