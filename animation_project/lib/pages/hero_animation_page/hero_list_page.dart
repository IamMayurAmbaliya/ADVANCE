import 'package:animation_project/controllers/api_controller.dart';
import 'package:animation_project/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeroListPage extends StatelessWidget {
  const HeroListPage({super.key});

  @override
  Widget build(BuildContext context) {
    ApiController controller = Provider.of<ApiController>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Hero",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                  fontSize: 22),
            ),
            Text(
              "Page",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.orange,
                  fontSize: 22),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: controller.allHeros.isEmpty
                    ? const CircularProgressIndicator()
                    : ListView.builder(
                        itemCount: controller.allHeros.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                  AppRoutes.instance.heroDetailPage,
                                  arguments: controller.allHeros[index],
                                );
                              },
                              child: Center(
                                child: Hero(
                                  tag: 'true1',
                                  child: Image(
                                    image: NetworkImage(
                                      controller.allHeros[index].images.md,
                                    ),
                                    height: 100,
                                    width: 150,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
