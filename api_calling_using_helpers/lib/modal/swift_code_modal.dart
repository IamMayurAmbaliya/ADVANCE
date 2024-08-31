class SwiftCode {
  String bankName;
  String city;
  String country;
  String countryCode;
  String swiftCode;

  SwiftCode({
    required this.bankName,
    required this.city,
    required this.country,
    required this.countryCode,
    required this.swiftCode,
  });

  factory SwiftCode.fromJson(Map<String, dynamic> json) => SwiftCode(
        bankName: json["bank_name"],
        city: json["city"],
        country: json["country"],
        countryCode: json["country_code"],
        swiftCode: json["swift_code"],
      );

  Map<String, dynamic> toJson() => {
        "bank_name": bankName,
        "city": city,
        "country": country,
        "country_code": countryCode,
        "swift_code": swiftCode,
      };
}
