class PlanetModel {
  String position;
  String name;
  String image;
  String mass;
  String velocity;
  String distanceFromSun;
  String description;
  String rotationalPeriod;
  String orbitalPeriod;
  String gravity;
  String surfaceArea;
  String surfaceTemperature;

  PlanetModel({
    required this.position,
    required this.name,
    required this.image,
    required this.mass,
    required this.velocity,
    required this.distanceFromSun,
    required this.description,
    required this.rotationalPeriod,
    required this.orbitalPeriod,
    required this.gravity,
    required this.surfaceArea,
    required this.surfaceTemperature,
  });

  factory PlanetModel.fromJson(Map<String, dynamic> json) => PlanetModel(
        position: json["position"],
        name: json["name"],
        image: json["image"],
        mass: json["mass"],
        velocity: json["velocity"],
        distanceFromSun: json["distance_from_sun"],
        description: json["description"],
        rotationalPeriod: json["rotational_period"],
        orbitalPeriod: json["orbital_period"],
        gravity: json["gravity"],
        surfaceArea: json["surface_area"],
        surfaceTemperature: json["surface_temperature"],
      );

  Map<String, dynamic> toJson() => {
        "position": position,
        "name": name,
        "image": image,
        "mass": mass,
        "velocity": velocity,
        "distance_from_sun": distanceFromSun,
        "description": description,
        "rotational_period": rotationalPeriod,
        "orbital_period": orbitalPeriod,
        "gravity": gravity,
        "surface_area": surfaceArea,
        "surface_temperature": surfaceTemperature,
      };
}
