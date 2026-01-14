import 'package:auto_route/auto_route.dart';
import 'package:flashcards/bloc/custom_session/custom_session_getter/custom_session_getter_bloc.dart';
import 'package:flashcards/bloc/custom_session/custom_session_getter/custom_session_getter_event.dart';
import 'package:flashcards/bloc/osces/osce_getter/osce_getter_bloc.dart';
import 'package:flashcards/bloc/osces/osce_getter/osce_getter_event.dart';
import 'package:flashcards/bloc/pack/packs_getter/packs_getter_bloc.dart';
import 'package:flashcards/bloc/pack/packs_getter/packs_getter_event.dart';
import 'package:flashcards/config/router/router.dart';
import 'package:flashcards/data/repositories/flashcards/custom_session_repository.dart';
import 'package:flashcards/data/repositories/flashcards/pack_repository.dart';
import 'package:flashcards/data/repositories/osces/osce_repository.dart';
import 'package:flashcards/ui/pages/main_tab_pages/main_tab_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MainTabPage extends StatefulWidget implements AutoRouteWrapper {
  const MainTabPage({super.key});

  @override
  State<MainTabPage> createState() => _MainTabPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              PacksGetterBloc(packRepository: context.read<PackRepository>()),
        ),
        BlocProvider(
          create: (context) =>
              OsceGetterBloc(osceRepo: context.read<OsceRepository>()),
        ),
        BlocProvider(
          create: (context) => CustomSessionGetterBloc(
            sessionRepo: context.read<CustomSessionRepository>(),
          ),
        ),
      ],
      child: this,
    );
  }
}

class _MainTabPageState extends State<MainTabPage> with AutoRouteAware {
  TabsRouter? _tabsRouter;
  AutoRouteObserver? _observer;
  List<Widget> appBarActions = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _observer = RouterScope.of(
      context,
    ).firstObserverOfType<AutoRouteObserver>();
    if (_observer != null) {
      _observer!.subscribe(this, context.routeData);
    }
  }

  @override
  void didPopNext() {
    super.didPopNext();

    if (_tabsRouter!.isRouteActive(PacksRoute.name)) {
      context.read<PacksGetterBloc>().add(PacksGetterCacheRead());
      return;
    }

    if (_tabsRouter!.isRouteActive(OsceListRoute.name)) {
      context.read<OsceGetterBloc>().add(OsceGetterCacheRead());
    }

    if (_tabsRouter!.isRouteActive(PreviousSessionsRoute.name)) {
      context.read<CustomSessionGetterBloc>().add(
        CustomSessionGetterStateReset(),
      );
    }

    // print("[DEBUG] calling assign from pop");
    _assignAppBarActions();
  }

  void _assignAppBarActions() {
    if (_tabsRouter!.isRouteActive(OsceListRoute.name)) {
      print("[DEBUG] osce list active");

      appBarActions = [
        IconButton(
          onPressed: () => context.router.push(OsceTutorialRoute()),
          icon: const Icon(CupertinoIcons.question_circle),
        ),
      ];
    } else if (_tabsRouter!.isRouteActive(PacksRoute.name)) {
      print("[DEBUG] packs active");

      appBarActions = [
        IconButton(
          onPressed: () => context.router.push(FlashcardsTutorialRoute()),
          icon: const Icon(CupertinoIcons.question_circle),
        ),
        IconButton(
          onPressed: () => context.router.push(const PackSearchRoute()),
          icon: const Icon(Icons.search),
        ),
      ];
    } else if (_tabsRouter!.isRouteActive(PreviousSessionsRoute.name) ||
        _tabsRouter!.isRouteActive(CustomSessionResultRoute.name)) {
      print("[DEBUG] previous sessions active");

      appBarActions = [
        IconButton(
          onPressed: () => context.router.push(CustomSessionWrapperRoute()),
          icon: const Icon(CupertinoIcons.add),
        ),
      ];
    } else if (_tabsRouter!.isRouteActive(PacksTabRoute.name)) {
      print("[DEBUG] packs tab active");
      appBarActions = [
        IconButton(
          onPressed: () => context.router.push(FlashcardsTutorialRoute()),
          icon: const Icon(CupertinoIcons.question_circle),
        ),
        IconButton(
          onPressed: () => context.router.push(const PackSearchRoute()),
          icon: const Icon(Icons.search),
        ),
      ];
    } else {
      print("[DEBUG] no actions tabs active");
      appBarActions = [];
    }
  }

  @override
  void dispose() {
    _observer?.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) {
        _tabsRouter ??= tabsRouter;

        final title = MainTabRoutes.getRouteTitle(context, tabsRouter);
        print("[DEBUG] calling assign...");
        _assignAppBarActions();

        return AppBar(
          title: Text(title),
          leading: IconButton(
            icon: Icon(CupertinoIcons.profile_circled),
            onPressed: () {
              context.router.push(ProfileRoute());
            },
          ),
          actions: appBarActions,
        );
      },
      routes: MainTabRoutes.mainTabPages,
      bottomNavigationBuilder: (context, tabsRouter) {
        _tabsRouter ??= AutoTabsRouter.of(context);

        return NavigationBar(
          onDestinationSelected: tabsRouter.setActiveIndex,
          selectedIndex: tabsRouter.activeIndex,
          destinations: const <NavigationDestination>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.list_alt),
              icon: Icon(Icons.list_alt_outlined),
              label: "OSCE",
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.style),
              icon: Icon(Icons.style_outlined),
              label: "Cards",
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.insights),
              icon: Icon(Icons.insights_outlined),
              label: "Progress",
            ),
          ],
        );
      },
    );
  }
}
