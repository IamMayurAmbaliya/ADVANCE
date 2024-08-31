class ProductModal {
  String category;
  String categoryImage;
  int qty;
  int stock;
  String title;
  double price;
  int discountPercentage;
  double rating;
  String image;
  String description;

  ProductModal({
    required this.category,
    required this.categoryImage,
    required this.qty,
    required this.stock,
    required this.title,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.image,
    required this.description,
  });

  factory ProductModal.fromMap(Map<String, dynamic> data) => ProductModal(
        category: data["category"],
        categoryImage: data["category_image"],
        qty: data["qty"],
        stock: data["stock"],
        title: data["title"],
        price: data["price"]?.toDouble(),
        discountPercentage: data["discountPercentage"],
        rating: data["rating"]?.toDouble(),
        image: data["image"],
        description: data["description"],
      );

  Map<String, dynamic> todata() => {
        "category": category,
        "category_image": categoryImage,
        "qty": qty,
        "stock": stock,
        "title": title,
        "price": price,
        "discountPercentage": discountPercentage,
        "rating": rating,
        "image": image,
        "description": description,
      };
}
