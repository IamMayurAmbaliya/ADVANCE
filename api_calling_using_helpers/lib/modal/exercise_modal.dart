class Exercise {
  String name;
  String type;
  String muscle;
  String equipment;
  String difficulty;
  String instructions;

  Exercise({
    required this.name,
    required this.type,
    required this.muscle,
    required this.equipment,
    required this.difficulty,
    required this.instructions,
  });

  factory Exercise.fromJson(Map<String, dynamic> json) => Exercise(
        name: json["name"],
        type: json["type"],
        muscle: json["muscle"],
        equipment: json["equipment"],
        difficulty: json["difficulty"],
        instructions: json["instructions"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "muscle": muscle,
        "equipment": equipment,
        "difficulty": difficulty,
        "instructions": instructions,
      };
}
