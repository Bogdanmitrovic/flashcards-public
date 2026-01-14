import 'package:auto_route/auto_route.dart';
import 'package:flashcards/bloc/profile/profile_reader/profile_reader_cubit.dart';
import 'package:flashcards/bloc/profile/profile_reader/profile_reader_state.dart';
import 'package:flashcards/config/router/router.dart';
import 'package:flashcards/domain/models/profile/profile.dart';

class AdminGuard extends AutoRouteGuard {
  final ProfileReaderCubit profileReaderCubit;

  const AdminGuard({required this.profileReaderCubit});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final state = profileReaderCubit.state;
    if (state is ProfileReaderIsLoaded && state.profile.isAdmin) {
      resolver.next(true);
    } else {
      resolver.redirectUntil(const PermissionDeniedRoute());
    }
  }
}
