import 'package:auto_route/auto_route.dart';
import 'package:flashcards/bloc/profile/profile_reader/profile_reader_cubit.dart';
import 'package:flashcards/bloc/profile/profile_reader/profile_reader_state.dart';
import 'package:flashcards/config/router/router.dart';

class ProfileLoadedGuard extends AutoRouteGuard {
  final ProfileReaderCubit profileReaderCubit;

  const ProfileLoadedGuard({required this.profileReaderCubit});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (profileReaderCubit.state is ProfileReaderIsLoaded) {
      resolver.next(true);
    } else {
      resolver.redirectUntil(const ProfileRoute());
    }
  }
}
