import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'algolia_pack.freezed.dart';

part 'algolia_pack.g.dart';

@freezed
abstract class AlgoliaPack with _$AlgoliaPack {
  const factory AlgoliaPack({
    required String objectID,
    required String name,
    required List<String> tags,
    required bool isPaid,
  }) = _AlgoliaPack;

  factory AlgoliaPack.fromJson(JsonMap json) => _$AlgoliaPackFromJson(json);
}
