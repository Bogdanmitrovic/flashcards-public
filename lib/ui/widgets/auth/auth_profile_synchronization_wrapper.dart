import 'package:flashcards/bloc/authorization/auth/auth_bloc.dart';
import 'package:flashcards/bloc/authorization/auth/auth_state.dart';
import 'package:flashcards/bloc/profile/profile_reader/profile_reader_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthProfileSynchronizationWrapper extends StatelessWidget {
  final Widget child;

  const AuthProfileSynchronizationWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen:
          (previous, current) =>
              current is Authenticated && current.error == null,
      listener: (context, state) {
        switch (state) {
          case Authenticated():
            context.read<ProfileReaderCubit>().readProfile();
            break;
          default:
        }
      },
      child: child,
    );
  }
}
