class InterestRate {
  String centralBank;
  String country;
  double ratePct;
  String lastUpdated;

  InterestRate({
    required this.centralBank,
    required this.country,
    required this.ratePct,
    required this.lastUpdated,
  });

  factory InterestRate.fromJson(Map<String, dynamic> json) => InterestRate(
        centralBank: json["central_bank"],
        country: json["country"],
        ratePct: json["rate_pct"]?.toDouble(),
        lastUpdated: json["last_updated"],
      );

  Map<String, dynamic> toJson() => {
        "central_bank": centralBank,
        "country": country,
        "rate_pct": ratePct,
        "last_updated": lastUpdated,
      };
}
