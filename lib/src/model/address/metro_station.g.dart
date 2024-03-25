// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metro_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetroStation _$MetroStationFromJson(Map<String, dynamic> json) => MetroStation(
      name: json['name'] as String,
      line: json['line'] as String,
      distance: (json['distance'] as num).toDouble(),
    );

Map<String, dynamic> _$MetroStationToJson(MetroStation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'line': instance.line,
      'distance': instance.distance,
    };
