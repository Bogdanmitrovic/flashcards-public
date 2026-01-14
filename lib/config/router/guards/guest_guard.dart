import 'package:auto_route/auto_route.dart';
import 'package:flashcards/bloc/authorization/auth/auth_bloc.dart';
import 'package:flashcards/bloc/authorization/auth/auth_state.dart';
import 'package:flashcards/config/router/router.dart';

class GuestGuard extends AutoRouteGuard {
  final AuthBloc authBloc;

  const GuestGuard({required this.authBloc});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authBloc.state is! Authenticated) {
      resolver.next();
    } else {
      resolver.redirectUntil(HomeRoute(), replace: true);
    }
  }
}
