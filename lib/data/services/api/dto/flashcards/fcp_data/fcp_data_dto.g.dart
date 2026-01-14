// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcp_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FcpDataDto _$FcpDataDtoFromJson(Map<String, dynamic> json) => _FcpDataDto(
  profileId: json['profileId'] as String,
  flashcardId: json['flashcardId'] as String,
  isPaid: json['isPaid'] as bool,
  hasBookmark: json['hasBookmark'] as bool? ?? false,
  ignored: json['ignored'] as bool? ?? false,
  flashcardSnapshotDto: FlashcardSnapshotDto.fromJson(
    json['flashcardSnapshot'] as Map<String, dynamic>,
  ),
  fsrsCard: FsrsCardX.fromJson(json['fsrs_card'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FcpDataDtoToJson(_FcpDataDto instance) =>
    <String, dynamic>{
      'profileId': instance.profileId,
      'flashcardId': instance.flashcardId,
      'isPaid': instance.isPaid,
      'hasBookmark': instance.hasBookmark,
      'ignored': instance.ignored,
      'flashcardSnapshot': instance.flashcardSnapshotDto.toJson(),
      'fsrs_card': FsrsCardX.toJsonStatic(instance.fsrsCard),
    };
