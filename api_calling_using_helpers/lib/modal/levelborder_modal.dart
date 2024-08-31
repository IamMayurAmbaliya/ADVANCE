class LevelBorder {
  String uuid;
  String displayName;
  int startingLevel;
  String levelNumberAppearance;
  String smallPlayerCardAppearance;
  String assetPath;

  LevelBorder({
    required this.uuid,
    required this.displayName,
    required this.startingLevel,
    required this.levelNumberAppearance,
    required this.smallPlayerCardAppearance,
    required this.assetPath,
  });

  factory LevelBorder.fromJson(Map<String, dynamic> json) => LevelBorder(
        uuid: json["uuid"],
        displayName: json["displayName"],
        startingLevel: json["startingLevel"],
        levelNumberAppearance: json["levelNumberAppearance"],
        smallPlayerCardAppearance: json["smallPlayerCardAppearance"],
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "startingLevel": startingLevel,
        "levelNumberAppearance": levelNumberAppearance,
        "smallPlayerCardAppearance": smallPlayerCardAppearance,
        "assetPath": assetPath,
      };
}
