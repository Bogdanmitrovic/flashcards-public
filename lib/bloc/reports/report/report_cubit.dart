import 'package:flashcards/bloc/reports/report/report_state.dart';
import 'package:flashcards/data/repositories/flashcards/report_repository.dart';
import 'package:flashcards/domain/enums/report_reason.dart';
import 'package:flashcards/domain/models/flashcards/flashcard/flashcard.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReportCubit extends Cubit<ReportState> {
  final ReportRepository _reportRepo;

  ReportCubit({required ReportRepository reportRepo})
    : _reportRepo = reportRepo,
      super(ReportInitial());

  void sendReport({
    required Flashcard flashcard,
    required String packId,
    String? packName,
    required ReportReason reportReason,
    required String? message,
  }) async {
    emit(ReportLoading());

    final reportResult = await _reportRepo.reportFlashcard(
      flashcard: flashcard,
      packId: packId,
      packName: packName,
      message: message,
      reportReason: reportReason,
    );

    switch (reportResult) {
      case Error<void>(:final error):
        emit(ReportError(error: error));
      case Ok<void>():
        emit(ReportSuccess());
    }
  }
}
