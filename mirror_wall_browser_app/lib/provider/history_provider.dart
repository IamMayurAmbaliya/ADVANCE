import 'package:flutter/material.dart';

class HistoryProvider extends ChangeNotifier {
  List<String> historyList = [];
  String? currentUrl;

  void addToHistory() {
    historyList.add(currentUrl!);
    notifyListeners();
  }
}
