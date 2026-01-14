import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_settings_dto.freezed.dart';
part 'update_profile_settings_dto.g.dart';

@freezed
abstract class UpdateProfileSettingsDto with _$UpdateProfileSettingsDto {
  @JsonSerializable(includeIfNull: false)
  const factory UpdateProfileSettingsDto({int? cardsPerSession}) =
      _UpdateProfileSettingsDto;

  factory UpdateProfileSettingsDto.fromJson(JsonMap json) =>
      _$UpdateProfileSettingsDtoFromJson(json);
}
