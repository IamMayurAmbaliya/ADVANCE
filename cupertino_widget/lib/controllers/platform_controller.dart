import 'package:flutter/material.dart';

class PlatFormController extends ChangeNotifier {
  bool isAndroid = true;

  void changePlatForm() {
    isAndroid = !isAndroid;
    notifyListeners();
  }
}
