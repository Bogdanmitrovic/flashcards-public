// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProfileDto _$UpdateProfileDtoFromJson(Map<String, dynamic> json) =>
    _UpdateProfileDto(
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      educationLevel: $enumDecodeNullable(
        _$EducationLevelEnumMap,
        json['educationLevel'],
      ),
      profileSettings: json['profileSettings'] == null
          ? null
          : UpdateProfileSettingsDto.fromJson(
              json['profileSettings'] as Map<String, dynamic>,
            ),
      osces: json['osces'] == null
          ? const []
          : const DocumentReferenceListConverter().fromJson(
              json['osces'] as List,
            ),
      streak: json['streak'] == null
          ? null
          : Streak.fromJson(json['streak'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateProfileDtoToJson(_UpdateProfileDto instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.surname case final value?) 'surname': value,
      if (instance.username case final value?) 'username': value,
      if (instance.email case final value?) 'email': value,
      if (instance.phoneNumber case final value?) 'phoneNumber': value,
      if (_$EducationLevelEnumMap[instance.educationLevel] case final value?)
        'educationLevel': value,
      if (instance.profileSettings?.toJson() case final value?)
        'profileSettings': value,
      'osces': const DocumentReferenceListConverter().toJson(instance.osces),
      if (instance.streak?.toJson() case final value?) 'streak': value,
    };

const _$EducationLevelEnumMap = {
  EducationLevel.medicalStudent: 'medicalStudent',
  EducationLevel.intern: 'intern',
  EducationLevel.juniorResident: 'juniorResident',
  EducationLevel.seniorResident: 'seniorResident',
  EducationLevel.fellow: 'fellow',
  EducationLevel.consultant: 'consultant',
};
