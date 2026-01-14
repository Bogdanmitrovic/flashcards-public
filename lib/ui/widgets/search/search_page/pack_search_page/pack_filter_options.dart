import 'package:flashcards/bloc/pack/pack_searcher/pack_searcher_bloc.dart';
import 'package:flashcards/bloc/pack/pack_searcher/pack_searcher_event.dart';
import 'package:flashcards/bloc/pack/pack_searcher/pack_searcher_state.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PackFilterOptions extends StatelessWidget {
  const PackFilterOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<
      PackSearcherBloc,
      PackSearcherState,
      (List<MapEntry<Tag, int>>, Map<Tag, bool>)
    >(
      selector: (state) {
        return (state.tagCounts, state.selectedTags);
      },
      builder: (context, tuple) {
        final tagCountsList = tuple.$1;
        final selectedTags = tuple.$2;
        return ListView.builder(
          itemCount: tagCountsList.length,
          itemBuilder: (context, index) {
            final tagEntry = tagCountsList[index];
            final isSelected = selectedTags[tagEntry.key] == true;

            return _TagCountItem(tagCount: tagEntry, isSelected: isSelected);
          },
        );
      },
    );
  }
}

class _TagCountItem extends StatelessWidget {
  final MapEntry<Tag, int> tagCount;
  final bool isSelected;

  const _TagCountItem({
    super.key,
    required this.tagCount,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    bool isDisabled = tagCount.value == 0;

    void onChanged(value) {
      context.read<PackSearcherBloc>().add(
        PackSearcherTagToggled(tag: tagCount.key),
      );
    }

    return CheckboxListTile(
      title: Text('${tagCount.key.name} (${tagCount.value})'),
      value: isSelected,
      onChanged: !isDisabled ? onChanged : null,
    );
  }
}
