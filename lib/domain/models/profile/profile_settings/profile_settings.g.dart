// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileSettings _$ProfileSettingsFromJson(Map<String, dynamic> json) =>
    _ProfileSettings(
      cardsPerSession: (json['cardsPerSession'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$ProfileSettingsToJson(_ProfileSettings instance) =>
    <String, dynamic>{'cardsPerSession': instance.cardsPerSession};
