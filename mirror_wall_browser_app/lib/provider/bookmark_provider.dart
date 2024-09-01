import 'package:flutter/material.dart';

class BookMarkProvider extends ChangeNotifier {
  List<String> bookmarkList = [];
  String? currentUrl;

  void addToBookMark() {
    bookmarkList.add(currentUrl!);
    notifyListeners();
  }
}
