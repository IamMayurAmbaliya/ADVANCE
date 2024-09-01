import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class BrowserController extends ChangeNotifier {
  late InAppWebViewController inAppWebViewController;
  String searchText = 'Google';
  String newSearchText = '';

  void searchEngines() {
    if (searchText == 'Google') {
      inAppWebViewController.loadUrl(
        urlRequest: URLRequest(
          url: WebUri(
              "https://www.google.com/search?q=$newSearchText&rlz=1C1ONGR_enIN1095IN1095&oq=hi&gs_lcrp=EgZjaHJvbWUqDggAEEUYJxg7GIAEGIoFMg4IABBFGCcYOxiABBiKBTIGCAEQRRg7Mg0IAhAAGIMBGLEDGIAEMg0IAxAuGIMBGLEDGIAEMhAIBBAAGIMBGLEDGIAEGIoFMg0IBRAAGIMBGLEDGIAEMhYIBhAuGIMBGMcBGLEDGNEDGIAEGIoFMgcIBxAAGIAEMgcICBAAGIAEMhAICRAuGIMBGLEDGIAEGIoF0gEJMTIzNmowajE1qAIJsAIB&sourceid=chrome&ie=UTF-8"),
        ),
      );
    } else if (searchText == 'Yahoo') {
      inAppWebViewController.loadUrl(
        urlRequest: URLRequest(
          url: WebUri(
              "https://in.search.yahoo.com/search;_ylt=AwrPoYNX0lFm3wcpV0y7HAx.;_ylc=X1MDMjExNDcyMzAwMwRfcgMyBGZyA2NybWFzBGZyMgNzYi10b3AEZ3ByaWQDZlRUNGtwSXdUSjZmZURhT2FPdnRXQQRuX3JzbHQDMARuX3N1Z2cDMTAEb3JpZ2luA2luLnNlYXJjaC55YWhvby5jb20EcG9zAzAEcHFzdHIDBHBxc3RybAMwBHFzdHJsAzExBHF1ZXJ5A2ZsdXR0ZXIlMjBkZXYEdF9zdG1wAzE3MTY2MzgzMDE-?p=$newSearchText &fr2=sb-top&fr=crmas&vm=r"),
        ),
      );
    } else if (searchText == 'Bing') {
      inAppWebViewController.loadUrl(
        urlRequest: URLRequest(
          url: WebUri(
              "https://www.bing.com/search?q=$newSearchText&qs=n&form=QBRE&sp=-1&lq=0&pq=flutter+dev&sc=19-11&sk=&cvid=B4B782306ED143AE9326650EBDDC17DC&ghsh=0&ghacc=0&ghpl="),
        ),
      );
    } else if (searchText == 'Duck Duck Go') {
      inAppWebViewController.loadUrl(
        urlRequest: URLRequest(
          url: WebUri("https://duckduckgo.com/?q=$newSearchText&ia=web"),
        ),
      );
    }
    notifyListeners();
  }

  void updateSearchEngine(String value) {
    searchText = value;
    if (searchText == 'Google') {
      inAppWebViewController.loadUrl(
        urlRequest: URLRequest(
          url: WebUri("https://www.google.com/"),
        ),
      );
    } else if (searchText == 'Yahoo') {
      inAppWebViewController.loadUrl(
        urlRequest: URLRequest(
          url: WebUri("https://in.search.yahoo.com/"),
        ),
      );
    } else if (searchText == 'Bing') {
      inAppWebViewController.loadUrl(
        urlRequest: URLRequest(
          url: WebUri("https://www.bing.com/"),
        ),
      );
    } else if (searchText == 'Duck Duck Go') {
      inAppWebViewController.loadUrl(
        urlRequest: URLRequest(
          url: WebUri("https://duckduckgo.com/"),
        ),
      );
    }
    notifyListeners();
  }

  bool isButtonForward = false;
  Future<void> canGoForward() async {
    isButtonForward = await inAppWebViewController.canGoForward();
    notifyListeners();
  }

  bool isButtonEnabled = true;
  Future<void> canGoBack() async {
    // checkIfShouldGoBack();
    isButtonEnabled = await inAppWebViewController.canGoBack();
    notifyListeners();
  }

  Future<void> goBack() async {
    await inAppWebViewController.goBack();
    notifyListeners();
  }

  Future<void> goForward() async {
    await inAppWebViewController.goForward();
    notifyListeners();
  }

  String? currentUrl;
  Future<void> setCurrentUrl() async {
    // WebUri? webUri = await inAppWebViewController.getUrl();
    currentUrl = await inAppWebViewController.getTitle() as String;
    notifyListeners();
  }

  Future<void> checkIfShouldGoBack() async {
    // print('$currentUrl ----------------------------------');

    if (currentUrl == 'Google' ||
        currentUrl == 'Yahoo India' ||
        currentUrl == 'Bing' ||
        currentUrl == 'DuckDuckGo — Privacy, simplified.') {
      // print('$currentUrl ----------------------------------');
      isButtonEnabled = false;
      // print(object);
      notifyListeners();
    } else {
      // print(" else part-------------------------------------------");
      isButtonEnabled = await inAppWebViewController.canGoBack();
      // print('$isButtonEnabled');
      notifyListeners();
    }
  }

  double progress = 0;
  Future<void> onChangeProgress(int progress) async {
    this.progress = progress / 100;
    notifyListeners();
  }

  void updateSearchedText(String text) {
    newSearchText = text;
    notifyListeners();
  }
}
