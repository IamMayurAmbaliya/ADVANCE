class Cocktail {
  List<String> ingredients;
  String instructions;
  String name;

  Cocktail({
    required this.ingredients,
    required this.instructions,
    required this.name,
  });

  factory Cocktail.fromJson(Map<String, dynamic> json) => Cocktail(
        ingredients: List<String>.from(json["ingredients"].map((x) => x)),
        instructions: json["instructions"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "ingredients": List<dynamic>.from(ingredients.map((x) => x)),
        "instructions": instructions,
        "name": name,
      };
}
