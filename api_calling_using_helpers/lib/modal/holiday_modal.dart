class Holiday {
  String country;
  String iso;
  int year;
  DateTime date;
  String day;
  String name;
  String type;

  Holiday({
    required this.country,
    required this.iso,
    required this.year,
    required this.date,
    required this.day,
    required this.name,
    required this.type,
  });

  factory Holiday.fromJson(Map<String, dynamic> json) => Holiday(
        country: json["country"],
        iso: json["iso"],
        year: json["year"],
        date: DateTime.parse(json["date"]),
        day: json["day"],
        name: json["name"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "iso": iso,
        "year": year,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "day": day,
        "name": name,
        "type": type,
      };
}
