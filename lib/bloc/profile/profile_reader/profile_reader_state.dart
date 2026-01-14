import 'package:flashcards/domain/models/profile/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_reader_state.freezed.dart';

@freezed
sealed class ProfileReaderState with _$ProfileReaderState {
  const factory ProfileReaderState.initial() = ProfileReaderInitial;

  const factory ProfileReaderState.loading() = ProfileReaderLoading;

  const factory ProfileReaderState.isLoaded({required Profile profile}) =
      ProfileReaderIsLoaded;

  const factory ProfileReaderState.error({required String message}) =
      ProfileReaderError;
}
