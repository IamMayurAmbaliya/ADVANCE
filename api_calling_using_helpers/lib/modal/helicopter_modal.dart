class Helicopter {
  String manufacturer;
  String model;
  String maxSpeedSlKnots;
  String cruiseSpeedSlKnots;
  String vneSpeedKnots;
  String rangeNauticalMiles;
  String fuelConsumptionGallonsPrHr;
  String fuelCapacityGallons;
  String fuelOptGallons;
  String grossExternalLoadLbs;
  String externalLoadLimitLbs;
  String mainRotorDiameterFt;
  String numBlades;
  String bladeMaterial;
  String storageWidthFt;
  String lengthFt;
  String heightFt;

  Helicopter({
    required this.manufacturer,
    required this.model,
    required this.maxSpeedSlKnots,
    required this.cruiseSpeedSlKnots,
    required this.vneSpeedKnots,
    required this.rangeNauticalMiles,
    required this.fuelConsumptionGallonsPrHr,
    required this.fuelCapacityGallons,
    required this.fuelOptGallons,
    required this.grossExternalLoadLbs,
    required this.externalLoadLimitLbs,
    required this.mainRotorDiameterFt,
    required this.numBlades,
    required this.bladeMaterial,
    required this.storageWidthFt,
    required this.lengthFt,
    required this.heightFt,
  });

  factory Helicopter.fromJson(Map<String, dynamic> json) => Helicopter(
        manufacturer: json["manufacturer"],
        model: json["model"],
        maxSpeedSlKnots: json["max_speed_sl_knots"],
        cruiseSpeedSlKnots: json["cruise_speed_sl_knots"],
        vneSpeedKnots: json["vne_speed_knots"],
        rangeNauticalMiles: json["range_nautical_miles"],
        fuelConsumptionGallonsPrHr: json["fuel_consumption_gallons_pr_hr"],
        fuelCapacityGallons: json["fuel_capacity_gallons"],
        fuelOptGallons: json["fuel_opt_gallons"],
        grossExternalLoadLbs: json["gross_external_load_lbs"],
        externalLoadLimitLbs: json["external_load_limit_lbs"],
        mainRotorDiameterFt: json["main_rotor_diameter_ft"],
        numBlades: json["num_blades"],
        bladeMaterial: json["blade_material"],
        storageWidthFt: json["storage_width_ft"],
        lengthFt: json["length_ft"],
        heightFt: json["height_ft"],
      );

  Map<String, dynamic> toJson() => {
        "manufacturer": manufacturer,
        "model": model,
        "max_speed_sl_knots": maxSpeedSlKnots,
        "cruise_speed_sl_knots": cruiseSpeedSlKnots,
        "vne_speed_knots": vneSpeedKnots,
        "range_nautical_miles": rangeNauticalMiles,
        "fuel_consumption_gallons_pr_hr": fuelConsumptionGallonsPrHr,
        "fuel_capacity_gallons": fuelCapacityGallons,
        "fuel_opt_gallons": fuelOptGallons,
        "gross_external_load_lbs": grossExternalLoadLbs,
        "external_load_limit_lbs": externalLoadLimitLbs,
        "main_rotor_diameter_ft": mainRotorDiameterFt,
        "num_blades": numBlades,
        "blade_material": bladeMaterial,
        "storage_width_ft": storageWidthFt,
        "length_ft": lengthFt,
        "height_ft": heightFt,
      };
}
