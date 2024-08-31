class Spray {
  String uuid;
  String displayName;
  String displayIcon;
  String fullIcon;
  String fullTransparentIcon;
  String assetPath;

  Spray({
    required this.uuid,
    required this.displayName,
    required this.displayIcon,
    required this.fullIcon,
    required this.fullTransparentIcon,
    required this.assetPath,
  });

  factory Spray.fromJson(Map<String, dynamic> json) => Spray(
        uuid: json["uuid"] ?? "",
        displayName: json["displayName"] ?? "",
        displayIcon: json["displayIcon"] ?? "",
        fullIcon: json["fullIcon"] ?? "",
        fullTransparentIcon: json["fullTransparentIcon"] ?? "",
        assetPath: json["assetPath"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "displayIcon": displayIcon,
        "fullIcon": fullIcon,
        "fullTransparentIcon": fullTransparentIcon,
        "assetPath": assetPath,
      };
}
