import 'package:flutter/material.dart';

class EngineProvider extends ChangeNotifier {
  String searchText = 'Google';
  String newSearchText = "";
  String groupValue = 'Google';

  List<String> searchEngineNames = ['Google', 'Bing', 'Duck Duck Go', 'Yahoo'];

  void search(String text) {
    searchText = text;
    notifyListeners();
  }

  void updateSearchEngineGroupValue(String value) {
    groupValue = value;
    notifyListeners();
  }

  void updateSearchEngine(String value) {
    searchText = value;
    if (searchText == 'Google') {
      // inAppWebViewController.loadUrl(
      //   urlRequest: URLRequest(
      //     url: WebUri("https://www.google.com/"),
      //   ),
      // );
    } else if (searchText == 'Yahoo') {
      // inAppWebViewController.loadUrl(
      //   urlRequest: URLRequest(
      //     url: WebUri("https://in.search.yahoo.com/"),
      //   ),
      // );
    } else if (searchText == 'Bing') {
      // inAppWebViewController.loadUrl(
      //   urlRequest: URLRequest(
      //     url: WebUri("https://www.bing.com/"),
      //   ),
      // );
    } else if (searchText == 'Duck Duck Go') {
      // inAppWebViewController.loadUrl(
      //   urlRequest: URLRequest(
      //     url: WebUri("https://duckduckgo.com/"),
      //   ),
      // );
    }
    notifyListeners();
  }

  void updateSearchedText(String text) {
    newSearchText = text;
    notifyListeners();
  }
}
