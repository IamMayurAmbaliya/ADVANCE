class Content {
  String uuid;
  String displayName;
  String devName;
  int rank;
  int juiceValue;
  int juiceCost;
  String highlightColor;
  String displayIcon;
  String assetPath;

  Content({
    required this.uuid,
    required this.displayName,
    required this.devName,
    required this.rank,
    required this.juiceValue,
    required this.juiceCost,
    required this.highlightColor,
    required this.displayIcon,
    required this.assetPath,
  });

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        uuid: json["uuid"],
        displayName: json["displayName"],
        devName: json["devName"],
        rank: json["rank"],
        juiceValue: json["juiceValue"],
        juiceCost: json["juiceCost"],
        highlightColor: json["highlightColor"],
        displayIcon: json["displayIcon"],
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "devName": devName,
        "rank": rank,
        "juiceValue": juiceValue,
        "juiceCost": juiceCost,
        "highlightColor": highlightColor,
        "displayIcon": displayIcon,
        "assetPath": assetPath,
      };
}
