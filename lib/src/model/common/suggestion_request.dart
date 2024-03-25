abstract class SuggestionRequest {
  /// Request query
  String get query;

  /// Suggestions response count (default 10, max 20)
  int? get count;
}
