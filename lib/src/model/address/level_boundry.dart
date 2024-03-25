///Levels of `from_bound` and `to_bound` according to
///Dadata online API documentation https://confluence.hflabs.ru/pages/viewpage.action?pageId=285343795.
enum LevelBoundry { country, region, area, city, settlement, street, house }

/// Helper extension of [LevelBoundry] enum.
extension LevelBoundryValue on LevelBoundry? {
  /// Returns string value of a enum case.
  String? get value {
    switch (this) {
      case LevelBoundry.country:
        return 'country';
      case LevelBoundry.region:
        return 'region';
      case LevelBoundry.area:
        return 'area';
      case LevelBoundry.city:
        return 'city';
      case LevelBoundry.settlement:
        return 'settlement';
      case LevelBoundry.street:
        return 'street';
      case LevelBoundry.house:
        return 'house';
      default:
        return null;
    }
  }

  /// Converts string [value] to enum case if available.
  /// Please check [LevelBoundry] for available cases.
  static LevelBoundry? forValue(String value) {
    switch (value) {
      case 'country':
        return LevelBoundry.country;
      case 'region':
        return LevelBoundry.region;
      case 'area':
        return LevelBoundry.area;
      case 'city':
        return LevelBoundry.city;
      case 'settlement':
        return LevelBoundry.settlement;
      case 'street':
        return LevelBoundry.street;
      case 'house':
        return LevelBoundry.house;
      default:
        return null;
    }
  }
}
