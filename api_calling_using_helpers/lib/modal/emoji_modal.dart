class Emoji {
  String code;
  String character;
  String image;
  String name;
  String group;
  String subgroup;

  Emoji({
    required this.code,
    required this.character,
    required this.image,
    required this.name,
    required this.group,
    required this.subgroup,
  });

  factory Emoji.fromJson(Map<String, dynamic> json) => Emoji(
        code: json["code"],
        character: json["character"],
        image: json["image"],
        name: json["name"],
        group: json["group"],
        subgroup: json["subgroup"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "character": character,
        "image": image,
        "name": name,
        "group": group,
        "subgroup": subgroup,
      };
}
