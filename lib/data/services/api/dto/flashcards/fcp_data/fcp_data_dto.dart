import 'package:flashcards/data/mappers/fsrs_mapper.dart';
import 'package:flashcards/data/services/api/dto/flashcards/fcp_data/flashcard_snapshot/flashcard_snapshot_dto.dart';
import 'package:flashcards/domain/models/flashcards/bookmark/bookmark.dart';
import 'package:flashcards/domain/models/flashcards/flashcard/flashcard.dart';
import 'package:flashcards/domain/models/flashcards/ignored_flashcard/ignored_flashcard.dart';
import 'package:flashcards/domain/models/flashcards/stat_record/stat_record.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fsrs/fsrs.dart';

part 'fcp_data_dto.freezed.dart';

part 'fcp_data_dto.g.dart';

@freezed
abstract class FcpDataDto with _$FcpDataDto {
  @JsonSerializable(explicitToJson: true)
  const factory FcpDataDto({
    required String profileId,
    required String flashcardId,
    required bool isPaid,
    @Default(false) bool hasBookmark,
    @Default(false) bool ignored,
    @JsonKey(name: 'flashcardSnapshot')
    required FlashcardSnapshotDto flashcardSnapshotDto,
    @JsonKey(
      name: 'fsrs_card',
      fromJson: FsrsCardX.fromJson,
      toJson: FsrsCardX.toJsonStatic,
    )
    required Card fsrsCard,
  }) = _FcpDataDto;

  factory FcpDataDto.fromJson(JsonMap json) => _$FcpDataDtoFromJson(json);

  factory FcpDataDto.fromStatRecord(StatRecord record, String profileId) {
    if (record.flashcard == null) {
      throw Exception(
        "You are not allowed to create fcp_data doc with null flashcard, $record",
      );
    }

    return FcpDataDto(
      isPaid: record.isPaid,
      profileId: profileId,
      flashcardId: record.flashcardId,
      fsrsCard: record.card,
      flashcardSnapshotDto: FlashcardSnapshotDto.fromFlashcard(
        record.flashcard!,
      ),
      hasBookmark: record.hasBookmark,
    );
  }
}

extension FcpDataDtoX on FcpDataDto {
  Flashcard toFlashcardDomain() =>
      flashcardSnapshotDto.toFlashcardDomain(flashcardId, isPaid: isPaid);

  StatRecord toStatRecordDomain() {
    return StatRecord(
      isPaid: isPaid,
      packId: flashcardSnapshotDto.packId,
      flashcardId: flashcardId,
      card: fsrsCard,
      hasBookmark: hasBookmark,
      flashcard: toFlashcardDomain(),
      isPulledFromDb: true,
    );
  }

  Bookmark toBookmarkDomain() {
    return Bookmark(
      flashcardId: flashcardId,
      question: flashcardSnapshotDto.question,
      answer: flashcardSnapshotDto.answer,
      fsrsCard: fsrsCard,
    );
  }

  static JsonMap removeBookmarkPatch() => {"hasBookmark": false};

  IgnoredFlashcard toIgnoredFlashcardDomain() {
    return IgnoredFlashcard(
      flashcardId: flashcardId,
      question: flashcardSnapshotDto.question,
      answer: flashcardSnapshotDto.answer,
    );
  }
}

void _checkFlashcardSnapshot(
  bool ignored,
  bool hasBookmark,
  FlashcardSnapshotDto? snapshot,
) {
  final bool snapshotExists = snapshot != null;
  if ((ignored || hasBookmark) != snapshotExists) {
    throw Exception(
      "hasBookmark, ignored and flashcard_snapshot are not in sync.\n"
      "If either bookmark of ignored are true, snapshot can't be null",
    );
  }
}
