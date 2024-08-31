// To parse this JSON data, do
//
//     final heros = herosFromJson(jsonString);

import 'dart:convert';

Heros herosFromJson(String str) => Heros.fromJson(json.decode(str));

String herosToJson(Heros data) => json.encode(data.toJson());

class Heros {
  int id;
  String name;
  String slug;
  Powerstats powerstats;
  Appearance appearance;
  Biography biography;
  Work work;
  Connections connections;
  Images images;

  Heros({
    required this.id,
    required this.name,
    required this.slug,
    required this.powerstats,
    required this.appearance,
    required this.biography,
    required this.work,
    required this.connections,
    required this.images,
  });

  factory Heros.fromJson(Map<String, dynamic> json) => Heros(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        powerstats: Powerstats.fromJson(json["powerstats"]),
        appearance: Appearance.fromJson(json["appearance"]),
        biography: Biography.fromJson(json["biography"]),
        work: Work.fromJson(json["work"]),
        connections: Connections.fromJson(json["connections"]),
        images: Images.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "powerstats": powerstats.toJson(),
        "appearance": appearance.toJson(),
        "biography": biography.toJson(),
        "work": work.toJson(),
        "connections": connections.toJson(),
        "images": images.toJson(),
      };
}

class Appearance {
  String gender;
  String race;
  List<String> height;
  List<String> weight;
  String eyeColor;
  String hairColor;

  Appearance({
    required this.gender,
    required this.race,
    required this.height,
    required this.weight,
    required this.eyeColor,
    required this.hairColor,
  });

  factory Appearance.fromJson(Map<String, dynamic> json) => Appearance(
        gender: json["gender"] ?? "",
        race: json["race"] ?? "",
        height: List<String>.from(json["height"].map((x) => x)) ?? [],
        weight: List<String>.from(json["weight"].map((x) => x)) ?? [],
        eyeColor: json["eyeColor"] ?? "",
        hairColor: json["hairColor"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "gender": gender,
        "race": race,
        "height": List<dynamic>.from(height.map((x) => x)),
        "weight": List<dynamic>.from(weight.map((x) => x)),
        "eyeColor": eyeColor,
        "hairColor": hairColor,
      };
}

class Biography {
  String fullName;
  String alterEgos;
  List<String> aliases;
  String placeOfBirth;
  String firstAppearance;
  String publisher;
  String alignment;

  Biography({
    required this.fullName,
    required this.alterEgos,
    required this.aliases,
    required this.placeOfBirth,
    required this.firstAppearance,
    required this.publisher,
    required this.alignment,
  });

  factory Biography.fromJson(Map<String, dynamic> json) => Biography(
        fullName: json["fullName"] ?? "",
        alterEgos: json["alterEgos"] ?? "",
        aliases: List<String>.from(json["aliases"].map((x) => x)) ?? [],
        placeOfBirth: json["placeOfBirth"] ?? "",
        firstAppearance: json["firstAppearance"] ?? "",
        publisher: json["publisher"] ?? "",
        alignment: json["alignment"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "fullName": fullName,
        "alterEgos": alterEgos,
        "aliases": List<dynamic>.from(aliases.map((x) => x)),
        "placeOfBirth": placeOfBirth,
        "firstAppearance": firstAppearance,
        "publisher": publisher,
        "alignment": alignment,
      };
}

class Connections {
  String groupAffiliation;
  String relatives;

  Connections({
    required this.groupAffiliation,
    required this.relatives,
  });

  factory Connections.fromJson(Map<String, dynamic> json) => Connections(
        groupAffiliation: json["groupAffiliation"],
        relatives: json["relatives"],
      );

  Map<String, dynamic> toJson() => {
        "groupAffiliation": groupAffiliation,
        "relatives": relatives,
      };
}

class Images {
  String xs;
  String sm;
  String md;
  String lg;

  Images({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        xs: json["xs"],
        sm: json["sm"],
        md: json["md"],
        lg: json["lg"],
      );

  Map<String, dynamic> toJson() => {
        "xs": xs,
        "sm": sm,
        "md": md,
        "lg": lg,
      };
}

class Powerstats {
  int intelligence;
  int strength;
  int speed;
  int durability;
  int power;
  int combat;

  Powerstats({
    required this.intelligence,
    required this.strength,
    required this.speed,
    required this.durability,
    required this.power,
    required this.combat,
  });

  factory Powerstats.fromJson(Map<String, dynamic> json) => Powerstats(
        intelligence: json["intelligence"],
        strength: json["strength"],
        speed: json["speed"],
        durability: json["durability"],
        power: json["power"],
        combat: json["combat"],
      );

  Map<String, dynamic> toJson() => {
        "intelligence": intelligence,
        "strength": strength,
        "speed": speed,
        "durability": durability,
        "power": power,
        "combat": combat,
      };
}

class Work {
  String occupation;
  String base;

  Work({
    required this.occupation,
    required this.base,
  });

  factory Work.fromJson(Map<String, dynamic> json) => Work(
        occupation: json["occupation"],
        base: json["base"],
      );

  Map<String, dynamic> toJson() => {
        "occupation": occupation,
        "base": base,
      };
}
