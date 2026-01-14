import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flashcards/bloc/reports/fc_reports_getter/fc_reports_getter_bloc.dart';
import 'package:flashcards/bloc/reports/fc_reports_getter/fc_reports_getter_event.dart';
import 'package:flashcards/bloc/reports/fc_reports_getter/fc_reports_getter_state.dart';
import 'package:flashcards/data/repositories/flashcards/report_repository.dart';
import 'package:flashcards/domain/models/flashcards/reports/flashcard_report/flashcard_report.dart';
import 'package:flashcards/ui/constants/styles.dart';
import 'package:flashcards/ui/widgets/core/error_screen.dart';
import 'package:flashcards/ui/widgets/profile/admin_dashboard/reports/flashcard_report_tile.dart';
import 'package:flashcards/ui/widgets/profile/admin_dashboard/reports/flashcards_report_shimmer.dart';
import 'package:flashcards/utils/firebase_error_mapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

@RoutePage()
class FlashcardReportsPage extends StatelessWidget {
  const FlashcardReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              FcReportsGetterBloc(reportRepo: context.read<ReportRepository>()),
      child: _View(),
    );
  }
}

class _View extends StatelessWidget {
  const _View({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> handleRefresh(BuildContext context) {
      final completer = Completer<void>();
      context.read<FcReportsGetterBloc>().add(
        FcReportsGetterRefresh(completer: completer),
      );

      return completer.future.catchError((error) {
        if (!context.mounted) return;
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(extractErrorMessage(error))));
      });
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalScreenPadding),
      child: BlocBuilder<FcReportsGetterBloc, FcReportsGetterState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () => handleRefresh(context),
            child: PagedListView(
              state: state.pagingState,
              fetchNextPage: context.read<FcReportsGetterBloc>().fetchNextPage,
              builderDelegate: PagedChildBuilderDelegate(
                firstPageProgressIndicatorBuilder:
                    (context) => FlashcardsReportShimmer(),
                firstPageErrorIndicatorBuilder:
                    (context) => ErrorScreen(
                      errorMessage: extractErrorMessage(
                        state.pagingState.error!,
                      ),
                      onReload:
                          () => context.read<FcReportsGetterBloc>().add(
                            FcReportsGetterRefresh(),
                          ),
                    ),
                itemBuilder: (context, item, index) {
                  //return FlashcardsReportShimmer();
                  final report = item as FlashcardReport;
                  return FlashcardReportTile(report: report);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
