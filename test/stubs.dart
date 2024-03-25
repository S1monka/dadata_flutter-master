import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

abstract class Stubs {
  static String get suggestAddress => _readJson('suggest_address.json');
  static const suggestAddressEmpty = '''{ 
    "suggestions": [
      {"value": "Empty Response", "unrestricted_value": "Empty Response", "data": { } }
    ]
  }''';

  static String get geolocateAddress => _readJson('geolocate_address.json');
  static const geolocateAddressEmpty = '''{ 
    "suggestions": [
      {"value": "Empty Response", "unrestricted_value": "Empty Response", "data": { } }
    ]
  }''';

  static String get passportIssuedBy => _readJson('passport_issued_by.json');
  static const passportIssuedByEmpty = '''{ 
    "suggestions": [
      {"value": "Empty Response", "unrestricted_value": "Empty Response", "data": { } }
    ]
  }''';
}

String _readJson(String filename) {
  return File('test/responses/$filename').readAsStringSync();
}

void stubRequest(http.Client client, String url, String data) {
  when(
    client.post(
      Uri.parse(url),
      headers: anyNamed('headers'),
      body: anyNamed('body'),
    ),
  ).thenAnswer(
    (_) async => http.Response(
      data,
      200,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
      },
    ),
  );
}
