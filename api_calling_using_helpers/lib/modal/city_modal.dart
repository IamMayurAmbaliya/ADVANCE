class City {
  String name;
  double latitude;
  double longitude;
  String country;
  int population;
  bool isCapital;

  City({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.country,
    required this.population,
    required this.isCapital,
  });

  factory City.fromJson(Map<String, dynamic> json) => City(
        name: json["name"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        country: json["country"],
        population: json["population"],
        isCapital: json["is_capital"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "latitude": latitude,
        "longitude": longitude,
        "country": country,
        "population": population,
        "is_capital": isCapital,
      };
}
