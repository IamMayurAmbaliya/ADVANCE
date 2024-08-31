class Dictionary {
  String definition;
  String word;
  bool valid;

  Dictionary({
    required this.definition,
    required this.word,
    required this.valid,
  });

  factory Dictionary.fromJson(Map<String, dynamic> json) => Dictionary(
        definition: json["definition"],
        word: json["word"],
        valid: json["valid"],
      );

  Map<String, dynamic> toJson() => {
        "definition": definition,
        "word": word,
        "valid": valid,
      };
}
