import 'package:flashcards/domain/models/profile/education_level.dart';
import 'package:flashcards/domain/models/profile/profile_settings/profile_settings.dart';
import 'package:flashcards/domain/models/profile/streak/streak.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

extension ProfileX on Profile {
  bool get isAdmin => roles.contains('admin');
}

@freezed
abstract class Profile with _$Profile {
  const factory Profile({
    required String name,
    required String surname,
    required String username,
    required String email,
    required String phoneNumber,
    required EducationLevel educationLevel,
    required Streak streak,
    required ProfileSettings profileSettings,
    @Default([]) List<String> roles,
  }) = _Profile;
}
