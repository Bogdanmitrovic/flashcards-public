import 'package:flashcards/bloc/custom_session/session_tag_picker/session_tag_picker_state.dart';
import 'package:flashcards/domain/models/flashcards/admin_pack/admin_pack.dart';
import 'package:flashcards/domain/models/flashcards/simple_pack/simple_pack.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:flashcards/utils/util_functions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SessionTagPickerCubit extends Cubit<SessionTagPickerState> {
  SessionTagPickerCubit() : super(SessionTagPickerInitial());

  void loadAllTags(List<SimplePack> packs) {
    final allTagCounts = packs.tagCountsConverted;
    final selectedTags = packs.toTagSelectedMap(defaultValue: true);

    emit(
      SessionTagPickerState.loaded(
        allTagCounts: allTagCounts,
        selectedTags: selectedTags,
        firstOptionChecked: _getFirstOptionState(
          allTagCounts: allTagCounts,
          selectedTags: selectedTags,
        ),
      ),
    );
  }

  void toggleTag(Tag tag) {
    final state = this.state;
    if (state is! SessionTagPickerLoaded) {
      return;
    }

    final isSelected = _isSelected(tag);

    //if (!isSelected && state.selectedTags.length >= _selectionLimit) return;

    Map<String, bool> newMap;
    if (isSelected) {
      newMap = deleteMapEntry(state.selectedTags, tag.id);
    } else {
      newMap = updateMapEntry(state.selectedTags, tag.id, !isSelected);
    }

    emit(
      state.copyWith(
        selectedTags: newMap,
        firstOptionChecked: _getFirstOptionState(
          allTagCounts: state.allTagCounts,
          selectedTags: newMap,
        ),
      ),
    );
  }

  void firstOptionTapped() {
    final state = this.state;
    if (state is! SessionTagPickerLoaded) return;

    if (state.firstOptionChecked == true) {
      emit(
        state.copyWith(
          selectedTags: {},
          firstOptionChecked: _getFirstOptionState(
            allTagCounts: state.allTagCounts,
            selectedTags: {},
          ),
        ),
      );
      return;
    }

    final topTags =
        state.allTagCounts.entries
            //.take(_selectionLimit)
            .map((e) => e.key)
            .toList();

    final selectedTags = {for (final topTag in topTags) topTag.id: true};
    emit(
      state.copyWith(
        selectedTags: selectedTags,
        firstOptionChecked: _getFirstOptionState(
          allTagCounts: state.allTagCounts,
          selectedTags: selectedTags,
        ),
      ),
    );
  }

  bool _isSelected(Tag tag) {
    final state = this.state;
    if (state is! SessionTagPickerLoaded) {
      throw Exception("You can't use this function if the tags are not loaded");
    }

    return state.selectedTags[tag.id] == true;
  }

  bool? _getFirstOptionState({
    required Map<Tag, int> allTagCounts,
    required Map<String, bool> selectedTags,
  }) {
    // if (selectedTags.length >= _selectionLimit ||
    //     selectedTags.length == allTagCounts.length) {
    //   return true;
    // }
    if (selectedTags.length == allTagCounts.length) {
      return true;
    }

    if (selectedTags.isNotEmpty) return null;
    return false;
  }
}
