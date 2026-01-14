// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) => _ProfileDto(
  name: json['name'] as String,
  surname: json['surname'] as String,
  username: json['username'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String,
  educationLevel: educationLevelFromJson(json['educationLevel'] as String),
  streak: Streak.fromJson(json['streak'] as Map<String, dynamic>),
  profileSettings: ProfileSettings.fromJson(
    json['profileSettings'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ProfileDtoToJson(_ProfileDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'username': instance.username,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'educationLevel': educationLevelToJson(instance.educationLevel),
      'streak': instance.streak.toJson(),
      'profileSettings': instance.profileSettings.toJson(),
    };
