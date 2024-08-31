class AirCraft {
  String manufacturer;
  String model;
  String engineType;
  String engineThrustLbFt;
  String maxSpeedKnots;
  String cruiseSpeedKnots;
  String ceilingFt;
  String rateOfClimbFtPerMin;
  String takeoffGroundRunFt;
  String landingGroundRollFt;
  String grossWeightLbs;
  String emptyWeightLbs;
  String lengthFt;
  String heightFt;
  String wingSpanFt;
  String rangeNauticalMiles;

  AirCraft({
    required this.manufacturer,
    required this.model,
    required this.engineType,
    required this.engineThrustLbFt,
    required this.maxSpeedKnots,
    required this.cruiseSpeedKnots,
    required this.ceilingFt,
    required this.rateOfClimbFtPerMin,
    required this.takeoffGroundRunFt,
    required this.landingGroundRollFt,
    required this.grossWeightLbs,
    required this.emptyWeightLbs,
    required this.lengthFt,
    required this.heightFt,
    required this.wingSpanFt,
    required this.rangeNauticalMiles,
  });

  factory AirCraft.fromJson(Map<String, dynamic> json) => AirCraft(
        manufacturer: json["manufacturer"] ?? "",
        model: json["model"] ?? "",
        engineType: json["engine_type"] ?? "",
        engineThrustLbFt: json["engine_thrust_lb_ft"] ?? "",
        maxSpeedKnots: json["max_speed_knots"] ?? "",
        cruiseSpeedKnots: json["cruise_speed_knots"] ?? "",
        ceilingFt: json["ceiling_ft"] ?? "",
        rateOfClimbFtPerMin: json["rate_of_climb_ft_per_min"] ?? "",
        takeoffGroundRunFt: json["takeoff_ground_run_ft"] ?? "",
        landingGroundRollFt: json["landing_ground_roll_ft"] ?? "",
        grossWeightLbs: json["gross_weight_lbs"] ?? "",
        emptyWeightLbs: json["empty_weight_lbs"] ?? "",
        lengthFt: json["length_ft"] ?? "",
        heightFt: json["height_ft"] ?? "",
        wingSpanFt: json["wing_span_ft"] ?? "",
        rangeNauticalMiles: json["range_nautical_miles"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "manufacturer": manufacturer,
        "model": model,
        "engine_type": engineType,
        "engine_thrust_lb_ft": engineThrustLbFt,
        "max_speed_knots": maxSpeedKnots,
        "cruise_speed_knots": cruiseSpeedKnots,
        "ceiling_ft": ceilingFt,
        "rate_of_climb_ft_per_min": rateOfClimbFtPerMin,
        "takeoff_ground_run_ft": takeoffGroundRunFt,
        "landing_ground_roll_ft": landingGroundRollFt,
        "gross_weight_lbs": grossWeightLbs,
        "empty_weight_lbs": emptyWeightLbs,
        "length_ft": lengthFt,
        "height_ft": heightFt,
        "wing_span_ft": wingSpanFt,
        "range_nautical_miles": rangeNauticalMiles,
      };
}
