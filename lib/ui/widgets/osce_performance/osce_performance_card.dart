import 'package:flashcards/bloc/osce_performance_blocs/osce_perf_getter/osce_perf_getter_bloc.dart';
import 'package:flashcards/bloc/osce_performance_blocs/osce_perf_getter/osce_perf_getter_event.dart';
import 'package:flashcards/domain/models/osce/osce_performance/osce_performance.dart';
import 'package:flashcards/ui/constants/placeholders.dart';
import 'package:flashcards/ui/constants/styles.dart';
import 'package:flashcards/ui/dialogs/osce_performance/delete_osce_performance_dialog.dart';
import 'package:flashcards/ui/dialogs/osce_performance/osce_attemps_botton_sheet.dart';
import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flashcards/utils/util_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class OscePerformanceCard extends StatelessWidget {
  final OscePerformance performance;
  final VoidCallback onAttemptDeleted;

  const OscePerformanceCard({
    super.key,
    required this.performance,
    required this.onAttemptDeleted,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormatted = formatSmartDate(performance.firstAttemptDate);

    void onPerfDelete() async {
      final result = await showDeleteOscePerformanceDialog(
        context: context,
        osceId: performance.simpleOsce.id,
      );

      if (result == null || !result || !context.mounted) return;

      context.read<OscePerfGetterBloc>().add(
        OscePerfGetterDeleted(osceId: performance.simpleOsce.id),
      );
    }

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap:
            () => showOsceAttemptsBottomSheet(
              context: context,
              osceId: performance.simpleOsce.id,
              onAttemptDeleted: onAttemptDeleted,
            ),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Naziv OSCE-a
                  Expanded(
                    child: Text(
                      performance.simpleOsce.name,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  // More actions
                  _PopupMenuButton(onDelete: onPerfDelete),
                ],
              ),

              const SizedBox(height: 6),

              // Scenario
              Text(
                performance.simpleOsce.scenario,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: context.colors.onSurfaceVariant),
              ),

              const SizedBox(height: 12),

              // Datum prvog pokušaja
              Row(
                children: [
                   Icon(
                    Icons.calendar_today,
                    size: 16,
                    color: context.colors.onSurfaceVariant,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    "First attempt: $dateFormatted",
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: context.colors.onSurfaceVariant),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Statistika
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _StatItem(
                    icon: Icons.star,
                    label: "Best score",
                    value: "${performance.bestScore}",
                  ),
                  _StatItem(
                    icon: Icons.history,
                    label: "Attempts",
                    value: "${performance.attemptsCount}",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _StatItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: context.colors.primaryContainer),
        const SizedBox(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              label,
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: context.colors.outline),
            ),
          ],
        ),
      ],
    );
  }
}

enum Menu { delete }

class _PopupMenuButton extends StatelessWidget {
  final VoidCallback onDelete;

  const _PopupMenuButton({super.key, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Menu>(
      itemBuilder:
          (context) => [
            PopupMenuItem(
              onTap: onDelete,
              child: ListTile(
                leading: Icon(Icons.delete_forever, color: context.colors.error),
                title: Text("Delete"),
                titleTextStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: context.colors.error,
                ),
              ),
            ),
          ],
    );
  }
}

class OscePerformancesShimmer extends StatelessWidget {
  const OscePerformancesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Shimmer.fromColors(
        baseColor: shimmerBaseColor(context),
        highlightColor: shimmerHighlightColor(context),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitlePlaceholder(width: 100, isTwoLine: false),

              const SizedBox(height: 36),

              ContentNoBannerPlaceholder(lineType: ContentLineType.threeLines),

              const SizedBox(height: 40),

              ContentNoBannerPlaceholder(lineType: ContentLineType.twoLines),
            ],
          ),
        ),
      ),
    );
  }
}
