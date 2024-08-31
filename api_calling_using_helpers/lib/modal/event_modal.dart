class Events {
  String uuid;
  String displayName;
  String shortDisplayName;
  DateTime startTime;
  DateTime endTime;
  String assetPath;

  Events({
    required this.uuid,
    required this.displayName,
    required this.shortDisplayName,
    required this.startTime,
    required this.endTime,
    required this.assetPath,
  });

  factory Events.fromJson(Map<String, dynamic> json) => Events(
        uuid: json["uuid"],
        displayName: json["displayName"],
        shortDisplayName: json["shortDisplayName"],
        startTime: DateTime.parse(json["startTime"]),
        endTime: DateTime.parse(json["endTime"]),
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "shortDisplayName": shortDisplayName,
        "startTime": startTime.toIso8601String(),
        "endTime": endTime.toIso8601String(),
        "assetPath": assetPath,
      };
}
