import 'package:flashcards/bloc/authorization/update_email/update_email_during_verification_cubit.dart';
import 'package:flashcards/bloc/authorization/update_email/update_email_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';

class ChangeEmailButton extends StatelessWidget {
  final VoidCallback onUpdate;

  const ChangeEmailButton({super.key, required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateEmailDuringVerificationCubit, UpdateEmailState>(
      builder: (context, state) {
        bool isLoading = state is UpdateEmailLoading;
        return TextButton(
          onPressed: !isLoading ? onUpdate : null,
          child:
              !isLoading
                  ? Text(AppLocalizations.of(context)!.basicText_update)
                  : SizedBox(
                    width: 23,
                    height: 23,
                    child: CircularProgressIndicator(
                      color: Colors.indigo,
                      strokeWidth: 3,
                    ),
                  ),
        );
      },
    );
  }
}
