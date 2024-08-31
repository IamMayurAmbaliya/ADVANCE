class HistoricalEvent {
  String year;
  String month;
  String day;
  String event;

  HistoricalEvent({
    required this.year,
    required this.month,
    required this.day,
    required this.event,
  });

  factory HistoricalEvent.fromJson(Map<String, dynamic> json) =>
      HistoricalEvent(
        year: json["year"],
        month: json["month"],
        day: json["day"],
        event: json["event"],
      );

  Map<String, dynamic> toJson() => {
        "year": year,
        "month": month,
        "day": day,
        "event": event,
      };
}
