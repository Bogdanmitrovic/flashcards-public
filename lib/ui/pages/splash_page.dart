import 'package:auto_route/auto_route.dart';
import 'package:flashcards/bloc/authorization/auth/auth_bloc.dart';
import 'package:flashcards/bloc/authorization/auth/auth_state.dart';
import 'package:flashcards/config/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _hasRedirected = false;

  void _redirectUser(BuildContext context, AuthState authState) {
    if (_hasRedirected) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // print("Trying to redirect with state: $authState");
      final router = context.router;
      switch (authState) {
        case Authenticated():
          router.replaceAll([HomeRoute()]);
          _hasRedirected = true;
          break;
        case AuthVerifyEmailPending():
          router.replaceAll([VerifyEmailRoute()]);
          _hasRedirected = true;
          break;
        case AuthInitial():
          break;
        case AuthLoading():
          break;
        default:
          router.replaceAll([LoginRoute()]);
          _hasRedirected = true;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _redirectUser(context, context.read<AuthBloc>().state);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) {
        if (previous.runtimeType != current.runtimeType) return true;
        if (previous is Authenticated && current is Authenticated) {
          return previous.pendingEmailVerification !=
                  current.pendingEmailVerification ||
              previous.user.uid !=
                  current.user.uid; // or check more specific fields
        }
        return previous != current;
      },
      listener: (context, state) {
        _redirectUser(context, state);
      },
      child: Scaffold(
        body: Center(
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: CircularProgressIndicator(
                  color: Colors.indigo,
                  strokeWidth: 5,
                ),
              ),
              Text(
                AppLocalizations.of(context)!.splashPageText,
                style: TextTheme.of(context).headlineSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
