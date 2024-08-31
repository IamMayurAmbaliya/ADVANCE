class CaloriesBurnedActivity {
  String name;
  int caloriesPerHour;
  int durationMinutes;
  int totalCalories;

  CaloriesBurnedActivity({
    required this.name,
    required this.caloriesPerHour,
    required this.durationMinutes,
    required this.totalCalories,
  });

  factory CaloriesBurnedActivity.fromJson(Map<String, dynamic> json) =>
      CaloriesBurnedActivity(
        name: json["name"],
        caloriesPerHour: json["calories_per_hour"],
        durationMinutes: json["duration_minutes"],
        totalCalories: json["total_calories"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "calories_per_hour": caloriesPerHour,
        "duration_minutes": durationMinutes,
        "total_calories": totalCalories,
      };
}
