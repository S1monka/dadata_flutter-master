// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_suggestion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressSuggestionRequest _$AddressSuggestionRequestFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['query'],
  );
  return AddressSuggestionRequest(
    json['query'] as String,
    count: json['count'] as int?,
    language: json['language'] as String?,
    constraints: (json['locations'] as List<dynamic>?)
        ?.map((e) =>
            AddressSuggestionConstraint.fromJson(e as Map<String, dynamic>))
        .toList(),
    radiusConstraints: (json['locations_geo'] as List<dynamic>?)
        ?.map((e) => AddressSuggestionRadiusConstraint.fromJson(
            e as Map<String, dynamic>))
        .toList(),
    locationsPriority: (json['locations_boost'] as List<dynamic>?)
        ?.map((e) =>
            AddressSuggestionPriority.fromJson(e as Map<String, dynamic>))
        .toList(),
    upperBoundary:
        $enumDecodeNullable(_$LevelBoundryEnumMap, json['from_bound']),
    lowerBoundary: $enumDecodeNullable(_$LevelBoundryEnumMap, json['to_bound']),
  );
}

Map<String, dynamic> _$AddressSuggestionRequestToJson(
        AddressSuggestionRequest instance) =>
    <String, dynamic>{
      'query': instance.query,
      'count': instance.count,
      'language': instance.language,
      'locations': instance.constraints?.map((e) => e.toJson()).toList(),
      'locations_geo':
          instance.radiusConstraints?.map((e) => e.toJson()).toList(),
      'locations_boost':
          instance.locationsPriority?.map((e) => e.toJson()).toList(),
      'from_bound': instance.upperBoundary,
      'to_bound': instance.lowerBoundary,
    };

const _$LevelBoundryEnumMap = {
  LevelBoundry.country: 'country',
  LevelBoundry.region: 'region',
  LevelBoundry.area: 'area',
  LevelBoundry.city: 'city',
  LevelBoundry.settlement: 'settlement',
  LevelBoundry.street: 'street',
  LevelBoundry.house: 'house',
};
