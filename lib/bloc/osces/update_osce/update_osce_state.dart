import 'package:flashcards/bloc/osces/update_osce/forms/question_form/question_form.dart';
import 'package:flashcards/domain/models/core/image_data_wrapper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "update_osce_state.freezed.dart";

enum UpdateOsceStatus {
  initial,
  loading,
  error,
  deleteSuccessful,
  updateSuccessful,
}

extension UpdateOsceStatusX on UpdateOsceStatus {
  bool get isInitial => this == UpdateOsceStatus.initial;

  bool get isLoading => this == UpdateOsceStatus.loading;

  bool get isError => this == UpdateOsceStatus.error;

  bool get isDeleteSuccessful => this == UpdateOsceStatus.deleteSuccessful;

  bool get isUpdateSuccessful => this == UpdateOsceStatus.updateSuccessful;
}

@freezed
sealed class UpdateOsceState with _$UpdateOsceState {
  const factory UpdateOsceState.initial() = UpdateOsceInitial;

  const factory UpdateOsceState.loading() = UpdateOsceLoading;

  const factory UpdateOsceState.error({required Exception error}) =
      UpdateOsceError;

  const factory UpdateOsceState.loaded({
    @Default(UpdateOsceStatus.initial) UpdateOsceStatus status,
    required String osceId,
    required List<QuestionForm> questionForms,
    Exception? error,
  }) = UpdateOsceLoaded;
}
