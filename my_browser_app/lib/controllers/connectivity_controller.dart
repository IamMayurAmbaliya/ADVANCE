import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController extends ChangeNotifier {
  List<ConnectivityResult> results = [];
  bool connected = false;

  ConnectivityController() {
    checkConnectivity();
  }

  checkConnectivity() {
    Connectivity().onConnectivityChanged.listen(
      (event) {
        results = event;
        connected = results.contains(ConnectivityResult.none) ? false : true;
        notifyListeners();
      },
    );
  }
}
