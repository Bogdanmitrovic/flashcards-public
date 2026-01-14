import 'package:auto_route/auto_route.dart';
import 'package:flashcards/bloc/authorization/auth/auth_bloc.dart';
import 'package:flashcards/bloc/authorization/auth/auth_state.dart';
import 'package:flashcards/config/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignOutHandlerWrapperPage extends StatelessWidget
    implements AutoRouteWrapper {
  const SignOutHandlerWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    void showSessionEndedDialog() {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            icon: Icon(Icons.timer),
            title: Text("Your session has expired"),
            content: Text(
              "You need to enter your credentials again in order to continue using application.",
            ),
            actions: [
              FilledButton(
                onPressed: () => context.router.replaceAll([LoginRoute()]),
                child: Text("Login again"),
              ),
            ],
          );
        },
      );
    }

    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) => current is Unauthenticated,
      listener: (context, state) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          print('[DEBUG] should redirect now...');
          switch (state) {
            case Unauthenticated(:final reason):
              switch (reason) {
                case SignOutReason.tokenExpired:
                  showSessionEndedDialog();
                  break;
                case SignOutReason.manual:
                  context.router.replaceAll([LoginRoute()]);
                  break;
                case SignOutReason.userDeleted:
                  context.router.replaceAll([DeleteAccountSuccessfulRoute()]);
                  break;
                case SignOutReason.emailUpdated:
                  context.router.replaceAll([UpdateEmailSuccessfulRoute()]);
                  break;
                default:
                  break;
              }

            default:
              break;
          }
        });
      },
      child: this,
    );
  }
}
