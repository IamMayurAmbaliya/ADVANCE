import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:getx_practice/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService extends ChangeNotifier {
  ApiService._();

  static final ApiService apiService = ApiService._();

  String api =
      "https://real-time-product-search.p.rapidapi.com/search?q=Nike+shoes&country=us&language=en&limit=30&sort_by=BEST_MATCH&product_condition=ANY&min_rating=ANY";

  Map<String, String> headers = {
    'x-rapidapi-key': '0f7c7707a1mshcfb7f4e2a5254dep105262jsn745083e8e12e',
    'x-rapidapi-host': 'real-time-product-search.p.rapidapi.com'
  };

  Future<List<Product>> getData() async {
    List<Product> allProduct = [];

    http.Response response = await http.get(
      Uri.parse(api),
      headers: headers,
    );

    if (response.statusCode == 200) {
      List d = jsonDecode(response.body)['data'];
      allProduct = d
          .map(
            (e) => Product.fromJson(e),
          )
          .toList();
    }
    return allProduct;
  }
}
