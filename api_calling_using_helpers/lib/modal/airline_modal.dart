class Airline {
  String iata;
  String icao;
  Map<String, int> fleet;
  String logoUrl;
  String name;

  Airline({
    required this.iata,
    required this.icao,
    required this.fleet,
    required this.logoUrl,
    required this.name,
  });

  factory Airline.fromJson(Map<String, dynamic> json) => Airline(
        iata: json["iata"],
        icao: json["icao"],
        fleet: Map.from(json["fleet"])
            .map((k, v) => MapEntry<String, int>(k, v ?? "")),
        logoUrl: json["logo_url"],
        name: json["name"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "iata": iata,
        "icao": icao,
        "fleet": Map.from(fleet).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "logo_url": logoUrl,
        "name": name,
      };
}
