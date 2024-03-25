// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_issued_by_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassportIssuedByData _$PassportIssuedByDataFromJson(
        Map<String, dynamic> json) =>
    PassportIssuedByData(
      name: json['name'] as String?,
      code: json['code'] as String?,
      regionCode: json['region_code'] as String?,
      type: $enumDecodeNullable(_$PassportSubdivisionTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$PassportIssuedByDataToJson(
        PassportIssuedByData instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'region_code': instance.regionCode,
      'type': _$PassportSubdivisionTypeEnumMap[instance.type],
    };

const _$PassportSubdivisionTypeEnumMap = {
  PassportSubdivisionType.fms: '0',
  PassportSubdivisionType.mvd: '1',
  PassportSubdivisionType.udv: '2',
  PassportSubdivisionType.police: '3',
};
