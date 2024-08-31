import 'package:adv_flutter_exam/helpers/api_helper.dart';
import 'package:adv_flutter_exam/models/cat_model.dart';
import 'package:adv_flutter_exam/models/dog_model.dart';
import 'package:flutter/material.dart';

class CatController extends ChangeNotifier {
  List<Cat> allCats = [];
  List<Dog> allDogs = [];

  CatController() {
    fetchData();
  }

  Future<void> fetchData() async {
    allCats = await ApiHelper.apiHelper.getCatData();
  }
}

class DogController extends ChangeNotifier {
  List<Dog> allDogs = [];

  DogController() {
    fetchData();
  }

  Future<void> fetchData() async {
    allDogs = await ApiHelper.apiHelper.getDogData();
    notifyListeners();
  }
}
