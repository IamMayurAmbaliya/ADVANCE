class HistoricalMan {
  String name;
  String title;
  Info info;

  HistoricalMan({
    required this.name,
    required this.title,
    required this.info,
  });

  factory HistoricalMan.fromJson(Map<String, dynamic> json) => HistoricalMan(
        name: json["name"],
        title: json["title"],
        info: Info.fromJson(json["info"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "title": title,
        "info": info.toJson(),
      };
}

class Info {
  String born;
  String died;
  String issue;
  String reign;
  String father;
  String mother;
  String spouse;
  String dynasty;
  String religion;
  String successor;
  String coronation;
  String predecessor;

  Info({
    required this.born,
    required this.died,
    required this.issue,
    required this.reign,
    required this.father,
    required this.mother,
    required this.spouse,
    required this.dynasty,
    required this.religion,
    required this.successor,
    required this.coronation,
    required this.predecessor,
  });

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        born: json["born"],
        died: json["died"],
        issue: json["issue"],
        reign: json["reign"],
        father: json["father"],
        mother: json["mother"],
        spouse: json["spouse"],
        dynasty: json["dynasty"],
        religion: json["religion"],
        successor: json["successor"],
        coronation: json["coronation"],
        predecessor: json["predecessor"],
      );

  Map<String, dynamic> toJson() => {
        "born": born,
        "died": died,
        "issue": issue,
        "reign": reign,
        "father": father,
        "mother": mother,
        "spouse": spouse,
        "dynasty": dynasty,
        "religion": religion,
        "successor": successor,
        "coronation": coronation,
        "predecessor": predecessor,
      };
}
