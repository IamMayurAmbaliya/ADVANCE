import 'package:animation_project/controllers/api_controller.dart';
import 'package:animation_project/models/hero_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ApiController controller = Provider.of<ApiController>(context);
    Heros hero = ModalRoute.of(context)!.settings.arguments as Heros;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          hero.name,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: Hero(
              tag: true,
              child: Image(
                image: NetworkImage(
                  hero.images.md,
                ),
                height: 200,
              ),
            ),
          ),
        ],
      ),
      // body: Column(
      //   children: [
      //     Text(
      //       hero.id.toString(),
      //     ),
      //     Container(
      //       height: 200,
      //       width: 200,
      //       child: Hero(
      //         tag: 'Splash',
      //         child: Image(
      //           image: NetworkImage(hero.images.lg),
      //         ),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
