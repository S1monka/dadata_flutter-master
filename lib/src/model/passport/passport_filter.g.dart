// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassportFilter _$PassportFilterFromJson(Map<String, dynamic> json) =>
    PassportFilter(
      regionCode: json['region_code'] as String?,
      type: $enumDecodeNullable(_$PassportSubdivisionTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$PassportFilterToJson(PassportFilter instance) =>
    <String, dynamic>{
      'region_code': instance.regionCode,
      'type': _$PassportSubdivisionTypeEnumMap[instance.type],
    };

const _$PassportSubdivisionTypeEnumMap = {
  PassportSubdivisionType.fms: '0',
  PassportSubdivisionType.mvd: '1',
  PassportSubdivisionType.udv: '2',
  PassportSubdivisionType.police: '3',
};
