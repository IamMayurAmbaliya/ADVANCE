class Weapon {
  String uuid;
  String displayName;
  dynamic levelItem;
  String displayIcon;
  dynamic streamedVideo;
  String assetPath;

  Weapon({
    required this.uuid,
    required this.displayName,
    required this.levelItem,
    required this.displayIcon,
    required this.streamedVideo,
    required this.assetPath,
  });

  factory Weapon.fromJson(Map<String, dynamic> json) => Weapon(
        uuid: json["uuid"] ?? "",
        displayName: json["displayName"] ?? "",
        levelItem: json["levelItem"] ?? "",
        displayIcon: json["displayIcon"] ?? "",
        streamedVideo: json["streamedVideo"] ?? "",
        assetPath: json["assetPath"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "levelItem": levelItem,
        "displayIcon": displayIcon,
        "streamedVideo": streamedVideo,
        "assetPath": assetPath,
      };
}
