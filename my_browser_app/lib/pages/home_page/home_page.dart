import 'package:flutter/material.dart';
import 'package:my_browser_app/controllers/connectivity_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ConnectivityController methodController =
        Provider.of<ConnectivityController>(context, listen: false);
    ConnectivityController valueController =
        Provider.of<ConnectivityController>(context);
    return Scaffold(
      appBar: AppBar(
        title:
            Text(valueController.connected ? "Browser App" : "Not Connected"),
      ),
    );
  }
}
