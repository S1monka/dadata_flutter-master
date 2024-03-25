import 'package:dadata/src/model/passport/passport_subdivision_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'passport_issued_by_data.g.dart';

/// Passport "Issued by" suggestion data
@JsonSerializable(explicitToJson: true)
class PassportIssuedByData {
  /// Subdivision code
  final String? code;

  /// Subdivision name
  final String? name;

  /// Region code (first 2 digits)
  @JsonKey(name: 'region_code')
  final String? regionCode;

  /// Subdivision type
  final PassportSubdivisionType? type;

  const PassportIssuedByData({
    this.name,
    this.code,
    this.regionCode,
    this.type,
  });

  /// Generate Class from Map<String, dynamic>
  factory PassportIssuedByData.fromJson(Map<String, dynamic> json) =>
      _$PassportIssuedByDataFromJson(json);

  Map<String, dynamic> toJson() => _$PassportIssuedByDataToJson(this);
}
