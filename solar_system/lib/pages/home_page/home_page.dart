import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/controllers/planet_controller.dart';
import 'package:solar_system/controllers/theme_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ThemeController themeController =
        Provider.of<ThemeController>(context, listen: false);
    PlanetController valueController = Provider.of<PlanetController>(context);
    PlanetController methodController =
        Provider.of<PlanetController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("PLANET"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              themeController.changeTheme();
            },
            icon: themeController.isDark
                ? const Icon(
                    CupertinoIcons.moon,
                  )
                : const Icon(
                    Icons.light_mode,
                  ),
          ),
        ],
      ),
      body: valueController.planetData.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: ListView.builder(
                itemCount: valueController.planetData.length,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Center(
                    child: ListTile(
                      title: Text(valueController.planetData[index].name),
                      leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 50,
                        foregroundImage:
                            AssetImage(valueController.planetData[index].image),
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
