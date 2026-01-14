import 'package:auto_route/auto_route.dart';
import 'package:flashcards/bloc/authorization/auth/auth_bloc.dart';
import 'package:flashcards/bloc/authorization/auth/auth_state.dart';
import 'package:flashcards/config/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthListener extends StatelessWidget {
  final Widget child;
  //final void Function(bool success)? onResult;

  const AuthListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          Future.delayed(const Duration(milliseconds: 750), () {
            if (!context.mounted) return;
            context.router.replaceAll([HomeRoute()]);
          });
        } else if (state is AuthVerifyEmailPending) {
          Future.delayed(const Duration(milliseconds: 4000), () {
            if (!context.mounted) return;
            context.router.replaceAll([VerifyEmailRoute()]);
          });
        }
      },
      child: child,
    );
  }
}
