class Endpoint {
  final String baseUrl;

  Endpoint([String? baseUrl])
      : baseUrl =
            baseUrl ?? "https://suggestions.dadata.ru/suggestions/api/4_1/rs";

  String get suggestAddress => '$baseUrl/suggest/address';

  String get geolocateAddress => '$baseUrl/geolocate/address';
  String get passportIssuedBy => '$baseUrl/suggest/fms_unit';
}
