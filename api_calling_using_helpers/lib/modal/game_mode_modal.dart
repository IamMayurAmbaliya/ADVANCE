class GameMode {
  String uuid;
  String displayName;
  String duration;
  bool allowsMatchTimeouts;
  bool isTeamVoiceAllowed;
  bool isMinimapHidden;
  int orbCount;
  int roundsPerHalf;
  String displayIcon;
  String listViewIconTall;
  String assetPath;

  GameMode({
    required this.uuid,
    required this.displayName,
    required this.duration,
    required this.allowsMatchTimeouts,
    required this.isTeamVoiceAllowed,
    required this.isMinimapHidden,
    required this.orbCount,
    required this.roundsPerHalf,
    required this.displayIcon,
    required this.listViewIconTall,
    required this.assetPath,
  });

  factory GameMode.fromJson(Map<String, dynamic> json) => GameMode(
        uuid: json["uuid"] ?? "",
        displayName: json["displayName"] ?? "",
        duration: json["duration"] ?? "",
        allowsMatchTimeouts: json["allowsMatchTimeouts"] ?? "",
        isTeamVoiceAllowed: json["isTeamVoiceAllowed"] ?? "",
        isMinimapHidden: json["isMinimapHidden"] ?? "",
        orbCount: json["orbCount"] ?? "",
        roundsPerHalf: json["roundsPerHalf"] ?? "",
        displayIcon: json["displayIcon"] ?? "",
        listViewIconTall: json["listViewIconTall"] ?? "",
        assetPath: json["assetPath"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "duration": duration,
        "allowsMatchTimeouts": allowsMatchTimeouts,
        "isTeamVoiceAllowed": isTeamVoiceAllowed,
        "isMinimapHidden": isMinimapHidden,
        "orbCount": orbCount,
        "roundsPerHalf": roundsPerHalf,
        "displayIcon": displayIcon,
        "listViewIconTall": listViewIconTall,
        "assetPath": assetPath,
      };
}
