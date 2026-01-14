import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_settings.freezed.dart';
part 'profile_settings.g.dart';

@freezed
abstract class ProfileSettings with _$ProfileSettings {
  const factory ProfileSettings({@Default(10) int cardsPerSession}) =
      _ProfileSettings;

  factory ProfileSettings.fromJson(JsonMap json) =>
      _$ProfileSettingsFromJson(json);
}
