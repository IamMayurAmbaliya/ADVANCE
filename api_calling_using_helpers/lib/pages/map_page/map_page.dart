import 'package:api_calling_using_helpers/headers.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    WallPaperController controller = Provider.of<WallPaperController>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Map',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                  fontSize: 22),
            ),
            Text(
              'App',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.orange,
                  fontSize: 22),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(AppRoutes.instance.levelBorderPage);
            },
            icon: const Icon(
              Icons.next_plan_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: controller.allMaps.isEmpty
          ? const CircularProgressIndicator()
          : ListView.builder(
              itemCount: controller.allMaps.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(controller.allMaps[index].splash),
                    ),
                  ),
                  // child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       controller.allMaps[index].displayName,
                  //       style: const TextStyle(
                  //         fontSize: 20,
                  //       ),
                  //     ),
                  //     Text(
                  //       controller.allMaps[index].tacticalDescription,
                  //       style: const TextStyle(fontSize: 20),
                  //     ),
                  //   ],
                  // ),
                );
              },
            ),
    );
  }
}
