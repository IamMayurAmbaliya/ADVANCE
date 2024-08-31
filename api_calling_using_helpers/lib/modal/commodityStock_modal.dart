class CommodityStock {
  String exchange;
  String name;
  double price;
  int updated;

  CommodityStock({
    required this.exchange,
    required this.name,
    required this.price,
    required this.updated,
  });

  factory CommodityStock.fromJson(Map<String, dynamic> json) => CommodityStock(
        exchange: json["exchange"],
        name: json["name"],
        price: json["price"]?.toDouble(),
        updated: json["updated"],
      );

  Map<String, dynamic> toJson() => {
        "exchange": exchange,
        "name": name,
        "price": price,
        "updated": updated,
      };
}
