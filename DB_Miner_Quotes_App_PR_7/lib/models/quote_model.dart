class QuoteModel {
  String category;
  List<Quote> quotes;

  QuoteModel({
    required this.category,
    required this.quotes,
  });

  factory QuoteModel.fromJson(Map<String, dynamic> json) => QuoteModel(
        category: json["category"],
        quotes: List<Quote>.from(json["quotes"].map((x) => Quote.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "quotes": List<dynamic>.from(quotes.map((x) => x.toJson())),
      };
}

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
