import 'package:flashcards/data/utils/data_utils.dart';
import 'package:flashcards/data/repositories/utils/cache/page_cache/page_cache.dart';
import 'package:flashcards/data/repositories/utils/pagination/paginated_cursor_map.dart';
import 'package:flashcards/data/services/api/dto/flashcards/pp_data/pp_data_dto.dart';
import 'package:flashcards/data/services/api/dto/flashcards/pp_data/update_pp_data/update_pp_data_dto.dart';
import 'package:flashcards/data/services/api/users/auth_service.dart';
import 'package:flashcards/data/services/api/flashcards/pp_service.dart';
import 'package:flashcards/domain/models/flashcards/pack/pack.dart';
import 'package:flashcards/domain/models/flashcards/pack_progress/pack_progress.dart';
import 'package:flashcards/utils/result.dart';

class PpRepository {
  final PpService _ppService;
  final AuthService _authService;

  final PaginatedCursorMap _cursorMap = PaginatedCursorMap();

  final PageCache<Pack> _packsCache;

  PpRepository({
    required PpService ppService,
    required AuthService authService,
    required PageCache<Pack> packsCache,
  }) : _ppService = ppService,
       _packsCache = packsCache,
       _authService = authService;

  Future<Result<List<PackProgress>>> getPacksProgressForProfilePagination({
    required int pageIndex,
    required int pageSize,
  }) async {
    final uid = _getUid();
    final lastDoc = _cursorMap.getLastDocFromPrevPage(pageIndex);
    final getResult = await _ppService.getDocumentsForProfilePagination(
      limit: pageSize,
      startAfter: lastDoc,
      profileId: uid,
    );
    switch (getResult) {
      case Error<PaginatedDtoResult<PpDataDto>>(:final error):
        return Result.error(error);
      case Ok<PaginatedDtoResult<PpDataDto>>():
    }
    final dtoList = getResult.value.items;
    final packProgressList =
        dtoList.map((dto) => dto.toPackProgressDomain()).toList();

    _cursorMap.put(pageIndex, getResult.value.lastDocument);

    return Result.ok(packProgressList);
  }

  Future<Result<void>> openPack({
    required String packId,
    required String packName,
  }) async {
    final uid = _getUid();

    // try to update doc
    final updateDto = UpdatePpDataDto(lastOpenedAt: DateTime.now());
    final updateResult = await _ppService.updateDocument(
      profileId: uid,
      packId: packId,
      partialJson: updateDto.toJson(),
    );
    switch (updateResult) {
      case Ok<void>():
        return Result.ok(null);
      case Error<void>():
    }
    final error = updateResult.error;

    // if it's some other error than 'not-found', return it
    if (!isErrorNotFound(error)) return Result.error(error);

    // if the doc is not found, create it
    final setDto = PpDataDto(
      profileId: uid,
      packId: packId,
      packName: packName,
      firstOpenedAt: DateTime.now(),
      lastOpenedAt: DateTime.now(),
    );
    return await _ppService.setDocument(setDto);
  }

  Future<Result<void>> deletePackProgress(String packId) async {
    final result = await _ppService.deletePackProgress(packId);
    switch (result) {
      case Error<void>(:final error):
        return Result.error(error);
      case Ok<void>():
    }

    _packsCache.updateItem(
      id: packId,
      copyWith:
          (item) => item.copyWith(
            dueCount: 0,
            newCount: item.flashcardsCount,
            learningCount: 0,
          ),
    );
    return Result.ok(null);
  }

  String _getUid() {
    return getCurrentUserAndThrow(
      authService: _authService,
      repoName: "PpRepository",
    ).uid;
  }
}
