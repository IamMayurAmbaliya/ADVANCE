import 'package:flutter/material.dart';

class Themes {
  String uuid;
  String displayName;
  dynamic displayIcon;
  dynamic storeFeaturedImage;
  String assetPath;

  Themes({
    required this.uuid,
    required this.displayName,
    required this.displayIcon,
    required this.storeFeaturedImage,
    required this.assetPath,
  });

  factory Themes.fromJson(Map<String, dynamic> json) => Themes(
        uuid: json["uuid"],
        displayName: json["displayName"],
        displayIcon: json["displayIcon"] ?? const Icon(Icons.error),
        storeFeaturedImage:
            json["storeFeaturedImage"] ?? const Icon(Icons.error),
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "displayIcon": displayIcon,
        "storeFeaturedImage": storeFeaturedImage,
        "assetPath": assetPath,
      };
}
