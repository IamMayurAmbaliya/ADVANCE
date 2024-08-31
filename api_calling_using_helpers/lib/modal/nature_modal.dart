class Nature {
  int id;
  int width;
  int height;
  int duration;
  List<dynamic> tags;
  String url;
  String image;
  List<VideoFile> videoFiles;
  List<VideoPicture> videoPictures;

  Nature({
    required this.id,
    required this.width,
    required this.height,
    required this.duration,
    required this.tags,
    required this.url,
    required this.image,
    required this.videoFiles,
    required this.videoPictures,
  });

  factory Nature.fromJson(Map<String, dynamic> json) => Nature(
        id: json["id"],
        width: json["width"],
        height: json["height"],
        duration: json["duration"],
        tags: List<dynamic>.from(json["tags"].map((x) => x)),
        url: json["url"],
        image: json["image"],
        videoFiles: List<VideoFile>.from(
            json["video_files"].map((x) => VideoFile.fromJson(x))),
        videoPictures: List<VideoPicture>.from(
            json["video_pictures"].map((x) => VideoPicture.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "duration": duration,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "url": url,
        "image": image,
        "video_files": List<dynamic>.from(videoFiles.map((x) => x.toJson())),
        "video_pictures":
            List<dynamic>.from(videoPictures.map((x) => x.toJson())),
      };
}

class VideoFile {
  int id;
  String quality;
  String fileType;
  int width;
  int height;
  double fps;
  String link;

  VideoFile({
    required this.id,
    required this.quality,
    required this.fileType,
    required this.width,
    required this.height,
    required this.fps,
    required this.link,
  });

  factory VideoFile.fromJson(Map<String, dynamic> json) => VideoFile(
        id: json["id"],
        quality: json["quality"],
        fileType: json["file_type"],
        width: json["width"],
        height: json["height"],
        fps: json["fps"]?.toDouble(),
        link: json["link"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "quality": quality,
        "file_type": fileType,
        "width": width,
        "height": height,
        "fps": fps,
        "link": link,
      };
}

class VideoPicture {
  int id;
  int nr;
  String picture;

  VideoPicture({
    required this.id,
    required this.nr,
    required this.picture,
  });

  factory VideoPicture.fromJson(Map<String, dynamic> json) => VideoPicture(
        id: json["id"],
        nr: json["nr"],
        picture: json["picture"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nr": nr,
        "picture": picture,
      };
}
