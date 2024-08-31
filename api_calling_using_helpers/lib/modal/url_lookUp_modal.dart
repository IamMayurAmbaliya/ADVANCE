class UrlLookUp {
  bool isValid;
  String country;
  String countryCode;
  String regionCode;
  String region;
  String city;
  String zip;
  double lat;
  double lon;
  String timezone;
  String isp;
  String url;

  UrlLookUp({
    required this.isValid,
    required this.country,
    required this.countryCode,
    required this.regionCode,
    required this.region,
    required this.city,
    required this.zip,
    required this.lat,
    required this.lon,
    required this.timezone,
    required this.isp,
    required this.url,
  });

  factory UrlLookUp.fromJson(Map<String, dynamic> json) => UrlLookUp(
        isValid: json["is_valid"],
        country: json["country"],
        countryCode: json["country_code"],
        regionCode: json["region_code"],
        region: json["region"],
        city: json["city"],
        zip: json["zip"],
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
        timezone: json["timezone"],
        isp: json["isp"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "is_valid": isValid,
        "country": country,
        "country_code": countryCode,
        "region_code": regionCode,
        "region": region,
        "city": city,
        "zip": zip,
        "lat": lat,
        "lon": lon,
        "timezone": timezone,
        "isp": isp,
        "url": url,
      };
}
