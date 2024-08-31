// class Restaurant {
//   String shopName;
//   String shopId;
//   String shoplogo;
//   String subdomain;
//   String shopType;
//   String mobileno;
//   String deliveryMethod;
//   String cuisine;
//   String city;
//   String address;
//   String longitude;
//   String latitude;
//   String distanceInKm;
//   String cuisineImage;
//   String currency;
//   String offerList;
//   String shopStatus;
//   String promoCode;
//   String totalItem;
//   String paymentGateway;
//   String planPurchase;
//
//   Restaurant({
//     required this.shopName,
//     required this.shopId,
//     required this.shoplogo,
//     required this.subdomain,
//     required this.shopType,
//     required this.mobileno,
//     required this.deliveryMethod,
//     required this.cuisine,
//     required this.city,
//     required this.address,
//     required this.longitude,
//     required this.latitude,
//     required this.distanceInKm,
//     required this.cuisineImage,
//     required this.currency,
//     required this.offerList,
//     required this.shopStatus,
//     required this.promoCode,
//     required this.totalItem,
//     required this.paymentGateway,
//     required this.planPurchase,
//   });
//
//   factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
//         shopName: json["shop_name"],
//         shopId: json["shop_id"],
//         shoplogo: json["shoplogo"],
//         subdomain: json["subdomain"],
//         shopType: json["shop_type"],
//         mobileno: json["mobileno"],
//         deliveryMethod: json["delivery_method"],
//         cuisine: json["cuisine"],
//         city: json["city"],
//         address: json["address"],
//         longitude: json["longitude"],
//         latitude: json["latitude"],
//         distanceInKm: json["distance_in_km"],
//         cuisineImage: json["cuisine_image"],
//         currency: json["currency"],
//         offerList: json["offer_list"],
//         shopStatus: json["shop_status"],
//         promoCode: json["promo_code"],
//         totalItem: json["total_item"],
//         paymentGateway: json["payment_gateway"],
//         planPurchase: json["plan_purchase"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "shop_name": shopName,
//         "shop_id": shopId,
//         "shoplogo": shoplogo,
//         "subdomain": subdomain,
//         "shop_type": shopType,
//         "mobileno": mobileno,
//         "delivery_method": deliveryMethod,
//         "cuisine": cuisine,
//         "city": city,
//         "address": address,
//         "longitude": longitude,
//         "latitude": latitude,
//         "distance_in_km": distanceInKm,
//         "cuisine_image": cuisineImage,
//         "currency": currency,
//         "offer_list": offerList,
//         "shop_status": shopStatus,
//         "promo_code": promoCode,
//         "total_item": totalItem,
//         "payment_gateway": paymentGateway,
//         "plan_purchase": planPurchase,
//       };
// }
//
// // Map m = {
// //   "shop_name": "Grenee Vesu",
// //   "shop_id": "6135",
// //   "shoplogo":
// //   "6135_2024-02-07_17-53-080632cf78b-781a-472b-a5de-24af509b3569.jpg",
// //   "subdomain": "greneevesu",
// //   "shop_type": "Veg",
// //   "mobileno": "8487822155",
// //   "delivery_method": "Home Delivery",
// //   "cuisine": "Pizza,Fast Food,Sandwiches,Burgers,South indian,Coffee,Breakfast",
// //   "city": "Surat",
// //   "address": "VIP Road2",
// //   "longitude": "72.79839",
// //   "latitude": "21.1384765",
// //   "distance_in_km": "",
// //   "cuisine_image": "AdminImages/2_2020-09-03_11-01-080.png",
// //   "currency": "Rs.",
// //   "offer_list": "[]",
// //   "shop_status": "2",
// //   "promo_code": "FOODICCC",
// //   "total_item": "50",
// //   "payment_gateway": "1",
// //   "plan_purchase": "1",
// // };
