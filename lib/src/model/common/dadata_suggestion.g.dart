// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dadata_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DadataSuggestion<T> _$DadataSuggestionFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    DadataSuggestion<T>(
      value: json['value'] as String?,
      unrestrictedValue: json['unrestricted_value'] as String?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$DadataSuggestionToJson<T>(
  DadataSuggestion<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'value': instance.value,
      'unrestricted_value': instance.unrestrictedValue,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
