// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'algolia_pack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AlgoliaPack _$AlgoliaPackFromJson(Map<String, dynamic> json) => _AlgoliaPack(
  objectID: json['objectID'] as String,
  name: json['name'] as String,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  isPaid: json['isPaid'] as bool,
);

Map<String, dynamic> _$AlgoliaPackToJson(_AlgoliaPack instance) =>
    <String, dynamic>{
      'objectID': instance.objectID,
      'name': instance.name,
      'tags': instance.tags,
      'isPaid': instance.isPaid,
    };
