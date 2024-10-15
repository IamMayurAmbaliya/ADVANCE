class Product {
  String id;
  String name;
  String category;
  String price;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        category: json["category"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "category": category,
        "price": price,
      };

  Map<String, dynamic> get getProduct => {
        "id": id,
        "name": name,
        "category": category,
        "price": price,
      };
}
