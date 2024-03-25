// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_issued_by_suggestion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassportIssuedBySuggestionRequest _$PassportIssuedBySuggestionRequestFromJson(
        Map<String, dynamic> json) =>
    PassportIssuedBySuggestionRequest(
      json['query'] as String,
      count: json['count'] as int?,
      filters: (json['filters'] as List<dynamic>?)
          ?.map((e) => PassportFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PassportIssuedBySuggestionRequestToJson(
    PassportIssuedBySuggestionRequest instance) {
  final val = <String, dynamic>{
    'query': instance.query,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('filters', instance.filters?.map((e) => e.toJson()).toList());
  return val;
}
