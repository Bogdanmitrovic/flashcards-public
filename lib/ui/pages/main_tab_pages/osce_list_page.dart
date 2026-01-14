import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flashcards/bloc/osces/osce_getter/osce_getter_bloc.dart';
import 'package:flashcards/bloc/osces/osce_getter/osce_getter_event.dart';
import 'package:flashcards/bloc/osces/osce_getter/osce_getter_state.dart';
import 'package:flashcards/domain/models/osce/simple_osce/simple_osce.dart';
import 'package:flashcards/ui/constants/styles.dart';
import 'package:flashcards/ui/widgets/core/error_screen.dart';
import 'package:flashcards/ui/widgets/osce/osce_list_shimmer.dart';
import 'package:flashcards/ui/widgets/osce/osce_ui_card.dart';
import 'package:flashcards/utils/firebase_error_mapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

@RoutePage()
class OsceListPage extends StatelessWidget {
  const OsceListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _OsceListView();
  }
}

class _OsceListView extends StatefulWidget {
  const _OsceListView({super.key});

  @override
  State<_OsceListView> createState() => _OsceListViewState();
}

class _OsceListViewState extends State<_OsceListView> with AutoRouteAware {
  AutoRouteObserver? _observer;

  void _readCache() {
    context.read<OsceGetterBloc>().add(OsceGetterCacheRead());
  }

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
  void dispose() {
    _observer?.unsubscribe(this);
    super.dispose();
  }

  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {
    super.didChangeTabRoute(previousRoute);
    _readCache();
  }

  Future<void> _handleRefresh(BuildContext context) {
    final completer = Completer<void>();
    context.read<OsceGetterBloc>().add(OsceGetterRefresh(completer: completer));

    return completer.future.catchError((error) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(extractErrorMessage(error))));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OsceGetterBloc, OsceGetterState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalScreenPadding),
            child: RefreshIndicator(
              onRefresh: () => _handleRefresh(context),
              child: PagedListView(
                state: state.pagingState,
                fetchNextPage: context.read<OsceGetterBloc>().fetchNextPage,
                builderDelegate: PagedChildBuilderDelegate(
                  firstPageProgressIndicatorBuilder: (context) =>
                      OsceListShimmer(),
                  firstPageErrorIndicatorBuilder: (context) {
                    return ErrorScreen(
                      errorMessage: "Error loading OSCE tests",
                      onReload: context.read<OsceGetterBloc>().fetchNextPage,
                    );
                  },
                  noItemsFoundIndicatorBuilder: (context) {
                    return Center(
                      child: Text(
                        AppLocalizations.of(context)!.osceListPage_noPacks,
                      ),
                    );
                  },
                  itemBuilder: (context, item, index) {
                    final simpleOsce = item as SimpleOsce;
                    return OscesUiCard(
                      simpleOsce: simpleOsce,
                      hasOsce: state.hasOsce,
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
