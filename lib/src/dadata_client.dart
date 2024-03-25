import 'dart:convert';

import 'package:http/http.dart';

import 'endpoint.dart';
import 'model/models.dart';

/// Dadata API client
class DadataClient {
  final Client _client;
  final String? _token;
  final Endpoint _endpoint;

  Map<String, String> get _headers {
    return {
      if (_token != null) "Authorization": "Token $_token",
      "Accept": "application/json",
      "Content-Type": "application/json",
    };
  }

  DadataClient({
    String? token,
    Client? client,
    String? endpoint,
  })  : _token = token,
        _client = client ?? Client(),
        _endpoint = Endpoint(endpoint);

  /// Calls [address suggestions API](https://dadata.ru/api/suggest/address/) with [AddressSuggestionRequest] provided.
  Future<AddressResponse?> suggestAddress(
    AddressSuggestionRequest query,
  ) async {
    return _performRequest(
      query.toJson(),
      _endpoint.suggestAddress,
      AddressSuggestionData.fromJson,
    );
  }

  /// Calls [reverse geocoding API](https://dadata.ru/api/geolocate/) with [RevgeocodeSuggestionRequest] provided.
  Future<AddressResponse?> geolocateAddress(
    RevgeocodeSuggestionRequest query,
  ) async {
    return _performRequest(
      query.toJson(),
      _endpoint.geolocateAddress,
      AddressSuggestionData.fromJson,
    );
  }

  /// Calls [passport issued by suggestions API](https://dadata.ru/api/suggest/fms_unit/) with [PassportIssuedBySuggestionRequest] provided.
  Future<PassportIssuedByResponse?> passportIssuedBy(
    PassportIssuedBySuggestionRequest query,
  ) async {
    return _performRequest(
      query.toJson(),
      _endpoint.passportIssuedBy,
      PassportIssuedByData.fromJson,
    );
  }

  Future<DadataResponse<T>?> _performRequest<T>(
    dynamic query,
    String endpoint,
    T Function(Map<String, dynamic> json) fromJsonT,
  ) async {
    final resp = await _client.post(
      Uri.parse(endpoint),
      headers: _headers,
      body: jsonEncode(query),
    );
    if (resp.body.isNotEmpty) {
      return DadataResponse.fromJson(
        jsonDecode(resp.body),
        (value) => fromJsonT(value as Map<String, dynamic>),
      );
    }
    return null;
  }
}
