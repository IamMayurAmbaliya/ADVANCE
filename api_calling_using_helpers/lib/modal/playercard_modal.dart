class PlayerCard {
  String uuid;
  String displayName;
  String displayIcon;
  String smallArt;
  String wideArt;
  String largeArt;
  String assetPath;

  PlayerCard({
    required this.uuid,
    required this.displayName,
    required this.displayIcon,
    required this.smallArt,
    required this.wideArt,
    required this.largeArt,
    required this.assetPath,
  });

  factory PlayerCard.fromJson(Map<String, dynamic> json) => PlayerCard(
        uuid: json["uuid"],
        displayName: json["displayName"],
        displayIcon: json["displayIcon"],
        smallArt: json["smallArt"],
        wideArt: json["wideArt"],
        largeArt: json["largeArt"],
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "displayIcon": displayIcon,
        "smallArt": smallArt,
        "wideArt": wideArt,
        "largeArt": largeArt,
        "assetPath": assetPath,
      };
}
