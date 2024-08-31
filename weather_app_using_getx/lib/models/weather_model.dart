// To parse this JSON data, do
//
//     final weather = weatherFromJson(jsonString);

import 'dart:convert';

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));

String weatherToJson(Weather data) => json.encode(data.toJson());

class Weather {
  Location location;
  CurrentObservation currentObservation;
  List<Forecast> forecasts;

  Weather({
    required this.location,
    required this.currentObservation,
    required this.forecasts,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        location: Location.fromJson(json["location"]),
        currentObservation:
            CurrentObservation.fromJson(json["current_observation"]),
        forecasts: List<Forecast>.from(
            json["forecasts"].map((x) => Forecast.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "location": location.toJson(),
        "current_observation": currentObservation.toJson(),
        "forecasts": List<dynamic>.from(forecasts.map((x) => x.toJson())),
      };
}

class CurrentObservation {
  int pubDate;
  Wind wind;
  Atmosphere atmosphere;
  Astronomy astronomy;
  Condition condition;

  CurrentObservation({
    required this.pubDate,
    required this.wind,
    required this.atmosphere,
    required this.astronomy,
    required this.condition,
  });

  factory CurrentObservation.fromJson(Map<String, dynamic> json) =>
      CurrentObservation(
        pubDate: json["pubDate"],
        wind: Wind.fromJson(json["wind"]),
        atmosphere: Atmosphere.fromJson(json["atmosphere"]),
        astronomy: Astronomy.fromJson(json["astronomy"]),
        condition: Condition.fromJson(json["condition"]),
      );

  Map<String, dynamic> toJson() => {
        "pubDate": pubDate,
        "wind": wind.toJson(),
        "atmosphere": atmosphere.toJson(),
        "astronomy": astronomy.toJson(),
        "condition": condition.toJson(),
      };
}

class Astronomy {
  String sunrise;
  String sunset;

  Astronomy({
    required this.sunrise,
    required this.sunset,
  });

  factory Astronomy.fromJson(Map<String, dynamic> json) => Astronomy(
        sunrise: json["sunrise"],
        sunset: json["sunset"],
      );

  Map<String, dynamic> toJson() => {
        "sunrise": sunrise,
        "sunset": sunset,
      };
}

class Atmosphere {
  int humidity;
  double visibility;
  double pressure;

  Atmosphere({
    required this.humidity,
    required this.visibility,
    required this.pressure,
  });

  factory Atmosphere.fromJson(Map<String, dynamic> json) => Atmosphere(
        humidity: json["humidity"],
        visibility: json["visibility"]?.toDouble(),
        pressure: json["pressure"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "humidity": humidity,
        "visibility": visibility,
        "pressure": pressure,
      };
}

class Condition {
  int temperature;
  String text;
  int code;

  Condition({
    required this.temperature,
    required this.text,
    required this.code,
  });

  factory Condition.fromJson(Map<String, dynamic> json) => Condition(
        temperature: json["temperature"],
        text: json["text"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "temperature": temperature,
        "text": text,
        "code": code,
      };
}

class Wind {
  int chill;
  String direction;
  int speed;

  Wind({
    required this.chill,
    required this.direction,
    required this.speed,
  });

  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        chill: json["chill"],
        direction: json["direction"],
        speed: json["speed"],
      );

  Map<String, dynamic> toJson() => {
        "chill": chill,
        "direction": direction,
        "speed": speed,
      };
}

class Forecast {
  String day;
  int date;
  int high;
  int low;
  Text text;
  int code;

  Forecast({
    required this.day,
    required this.date,
    required this.high,
    required this.low,
    required this.text,
    required this.code,
  });

  factory Forecast.fromJson(Map<String, dynamic> json) => Forecast(
        day: json["day"],
        date: json["date"],
        high: json["high"],
        low: json["low"],
        text: textValues.map[json["text"]]!,
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "date": date,
        "high": high,
        "low": low,
        "text": textValues.reverse[text],
        "code": code,
      };
}

enum Text { HOT, MOSTLY_SUNNY, SUNNY }

final textValues = EnumValues(
    {"Hot": Text.HOT, "Mostly Sunny": Text.MOSTLY_SUNNY, "Sunny": Text.SUNNY});

class Location {
  String city;
  int woeid;
  String country;
  double lat;
  double long;
  String timezoneId;

  Location({
    required this.city,
    required this.woeid,
    required this.country,
    required this.lat,
    required this.long,
    required this.timezoneId,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        city: json["city"],
        woeid: json["woeid"],
        country: json["country"],
        lat: json["lat"]?.toDouble(),
        long: json["long"]?.toDouble(),
        timezoneId: json["timezone_id"],
      );

  Map<String, dynamic> toJson() => {
        "city": city,
        "woeid": woeid,
        "country": country,
        "lat": lat,
        "long": long,
        "timezone_id": timezoneId,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

// import 'dart:convert';
//
// Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));
//
// String weatherToJson(Weather data) => json.encode(data.toJson());
//
// class Weather {
//   Location location;
//   Current current;
//
//   Weather({
//     required this.location,
//     required this.current,
//   });
//
//   factory Weather.fromJson(Map<String, dynamic> json) => Weather(
//         location: Location.fromJson(json["location"]),
//         current: Current.fromJson(json["current"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "location": location.toJson(),
//         "current": current.toJson(),
//       };
// }
//
// class Current {
//   int lastUpdatedEpoch;
//   String lastUpdated;
//   int tempC;
//   double tempF;
//   int isDay;
//   Condition condition;
//   double windMph;
//   double windKph;
//   int windDegree;
//   String windDir;
//   int pressureMb;
//   double pressureIn;
//   int precipMm;
//   int precipIn;
//   int humidity;
//   int cloud;
//   int feelslikeC;
//   double feelslikeF;
//   double windchillC;
//   int windchillF;
//   double heatindexC;
//   int heatindexF;
//   double dewpointC;
//   double dewpointF;
//   int visKm;
//   int visMiles;
//   int uv;
//   double gustMph;
//   double gustKph;
//
//   Current({
//     required this.lastUpdatedEpoch,
//     required this.lastUpdated,
//     required this.tempC,
//     required this.tempF,
//     required this.isDay,
//     required this.condition,
//     required this.windMph,
//     required this.windKph,
//     required this.windDegree,
//     required this.windDir,
//     required this.pressureMb,
//     required this.pressureIn,
//     required this.precipMm,
//     required this.precipIn,
//     required this.humidity,
//     required this.cloud,
//     required this.feelslikeC,
//     required this.feelslikeF,
//     required this.windchillC,
//     required this.windchillF,
//     required this.heatindexC,
//     required this.heatindexF,
//     required this.dewpointC,
//     required this.dewpointF,
//     required this.visKm,
//     required this.visMiles,
//     required this.uv,
//     required this.gustMph,
//     required this.gustKph,
//   });
//
//   factory Current.fromJson(Map<String, dynamic> json) => Current(
//         lastUpdatedEpoch: json["last_updated_epoch"],
//         lastUpdated: json["last_updated"],
//         tempC: json["temp_c"],
//         tempF: json["temp_f"]?.toDouble(),
//         isDay: json["is_day"],
//         condition: Condition.fromJson(json["condition"]),
//         windMph: json["wind_mph"]?.toDouble(),
//         windKph: json["wind_kph"]?.toDouble(),
//         windDegree: json["wind_degree"],
//         windDir: json["wind_dir"],
//         pressureMb: json["pressure_mb"],
//         pressureIn: json["pressure_in"]?.toDouble(),
//         precipMm: json["precip_mm"],
//         precipIn: json["precip_in"],
//         humidity: json["humidity"],
//         cloud: json["cloud"],
//         feelslikeC: json["feelslike_c"],
//         feelslikeF: json["feelslike_f"]?.toDouble(),
//         windchillC: json["windchill_c"]?.toDouble(),
//         windchillF: json["windchill_f"],
//         heatindexC: json["heatindex_c"]?.toDouble(),
//         heatindexF: json["heatindex_f"],
//         dewpointC: json["dewpoint_c"]?.toDouble(),
//         dewpointF: json["dewpoint_f"]?.toDouble(),
//         visKm: json["vis_km"],
//         visMiles: json["vis_miles"],
//         uv: json["uv"],
//         gustMph: json["gust_mph"]?.toDouble(),
//         gustKph: json["gust_kph"]?.toDouble(),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "last_updated_epoch": lastUpdatedEpoch,
//         "last_updated": lastUpdated,
//         "temp_c": tempC,
//         "temp_f": tempF,
//         "is_day": isDay,
//         "condition": condition.toJson(),
//         "wind_mph": windMph,
//         "wind_kph": windKph,
//         "wind_degree": windDegree,
//         "wind_dir": windDir,
//         "pressure_mb": pressureMb,
//         "pressure_in": pressureIn,
//         "precip_mm": precipMm,
//         "precip_in": precipIn,
//         "humidity": humidity,
//         "cloud": cloud,
//         "feelslike_c": feelslikeC,
//         "feelslike_f": feelslikeF,
//         "windchill_c": windchillC,
//         "windchill_f": windchillF,
//         "heatindex_c": heatindexC,
//         "heatindex_f": heatindexF,
//         "dewpoint_c": dewpointC,
//         "dewpoint_f": dewpointF,
//         "vis_km": visKm,
//         "vis_miles": visMiles,
//         "uv": uv,
//         "gust_mph": gustMph,
//         "gust_kph": gustKph,
//       };
// }
//
// class Condition {
//   String text;
//   String icon;
//   int code;
//
//   Condition({
//     required this.text,
//     required this.icon,
//     required this.code,
//   });
//
//   factory Condition.fromJson(Map<String, dynamic> json) => Condition(
//         text: json["text"],
//         icon: json["icon"],
//         code: json["code"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "text": text,
//         "icon": icon,
//         "code": code,
//       };
// }
//
// class Location {
//   String name;
//   String region;
//   String country;
//   double lat;
//   double lon;
//   String tzId;
//   int localtimeEpoch;
//   String localtime;
//
//   Location({
//     required this.name,
//     required this.region,
//     required this.country,
//     required this.lat,
//     required this.lon,
//     required this.tzId,
//     required this.localtimeEpoch,
//     required this.localtime,
//   });
//
//   factory Location.fromJson(Map<String, dynamic> json) => Location(
//         name: json["name"],
//         region: json["region"],
//         country: json["country"],
//         lat: json["lat"]?.toDouble(),
//         lon: json["lon"]?.toDouble(),
//         tzId: json["tz_id"],
//         localtimeEpoch: json["localtime_epoch"],
//         localtime: json["localtime"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "region": region,
//         "country": country,
//         "lat": lat,
//         "lon": lon,
//         "tz_id": tzId,
//         "localtime_epoch": localtimeEpoch,
//         "localtime": localtime,
//       };
// }
