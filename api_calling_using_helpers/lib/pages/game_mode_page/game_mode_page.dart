import 'package:api_calling_using_helpers/headers.dart';

class GameModePage extends StatelessWidget {
  const GameModePage({super.key});

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
              'GameMode',
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
              Navigator.of(context).pushNamed(AppRoutes.instance.eventPage);
            },
            icon: const Icon(
              Icons.next_plan_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: controller.allGameModes.isEmpty
          ? const CircularProgressIndicator()
          : ListView.builder(
              itemCount: controller.allGameModes.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          controller.allGameModes[index].listViewIconTall),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // child: Column(
                  //   children: [
                  //     Text(
                  //       controller.allGameModes[index].displayName,
                  //       style: const TextStyle(
                  //         fontSize: 20,
                  //       ),
                  //     ),
                  //     Text(
                  //       controller.allGameModes[index].duration,
                  //       style: const TextStyle(
                  //         fontSize: 20,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                );
              },
            ),
    );
    ;
  }
}
