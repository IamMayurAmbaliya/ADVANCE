import 'package:flutter/material.dart';
import 'package:mirror_wall_browser_app/pages/home_page/components/pop_up_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          popUpMenuButtonAppBar(context),
        ],
      ),
    );
  }
}
