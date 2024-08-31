import 'dart:convert';

import 'package:db_miner_quotes_app_pr_7/headers.dart';
import 'package:flutter/services.dart';

class QuoteController extends ChangeNotifier {
  List quoteData = [];

  QuoteController() {
    loadJson();
  }

  Future<void> loadJson() async {
    String data = await rootBundle.loadString("assets/json/quote.json");
    quoteData = jsonDecode(data);
    notifyListeners();
  }
}
