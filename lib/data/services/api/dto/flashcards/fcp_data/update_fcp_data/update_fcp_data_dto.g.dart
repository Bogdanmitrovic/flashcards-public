// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_fcp_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateFcpDataDto _$UpdateFcpDataDtoFromJson(Map<String, dynamic> json) =>
    _UpdateFcpDataDto(
      profileId: json['profileId'] as String?,
      flashcardId: json['flashcardId'] as String?,
      hasBookmark: json['hasBookmark'] as bool?,
      ignored: json['ignored'] as bool?,
      updateFlashcardSnapshotDto: json['flashcardSnapshot'] == null
          ? null
          : UpdateFlashcardSnapshotDto.fromJson(
              json['flashcardSnapshot'] as Map<String, dynamic>,
            ),
      fsrsCard: FsrsCardX.fromJson(json['fsrs_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateFcpDataDtoToJson(_UpdateFcpDataDto instance) =>
    <String, dynamic>{
      if (instance.profileId case final value?) 'profileId': value,
      if (instance.flashcardId case final value?) 'flashcardId': value,
      if (instance.hasBookmark case final value?) 'hasBookmark': value,
      if (instance.ignored case final value?) 'ignored': value,
      if (instance.updateFlashcardSnapshotDto?.toJson() case final value?)
        'flashcardSnapshot': value,
      if (FsrsCardX.toJsonStatic(instance.fsrsCard) case final value?)
        'fsrs_card': value,
    };
