class CompanyLogo {
  String name;
  String ticker;
  String image;

  CompanyLogo({
    required this.name,
    required this.ticker,
    required this.image,
  });

  factory CompanyLogo.fromJson(Map<String, dynamic> json) => CompanyLogo(
    name: json["name"],
    ticker: json["ticker"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "ticker": ticker,
    "image": image,
  };
}
