import 'package:auto_route/auto_route.dart';
import 'package:flashcards/bloc/osce_performance_blocs/delete_osce_attempt/delete_osce_attempt_cubit.dart';
import 'package:flashcards/bloc/osce_performance_blocs/delete_osce_attempt/delete_osce_attempt_state.dart';
import 'package:flashcards/data/repositories/osces/osce_performance_repository.dart';
import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flashcards/ui/widgets/core/loading_overlay_listener.dart';
import 'package:flashcards/utils/firebase_error_mapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<bool?> showDeleteOsceAttemptDialog({
  required BuildContext context,
  required String osceId,
  required String attemptId,
}) async {
  return await showDialog(
    context: context,
    builder: (context) => BlocProvider(
      create: (context) => DeleteOsceAttemptCubit(
        perfRepo: context.read<OscePerformanceRepository>(),
      ),
      child: _Content(osceId: osceId, attemptId: attemptId),
    ),
  );
}

class _Content extends StatelessWidget {
  final String osceId;
  final String attemptId;

  const _Content({super.key, required this.osceId, required this.attemptId});

  @override
  Widget build(BuildContext context) {
    void onDelete() {
      context.read<DeleteOsceAttemptCubit>().deleteAttempt(
        osceId: osceId,
        attemptId: attemptId,
      );
    }

    return LoadingOverlayListener<
      DeleteOsceAttemptCubit,
      DeleteOsceAttemptState
    >(
      isLoading: (state) => state is DeleteOsceAttemptLoading,
      child: BlocListener<DeleteOsceAttemptCubit, DeleteOsceAttemptState>(
        listenWhen: (previous, current) =>
            current is DeleteOsceAttemptSuccess ||
            current is DeleteOsceAttemptError,
        listener: (context, state) {
          switch (state) {
            case DeleteOsceAttemptSuccess():
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Successfully deleted OSCE attempt.")),
              );
              context.router.pop(true);
              break;
            case DeleteOsceAttemptError(:final error):
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(extractErrorMessage(error))),
              );
              context.router.pop(false);
              break;
            case DeleteOsceAttemptInitial():
            case DeleteOsceAttemptLoading():
              break;
          }
        },
        child: AlertDialog(
          icon: Icon(Icons.delete_forever),
          title: Text("Delete Attempt?"),
          content: Text(
            "Deleting an OSCE attempt is permanent and cannot be undone.\n\n"
            "Removing this attempt will also free up space for more results, "
            "since you are limited to ${context.read<OscePerformanceRepository>().maxAttemptsPerOsce} saved results per OSCE.",
          ),
          actions: [
            TextButton(
              onPressed: () => context.router.pop(),
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: onDelete,
              child: Text(
                "Delete attempt",
                style: TextStyle(color: context.colors.error),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
