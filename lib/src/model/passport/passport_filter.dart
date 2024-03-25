import 'package:json_annotation/json_annotation.dart';

import 'passport_subdivision_type.dart';

part 'passport_filter.g.dart';

/// Filter for passport "Issued By" suggestions
@JsonSerializable(explicitToJson: true)
class PassportFilter {
  /// First two digits of KLADR region code
  @JsonKey(name: 'region_code')
  final String? regionCode;

  /// First two digits of KLADR region code
  final PassportSubdivisionType? type;

  const PassportFilter({
    this.regionCode,
    this.type,
  });

  /// Generate Class from Map<String, dynamic>
  factory PassportFilter.fromJson(Map<String, dynamic> json) =>
      _$PassportFilterFromJson(json);

  Map<String, dynamic> toJson() => _$PassportFilterToJson(this);
}
