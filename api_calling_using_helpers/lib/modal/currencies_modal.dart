class Currencies {
  String uuid;
  String displayName;
  String displayNameSingular;
  String displayIcon;
  String largeIcon;
  String assetPath;

  Currencies({
    required this.uuid,
    required this.displayName,
    required this.displayNameSingular,
    required this.displayIcon,
    required this.largeIcon,
    required this.assetPath,
  });

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        uuid: json["uuid"],
        displayName: json["displayName"],
        displayNameSingular: json["displayNameSingular"],
        displayIcon: json["displayIcon"],
        largeIcon: json["largeIcon"],
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "displayNameSingular": displayNameSingular,
        "displayIcon": displayIcon,
        "largeIcon": largeIcon,
        "assetPath": assetPath,
      };
}
