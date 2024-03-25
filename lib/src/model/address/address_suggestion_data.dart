import 'package:dadata/src/model/address/metro_station.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_suggestion_data.g.dart';

/// Represents an object used to hold address data
@JsonSerializable(explicitToJson: true)
class AddressSuggestionData {
  @JsonKey(name: 'postal_code')
  String? postalCode;

  @JsonKey(name: 'country')
  String? country;

  @JsonKey(name: 'country_iso_code')
  String? countryIsoCode;

  @JsonKey(name: 'federal_district')
  String? federalDistrict;

  @JsonKey(name: 'region_fias_id')
  String? regionFiasId;

  @JsonKey(name: 'region_kladr_id')
  String? regionKladrId;

  @JsonKey(name: 'region_iso_code')
  String? regionIsoCode;

  @JsonKey(name: 'region_with_type')
  String? regionWithType;

  @JsonKey(name: 'region_type')
  String? regionType;

  @JsonKey(name: 'region_type_full')
  String? regionTypeFull;

  @JsonKey(name: 'region')
  String? region;

  @JsonKey(name: 'area_fias_id')
  String? areaFiasId;

  @JsonKey(name: 'area_kladr_id')
  String? areaKladrId;

  @JsonKey(name: 'area_with_type')
  String? areaWithType;

  @JsonKey(name: 'area_type')
  String? areaType;

  @JsonKey(name: 'area_type_full')
  String? areaTypeFull;

  @JsonKey(name: 'area')
  String? area;

  @JsonKey(name: 'city_fias_id')
  String? cityFiasId;

  @JsonKey(name: 'city_kladr_id')
  String? cityKladrId;

  @JsonKey(name: 'city_with_type')
  String? cityWithType;

  @JsonKey(name: 'city_type')
  String? cityType;

  @JsonKey(name: 'city_type_full')
  String? cityTypeFull;

  @JsonKey(name: 'city')
  String? city;

  @JsonKey(name: 'city_area')
  String? cityArea;

  @JsonKey(name: 'city_district_fias_id')
  String? cityDistrictFiasId;

  @JsonKey(name: 'city_district_kladr_id')
  String? cityDistrictKladrId;

  @JsonKey(name: 'city_district_with_type')
  String? cityDistrictWithType;

  @JsonKey(name: 'city_district_type')
  String? cityDistrictType;

  @JsonKey(name: 'city_district_type_full')
  String? cityDistrictTypeFull;

  @JsonKey(name: 'city_district')
  String? cityDistrict;

  @JsonKey(name: 'settlement_fias_id')
  String? settlementFiasId;

  @JsonKey(name: 'settlement_kladr_id')
  String? settlementKladrId;

  @JsonKey(name: 'settlement_with_type')
  String? settlementWithType;

  @JsonKey(name: 'settlement_type')
  String? settlementType;

  @JsonKey(name: 'settlement_type_full')
  String? settlementTypeFull;

  @JsonKey(name: 'settlement')
  String? settlement;

  @JsonKey(name: 'street_fias_id')
  String? streetFiasId;

  @JsonKey(name: 'street_kladr_id')
  String? streetKladrId;

  @JsonKey(name: 'street_with_type')
  String? streetWithType;

  @JsonKey(name: 'street_type')
  String? streetType;

  @JsonKey(name: 'street_type_full')
  String? streetTypeFull;

  @JsonKey(name: 'street')
  String? street;

  @JsonKey(name: 'house_fias_id')
  String? houseFiasId;

  @JsonKey(name: 'house_kladr_id')
  String? houseKladrId;

  @JsonKey(name: 'house_type')
  String? houseType;

  @JsonKey(name: 'house_type_full')
  String? houseTypeFull;

  @JsonKey(name: 'house')
  String? house;

  @JsonKey(name: 'block_type')
  String? blockType;

  @JsonKey(name: 'block_type_full')
  String? blockTypeFull;

  @JsonKey(name: 'block')
  String? block;

  @JsonKey(name: 'flat_fias_id')
  String? flatFiasId;

  @JsonKey(name: 'flat_type')
  String? flatType;

  @JsonKey(name: 'flat_type_full')
  String? flatTypeFull;

  @JsonKey(name: 'flat')
  String? flat;

  @JsonKey(name: 'flat_area')
  String? flatArea;

  @JsonKey(name: 'square_meter_price')
  String? squareMeterPrice;

  @JsonKey(name: 'flat_price')
  String? flatPrice;

  @JsonKey(name: 'postal_box')
  String? postalBox;

  @JsonKey(name: 'fias_id')
  String? fiasId;

  @JsonKey(name: 'fias_code')
  String? fiasCode;

  @JsonKey(name: 'fias_level')
  String? fiasLevel;

  @JsonKey(name: 'fias_actuality_state')
  String? fiasActualityState;

  @JsonKey(name: 'kladr_id')
  String? kladrId;

  @JsonKey(name: 'geoname_id')
  String? geonameId;

  @JsonKey(name: 'capital_marker')
  String? capitalMarker;

  @JsonKey(name: 'okato')
  String? okato;

  @JsonKey(name: 'oktmo')
  String? oktmo;

  @JsonKey(name: 'tax_office')
  String? taxOffice;

  @JsonKey(name: 'tax_office_legal')
  String? taxOfficeLegal;

  /// Timezone (UTC+3)
  @JsonKey(name: 'timezone')
  String? timezone;

  /// Latitude
  @JsonKey(name: 'geo_lat')
  String? geoLat;

  /// Longitude
  @JsonKey(name: 'geo_lon')
  String? geoLon;

  @JsonKey(name: 'beltway_hit')
  String? beltwayHit;

  @JsonKey(name: 'beltway_distance')
  String? beltwayDistance;

  /// List of nearest metro stations (up to three)
  @JsonKey(name: 'metro')
  List<MetroStation>? metro;

  /// Address quality code
  /// 0 - Address recognized confidently
  /// 1 - Remained "extra" parts. Either there is not enough data in the source address for a confident parsing.
  /// 2 - The address is empty or "garbage"
  /// 3 - There are alternatives
  @JsonKey(name: 'qc')
  String? qc;

  /// Coordinate accuracy code
  /// 0 - Precise coordinates
  /// 1 - Nearest house
  /// 2 - Street
  /// 3 - Settlement
  /// 4 - City
  /// 5 - Coordinates not defined
  @JsonKey(name: 'qc_geo')
  String? qcGeo;

  /// Suitable for mailing
  /// 0 - Suitable for mailing
  /// 10 - House not in FIAS
  /// 5 - There is no apartment. Suitable for legal entities or private properties
  /// 8 - To the post office - PO box or poste restante address. Suitable for letters, but not for courier delivery.
  /// 9 - First check if DaData parsed the source address correctly
  /// 1 - No region
  /// 2 - No city
  /// 3 - No street
  /// 4 - No house
  /// 6 - Address incomplete
  /// 7 - Foreign address
  @JsonKey(name: 'qc_complete')
  String? qcComplete;

  @JsonKey(name: 'qc_house')
  String? qcHouse;

  @JsonKey(name: 'history_values')
  List<String>? historyValues;

  @JsonKey(name: 'unparsed_parts')
  String? unparsedParts;

  @JsonKey(name: 'source')
  String? source;

  AddressSuggestionData();

  factory AddressSuggestionData.fromJson(Map<String, dynamic> json) =>
      _$AddressSuggestionDataFromJson(json);

  Map<String, dynamic> toJson() => _$AddressSuggestionDataToJson(this);
}
