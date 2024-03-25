import 'package:json_annotation/json_annotation.dart';

part 'metro_station.g.dart';

/// Metro station information
@JsonSerializable(explicitToJson: true)
class MetroStation {
  /// Station name
  final String name;

  /// Line name
  final String line;

  /// Distance to the station in kilometers
  final double distance;

  MetroStation({
    required this.name,
    required this.line,
    required this.distance,
  });

  factory MetroStation.fromJson(Map<String, dynamic> json) =>
      _$MetroStationFromJson(json);

  Map<String, dynamic> toJson() => _$MetroStationToJson(this);
}
