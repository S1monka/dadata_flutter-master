import 'dart:io';

import 'package:dadata/src/endpoint.dart';
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';
import 'package:dadata/dadata.dart';
import 'package:http/http.dart' as http;

import 'stubs.dart';

import 'api_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  final mockClient = MockClient();
  final endpoint = Endpoint();

  stubRequest(
    mockClient,
    endpoint.suggestAddress,
    Stubs.suggestAddress,
  );
  stubRequest(
    mockClient,
    endpoint.geolocateAddress,
    Stubs.geolocateAddress,
  );
  stubRequest(
    mockClient,
    endpoint.passportIssuedBy,
    Stubs.passportIssuedBy,
  );
  group('stub api test', () {
    testCases(mockClient);
  });

  // if DADATA_TOKEN defined run real api tests
  final dadataToken = Platform.environment['DADATA_TOKEN'] ?? '';
  print('dadataToken ${dadataToken.isNotEmpty}');
  if (dadataToken.isNotEmpty) {
    group('real api test', () {
      testCases(http.Client(), token: dadataToken);
    });
  }
}

void testCases(http.Client client, {String? token}) {
  final dadataClient = DadataClient(client: client, token: token);

  test('suggest/address', () async {
    final response = await dadataClient.suggestAddress(
      AddressSuggestionRequest('Москва хабар'),
    );
    expect(response, isNotNull);
    expect(response!.suggestions, isNotEmpty);
  });
  test('geolocate/address', () async {
    final response = await dadataClient.geolocateAddress(
      RevgeocodeSuggestionRequest(latitude: 55.878, longitude: 37.653),
    );
    expect(response, isNotNull);
    expect(response!.suggestions, isNotEmpty);
  });
  test('suggest/fms_unit by code', () async {
    final response = await dadataClient.passportIssuedBy(
      PassportIssuedBySuggestionRequest('770-103'),
    );
    expect(response, isNotNull);
    expect(response!.suggestions, isNotEmpty);
  });

  test('suggest/fms_unit by name', () async {
    final response = await dadataClient.passportIssuedBy(
      PassportIssuedBySuggestionRequest('ГУ МВД РОССИИ ПО Г. МОСКВЕ'),
    );
    expect(response, isNotNull);
    expect(response!.suggestions, isNotEmpty);
  });
}
