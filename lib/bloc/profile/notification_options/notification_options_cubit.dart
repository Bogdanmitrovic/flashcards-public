import 'package:flashcards/bloc/profile/notification_options/notification_options_state.dart';
import 'package:flashcards/data/services/api/notifications/notification_service.dart';
import 'package:flashcards/data/services/local/local_storage_service.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationOptionsCubit extends Cubit<NotificationOptionsState> {
  final NotificationService _notificationService;
  final LocalStorageService _localStorageService;

  NotificationOptionsCubit({
    required NotificationService notificationService,
    required LocalStorageService localStorageService,
  }) : _notificationService = notificationService,
       _localStorageService = localStorageService,
       super(NotificationOptionsState());

  void loadFrequency() async {
    emit(state.copyWith(status: OptionsStatus.loading));

    final result = await _localStorageService.getNotificationFrequency();
    switch (result) {
      case Ok<NotificationFrequency>(:final value):
        emit(state.copyWith(status: OptionsStatus.loaded, frequency: value));
        return;
      case Error<NotificationFrequency>(:final error):
        emit(state.copyWith(status: OptionsStatus.error, error: error));
    }
  }

  void onChangeFrequency(NotificationFrequency frequency) async {
    if (state.status == OptionsStatus.loading) return;

    emit(state.copyWith(status: OptionsStatus.loading));

    // we schedule notifications first
    final notificationResult = await _notificationService
        .scheduleReminderNotification(frequency);
    switch (notificationResult) {
      case Error<void>(:final error):
        // if error, we cancel all notifications and emit "none"
        await _notificationService.cancelAll();
        emit(
          state.copyWith(
            status: OptionsStatus.error,
            error: error,
            frequency: NotificationFrequency.none,
          ),
        );
        return;
      case Ok<void>():
    }

    // then we write to local storage
    final result = await _localStorageService.setNotificationFrequency(
      frequency,
    );
    switch (result) {
      case Error<void>(:final error):
        // notifications are correctly set, only storage failed
        emit(
          state.copyWith(
            status: OptionsStatus.error,
            error: error,
            frequency: frequency, // keep the new active frequency
          ),
        );
        return;

      case Ok<void>():
        emit(
          state.copyWith(status: OptionsStatus.loaded, frequency: frequency),
        );
    }
  }
}
