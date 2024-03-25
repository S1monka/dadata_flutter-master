import 'package:json_annotation/json_annotation.dart';

enum PassportSubdivisionType {
  /// Division of the FMS
  @JsonValue('0')
  fms,

  /// GUVD or MVD of a region
  @JsonValue('1')
  mvd,

  /// UVD or OVD of a district or city
  @JsonValue('2')
  udv,

  /// Police department
  @JsonValue('3')
  police,
}
