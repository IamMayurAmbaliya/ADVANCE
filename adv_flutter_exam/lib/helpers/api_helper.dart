import 'dart:convert';

import 'package:adv_flutter_exam/globals.dart';
import 'package:adv_flutter_exam/models/cat_model.dart';
import 'package:adv_flutter_exam/models/dog_model.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();

  Future<List<Cat>> getCatData() async {
    String catApi =
        "https://api.api-ninjas.com/v1/cats?name=${Globals.globals.searchCatBreedName}";
    Map<String, String> catHeaders = {
      "X-Api-Key": "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN",
    };
    Logger().i("METHOD CALLED");
    List<Cat> allCat = [];
    http.Response response = await http.get(
      Uri.parse(catApi),
      headers: catHeaders,
    );
    Logger().i("Status Code : ${response.statusCode}");

    if (response.statusCode == 200) {
      Logger().i(Globals.globals.searchCatBreedName);

      List data = jsonDecode(response.body);
      Logger().i(data);
      allCat = data
          .map(
            (e) => Cat.fromJson(e),
          )
          .toList();
    }
    return allCat;
  }

  //.......................................................................

  Future<List<Dog>> getDogData() async {
    String dogApi =
        "https://api.api-ninjas.com/v1/dogs?name=${Globals.globals.searchDogName}";
    Map<String, String> dogHeaders = {
      "X-Api-Key": "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN",
    };
    Logger().i("METHOD CALLED");
    List<Dog> allDog = [];
    http.Response response = await http.get(
      Uri.parse(dogApi),
      headers: dogHeaders,
    );
    Logger().i("Status Code : ${response.statusCode}");

    if (response.statusCode == 200) {
      Logger().i(Globals.globals.searchDogName);

      List data = jsonDecode(response.body);
      Logger().i(data);
      allDog = data
          .map(
            (e) => Dog.fromJson(e),
          )
          .toList();
    }
    return allDog;
  }
}
