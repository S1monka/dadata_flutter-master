// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dadata_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DadataResponse<T> _$DadataResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    DadataResponse<T>(
      suggestions: (json['suggestions'] as List<dynamic>?)
              ?.map((e) => DadataSuggestion<T>.fromJson(
                  e as Map<String, dynamic>, (value) => fromJsonT(value)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DadataResponseToJson<T>(
  DadataResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'suggestions': instance.suggestions
          .map((e) => e.toJson(
                (value) => toJsonT(value),
              ))
          .toList(),
    };
