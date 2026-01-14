import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_tag_picker_state.freezed.dart';

extension SessionTagPickerStateX on SessionTagPickerState {
  List<String> get selectedTagsList {
    final state = this;
    if (state is! SessionTagPickerLoaded) return [];

    return state.selectedTags.entries.map((e) => e.key).toList();
  }

  List<Tag> get selectedTagsObject {
    final state = this;
    if (state is! SessionTagPickerLoaded) return [];

    return state.selectedTags.keys.map((k) => Tag.fromId(k)).toList();
  }

  bool get areAllTagsSelected {
    final state = this;
    if (state is! SessionTagPickerLoaded) return false;

    if (state.selectedTags.length == state.allTagCounts.length ||
        state.selectedTags.isEmpty) {
      return true;
    }

    return false;
  }
}

@freezed
sealed class SessionTagPickerState with _$SessionTagPickerState {
  const factory SessionTagPickerState.initial() = SessionTagPickerInitial;

  const factory SessionTagPickerState.loaded({
    required bool? firstOptionChecked,
    required Map<Tag, int> allTagCounts,
    required Map<String, bool> selectedTags,
  }) = SessionTagPickerLoaded;
}
