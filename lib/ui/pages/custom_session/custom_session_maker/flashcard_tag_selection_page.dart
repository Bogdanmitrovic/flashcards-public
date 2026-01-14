import 'package:auto_route/annotations.dart';
import 'package:flashcards/bloc/custom_session/session_tag_picker/session_tag_picker_cubit.dart';
import 'package:flashcards/bloc/custom_session/session_tag_picker/session_tag_picker_state.dart';
import 'package:flashcards/domain/models/flashcards/simple_pack/simple_pack.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:flashcards/ui/constants/styles.dart';
import 'package:flashcards/ui/widgets/core/card_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FlashcardTagSelectionPage extends StatefulWidget {
  final List<SimplePack> packs;

  const FlashcardTagSelectionPage({super.key, required this.packs});

  @override
  State<FlashcardTagSelectionPage> createState() =>
      _FlashcardTagSelectionPageState();
}

class _FlashcardTagSelectionPageState extends State<FlashcardTagSelectionPage> {
  @override
  void initState() {
    super.initState();
    context.read<SessionTagPickerCubit>().loadAllTags(widget.packs);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SessionTagPickerCubit, SessionTagPickerState>(
      listenWhen:
          (previous, current) =>
              current is SessionTagPickerLoaded && current.selectedTags.isEmpty,
      listener: (context, state) {
        if (state is SessionTagPickerLoaded && state.selectedTags.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Showing all cards – no tag filter applied."),
            ),
          );
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: horizontalScreenPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardFactory.info(
                  title: Text("Select tags"),
                  subtitle: Text(
                    "Flashcards can contain tags, here you can specify what "
                    "tags you want in your custom sessions",
                  ),
                ),

                SizedBox(height: 20),

                BlocBuilder<SessionTagPickerCubit, SessionTagPickerState>(
                  builder: (context, state) {
                    switch (state) {
                      case SessionTagPickerInitial():
                        return Center(child: CircularProgressIndicator());
                      case SessionTagPickerLoaded(
                        :final allTagCounts,
                        :final selectedTags,
                        :final firstOptionChecked,
                      ):
                        final entries = allTagCounts.entries.toList();
                        if (entries.isEmpty) {
                          return Center(
                            child: Text(
                              "Looks like the packs you selected don't have "
                              "tags in them, you can skip this step.",
                            ),
                          );
                        }
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CheckboxListTile(
                              title: Text("Select All"),
                              value: firstOptionChecked,
                              tristate: true,
                              onChanged:
                                  (value) =>
                                      context
                                          .read<SessionTagPickerCubit>()
                                          .firstOptionTapped(),
                            ),

                            ListView.builder(
                              primary: false,
                              shrinkWrap: true,
                              itemCount: entries.length,
                              itemBuilder: (context, index) {
                                final tagCount = entries[index];
                                final isSelected =
                                    selectedTags[tagCount.key.id] == true;

                                return _TagCountItem(
                                  tagCount: tagCount,
                                  isSelected: isSelected,
                                );
                              },
                            ),
                          ],
                        );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
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
    return CheckboxListTile(
      title: Text(tagCount.key.name),
      subtitle: Text('${tagCount.value} flashcards'),
      value: isSelected,
      onChanged: (value) {
        context.read<SessionTagPickerCubit>().toggleTag(tagCount.key);
      },
    );
  }
}
