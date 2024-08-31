import 'dart:convert';
import 'dart:developer';

import 'package:animation_project/globals.dart';
import 'package:animation_project/models/hero_model.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();

  String herosApi = "https://akabab.github.io/superhero-api/api/all.json";
  Future<List<Heros>> getAllHero() async {
    Logger().i("Method Called....");
    List<Heros> allHero = [];
    String herosApi = "https://akabab.github.io/superhero-api/api/all.json";
    http.Response response = await http.get(
      Uri.parse(herosApi),
    );

    if (response.statusCode == 200) {
      Logger().i("Status Code:${response.statusCode}");

      List data = jsonDecode(
        response.body,
      );
      // Logger().i("Data:${data}");
      allHero = data
          .map(
            (e) => Heros.fromJson(e),
          )
          .toList();
    }
    return allHero;
  }
}
