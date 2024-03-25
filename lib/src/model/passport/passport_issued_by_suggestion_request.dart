import 'package:dadata/src/model/common/suggestion_request.dart';
import 'package:json_annotation/json_annotation.dart';
import 'passport_filter.dart';

part 'passport_issued_by_suggestion_request.g.dart';

/// Used to call passport unit suggestions API.
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PassportIssuedBySuggestionRequest implements SuggestionRequest {
  final String query;
  final int? count;

  final List<PassportFilter>? filters;

  const PassportIssuedBySuggestionRequest(
    this.query, {
    this.count,
    this.filters,
  });

  /// Generate Class from Map<String, dynamic>
  factory PassportIssuedBySuggestionRequest.fromJson(
          Map<String, dynamic> json) =>
      _$PassportIssuedBySuggestionRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PassportIssuedBySuggestionRequestToJson(this);
}
