import 'dart:convert';

import 'package:dadata/dadata.dart';
import 'package:test/test.dart';

import 'stubs.dart';

void main() {
  final addressFromJson =
      (String json) => DadataResponse<AddressSuggestionData>.fromJson(
            jsonDecode(json),
            (value) => AddressSuggestionData.fromJson(
              value as Map<String, dynamic>,
            ),
          );

  group("parse responses with null data fields", () {
    test('suggest/address', () {
      addressFromJson(Stubs.suggestAddressEmpty);
    });
    test('geolocate/address', () {
      addressFromJson(Stubs.geolocateAddressEmpty);
    });
    test('suggest/fms_unit', () {
      DadataResponse<PassportIssuedByData>.fromJson(
        jsonDecode(Stubs.passportIssuedByEmpty),
        (value) => PassportIssuedByData.fromJson(
          value as Map<String, dynamic>,
        ),
      );
    });
  });

  group("parse example responses", () {
    test('suggest/address', () {
      addressFromJson(Stubs.suggestAddress);
    });
    test('geolocate/address', () {
      addressFromJson(Stubs.geolocateAddress);
    });
    test('suggest/fms_unit', () {
      DadataResponse<PassportIssuedByData>.fromJson(
        jsonDecode(Stubs.passportIssuedBy),
        (value) => PassportIssuedByData.fromJson(
          value as Map<String, dynamic>,
        ),
      );
    });
  });
}
