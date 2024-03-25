import 'package:json_annotation/json_annotation.dart';

import 'dadata_suggestion.dart';

part 'dadata_response.g.dart';

/// Represents an object used to hold API response.
@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class DadataResponse<T> {
  @JsonKey(name: 'suggestions', defaultValue: [])
  final List<DadataSuggestion<T>> suggestions;

  DadataResponse({required this.suggestions});

  factory DadataResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$DadataResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$DadataResponseToJson(this, toJsonT);
}
