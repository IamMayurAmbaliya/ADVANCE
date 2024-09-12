import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebController extends ChangeNotifier {
  bool canBack = false;
  bool canForward = false;

  late InAppWebViewController webViewController;

  Future<void> goBack() async {
    await webViewController.goBack();
  }

  Future<void> canGoBack() async {
    canBack = await webViewController.canGoBack();
  }

  Future<void> goForward() async {
    await webViewController.goForward();
  }

  Future<void> canGoForward() async {
    canForward = await webViewController.canGoForward();
  }

  Future<void> reload() async {
    await webViewController.reload();
  }

  //..........................................................
  //....................Search Engine Mate....................
  //..........................................................

  String groupValue = 'Google';

  List<String> searchEngineNames = ['Google', 'Bing', 'Duck Duck Go', 'Yahoo'];

  PullToRefreshController pullToRefreshController = PullToRefreshController();

  void onWebViewCreated(InAppWebViewController controller) {
    webViewController = controller;
  }

  void updateSearchEngineGroupValue(String value) {
    groupValue = value;
    notifyListeners();
  }

  void searchEngine(String value) {
    updateSearchEngineGroupValue(value);

    if (groupValue == 'Google') {
      webViewController.loadUrl(
        urlRequest: URLRequest(
          url: WebUri("https://www.google.com/"),
        ),
      );
    } else if (groupValue == 'Yahoo') {
      webViewController.loadUrl(
        urlRequest: URLRequest(
          url: WebUri("https://in.search.yahoo.com/"),
        ),
      );
    } else if (groupValue == 'Bing') {
      webViewController.loadUrl(
        urlRequest: URLRequest(
          url: WebUri("https://www.bing.com/"),
        ),
      );
    } else if (groupValue == 'Duck Duck Go') {
      webViewController.loadUrl(
        urlRequest: URLRequest(
          url: WebUri("https://duckduckgo.com/"),
        ),
      );
    }
    notifyListeners();
  }
}
