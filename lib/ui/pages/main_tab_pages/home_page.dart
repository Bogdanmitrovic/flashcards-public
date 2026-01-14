import 'package:auto_route/auto_route.dart';
import 'package:flashcards/config/router/router.dart';
import 'package:flashcards/ui/pages/main_tab_pages/main_tab_routes.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            ExpansionTile(
              leading: Icon(Icons.style),
              title: Text("Cards"),
              children: [
                _subItem(
                  "Packs",
                  onTap: () {
                    AutoTabsRouter.of(context).setActiveIndex(
                      MainTabRoutes.mainTabToIndex(MainTab.packs),
                    );
                  },
                ),
                _subItem(
                  "Browse flashcards",
                  onTap: () {
                    context.router.push(const FlashcardsSearcherRoute());
                  },
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(Icons.list_alt),
              title: Text("OSCE"),
              children: [
                _subItem(
                  "Packs",
                  onTap: () {
                    context.tabsRouter.setActiveIndex(
                      MainTabRoutes.mainTabToIndex(MainTab.osce),
                    );
                  },
                ),
                _subItem(
                  "Previous results",
                  onTap: () {
                    context.router.push(const OscePerformancesRoute());
                  },
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(Icons.flag),
              title: Text("Target"),
              children: [
                _subItem(
                  "Setup goals",
                  onTap: () {
                    context.router.push(const UpdateCardsPerSessionRoute());
                  },
                ),
                _subItem(
                  "Progress",
                  onTap: () {
                    AutoTabsRouter.of(context).setActiveIndex(
                      MainTabRoutes.mainTabToIndex(MainTab.learningProgress),
                    );
                  },
                ),
              ],
            ),

            ListTile(
              title: Text("Buy Subscriptions"),
              onTap: () => context.router.push(ProdPaywallRoute()),
              leading: Icon(Icons.subscriptions),
              trailing: Icon(Icons.chevron_right),
            )
          ],
        ),
      ),
    );
  }
}

Widget _subItem(String name, {required VoidCallback onTap}) {
  return ListTile(
    title: Text(name),
    onTap: onTap,
    contentPadding: EdgeInsets.only(left: 32),
    trailing: Icon(Icons.chevron_right),
  );
}
