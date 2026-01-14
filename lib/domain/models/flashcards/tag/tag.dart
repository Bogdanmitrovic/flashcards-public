import 'package:equatable/equatable.dart';
import 'package:flashcards/data/services/api/dto/flashcards/tag/tag_dto.dart';

class Tag extends Equatable {
  final String id;
  final String name;

  const Tag({required this.id, required this.name});

  factory Tag.fromName(String tagName) {
    final normalizedId = _normalizeTag(tagName);
    final displayName = _displayName(tagName);
    return Tag(id: normalizedId, name: displayName);
  }

  factory Tag.fromId(String id) {
    final displayName = _displayName(id);
    return Tag(id: id, name: displayName);
  }

  /// Normalize a tag for internal ID: lowercased, spaces to '__', dashes preserved.
  static String _normalizeTag(String tag) {
    return tag
        .trim()
        .toLowerCase()
        .replaceAll(
          RegExp(r'\s+'),
          '__',
        ) // Replace spaces with double underscore
        .replaceAll(
          RegExp(r'^_+|_+$'),
          '',
        ); // Trim leading/trailing underscores
  }

  /// Display formatter: restores spacing, capitalizes words
  static String _displayName(String tag) {
    return tag
        .replaceAll('__', ' ') // Convert internal separator to space
        .split(' ')
        .map(
          (word) =>
              word.isEmpty
                  ? ''
                  : '${word[0].toUpperCase()}${word.substring(1)}',
        )
        .join(' ');
  }

  @override
  List<Object?> get props => [id, name];
}

Map<String, int> updatePackTagCounts(
  Map<String, int> packTagsMap,
  List<String> oldTags,
  List<String> newTags,
) {
  final oldSet = Set<String>.from(oldTags);
  final newSet = Set<String>.from(newTags);
  final packTags = Map<String, int>.from(packTagsMap);

  // Tags to add: in new but not in old
  for (final tag in newSet) {
    if (!oldSet.contains(tag)) {
      packTags[tag] = (packTags[tag] ?? 0) + 1;
    }
  }

  // Tags to remove: in old but not in new
  for (final tag in oldSet) {
    if (!newSet.contains(tag)) {
      if (!packTags.containsKey(tag)) {
        throw Exception('Tag "$tag" not found in packTags');
      }
      if (packTags[tag] == 1) {
        packTags.remove(tag);
      } else {
        packTags[tag] = packTags[tag]! - 1;
      }
    }
  }

  return packTags;
}

Map<String, int> addTagsToPackMap(
  Map<String, int> packTags,
  List<String> newTags,
) {
  final newMap = Map<String, int>.of(packTags);
  for (final tag in newTags) {
    var tagCount = newMap[tag];
    if (tagCount == null) {
      newMap[tag] = 1;
      continue;
    }

    newMap[tag] = tagCount + 1;
  }
  return newMap;
}

Map<String, int> removeTagsFromPackMap(
  Map<String, int> packTags,
  List<String> tagsToRemove,
) {
  final newMap = Map<String, int>.of(packTags);

  for (final tag in tagsToRemove) {
    var tagCount = newMap[tag];
    if (tagCount == null) {
      throw Exception(
        "Pack tags and flashcard tags out of sync, you are trying to "
        "remove tag from flashcard that is not inside a pack",
      );
    }

    --tagCount;
    if (tagCount == 0) {
      newMap.remove(tag);
      continue;
    }
    newMap[tag] = tagCount;
  }

  return newMap;
}

extension TagListX on List<Tag> {
  List<String> toIdList() => map((tag) => tag.id).toList();

  List<TagDto> findNewTagsDto(List<Tag> allAvailableTags) =>
      where(
        (tag) => !allAvailableTags.contains(tag),
      ).map(TagDto.fromTagDomain).toList();

  List<Tag> findNewTags(List<Tag> allAvailableTags) =>
      where((tag) => !allAvailableTags.contains(tag)).toList();
}

extension StringListX on List<String> {
  List<Tag> toTagList() => map((el) => Tag.fromId(el)).toList();
}
