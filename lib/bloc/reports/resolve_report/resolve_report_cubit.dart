import 'package:flashcards/bloc/reports/resolve_report/resolve_report_state.dart';
import 'package:flashcards/data/repositories/flashcards/report_repository.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResolveReportCubit extends Cubit<ResolveReportState> {
  final ReportRepository _reportRepo;

  ResolveReportCubit({required ReportRepository reportRepo})
    : _reportRepo = reportRepo,
      super(ResolveReportInitial());

  void resolveReport(String flashcardId) async {
    if (state is! ResolveReportInitial) return;

    emit(ResolveReportLoading());

    final result = await _reportRepo.resolveReport(flashcardId);
    switch (result) {
      case Error<void>(:final error):
        emit(ResolveReportError(error: error));
      case Ok<void>():
        emit(ResolveReportSuccess());
    }
  }
}
