class Ceremony {
  String uuid;
  String displayName;
  String assetPath;

  Ceremony({
    required this.uuid,
    required this.displayName,
    required this.assetPath,
  });

  factory Ceremony.fromJson(Map<String, dynamic> json) => Ceremony(
        uuid: json["uuid"],
        displayName: json["displayName"],
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "assetPath": assetPath,
      };
}
