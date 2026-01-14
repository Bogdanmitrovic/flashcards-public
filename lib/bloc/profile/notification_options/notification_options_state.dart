import 'package:flashcards/data/services/local/local_storage_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_options_state.freezed.dart';

enum OptionsStatus { loading, loaded, error }

@freezed
abstract class NotificationOptionsState with _$NotificationOptionsState {
  const factory NotificationOptionsState({
    @Default(OptionsStatus.loading) OptionsStatus status,
    @Default(NotificationFrequency.none) NotificationFrequency frequency,
    Exception? error,
  }) = _NotificationOptionsState;
}
