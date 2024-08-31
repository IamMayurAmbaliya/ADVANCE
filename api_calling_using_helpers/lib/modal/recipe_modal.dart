class Recipe {
  String title;
  String ingredients;
  String servings;
  String instructions;

  Recipe({
    required this.title,
    required this.ingredients,
    required this.servings,
    required this.instructions,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        title: json["title"],
        ingredients: json["ingredients"],
        servings: json["servings"],
        instructions: json["instructions"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "ingredients": ingredients,
        "servings": servings,
        "instructions": instructions,
      };
}
