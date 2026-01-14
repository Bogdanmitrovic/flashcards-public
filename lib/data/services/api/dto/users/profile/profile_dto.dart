import 'package:flashcards/domain/models/profile/education_level.dart';
import 'package:flashcards/domain/models/profile/profile.dart';
import 'package:flashcards/domain/models/profile/profile_settings/profile_settings.dart';
import 'package:flashcards/domain/models/profile/streak/streak.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

@freezed
abstract class ProfileDto with _$ProfileDto {
  @JsonSerializable(explicitToJson: true)
  const factory ProfileDto({
    required String name,
    required String surname,
    required String username,
    required String email,
    required String phoneNumber,
    @JsonKey(fromJson: educationLevelFromJson, toJson: educationLevelToJson)
    required EducationLevel educationLevel,
    required Streak streak,
    required ProfileSettings profileSettings,
  }) = _ProfileDto;

  factory ProfileDto.fromJson(JsonMap json) => _$ProfileDtoFromJson(json);

  factory ProfileDto.fromDomain(Profile profile) => ProfileDto(
    streak: profile.streak,
    name: profile.name,
    surname: profile.surname,
    username: profile.username,
    email: profile.email,
    phoneNumber: profile.phoneNumber,
    educationLevel: profile.educationLevel,
    profileSettings: profile.profileSettings,
  );
}

extension ProfileDtoX on ProfileDto {
  Profile toDomain(List<String> roles) => Profile(
    streak: streak,
    name: name,
    surname: surname,
    username: username,
    email: email,
    phoneNumber: phoneNumber,
    educationLevel: educationLevel,
    profileSettings: profileSettings,
    roles: roles,
  );
}
