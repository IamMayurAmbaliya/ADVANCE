class Season {
  String uuid;
  String displayName;
  dynamic type;
  DateTime startTime;
  DateTime endTime;
  dynamic parentUuid;
  String assetPath;

  Season({
    required this.uuid,
    required this.displayName,
    required this.type,
    required this.startTime,
    required this.endTime,
    required this.parentUuid,
    required this.assetPath,
  });

  factory Season.fromJson(Map<String, dynamic> json) => Season(
        uuid: json["uuid"],
        displayName: json["displayName"],
        type: json["type"],
        startTime: DateTime.parse(json["startTime"]),
        endTime: DateTime.parse(json["endTime"]),
        parentUuid: json["parentUuid"],
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "type": type,
        "startTime": startTime.toIso8601String(),
        "endTime": endTime.toIso8601String(),
        "parentUuid": parentUuid,
        "assetPath": assetPath,
      };
}
