class Quote {
  String quote;
  String author;
  String category;

  Quote({
    required this.quote,
    required this.author,
    required this.category,
  });

  factory Quote.fromJson(Map<String, dynamic> json) => Quote(
        quote: json["quote"],
        author: json["author"],
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "quote": quote,
        "author": author,
        "category": category,
      };
}
