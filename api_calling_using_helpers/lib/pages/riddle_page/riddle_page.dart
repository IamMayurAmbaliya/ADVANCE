import 'package:api_calling_using_helpers/headers.dart';

class RiddlePage extends StatelessWidget {
  const RiddlePage({super.key});

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
              'Riddle',
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
              Navigator.of(context).pushNamed(AppRoutes.instance.homePage);
            },
            icon: const Icon(
              Icons.next_plan_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: controller.allRiddles.isEmpty
          ? const CircularProgressIndicator()
          : ListView.builder(
              itemCount: controller.allRiddles.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        controller.allRiddles[index].title,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        controller.allRiddles[index].question,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        controller.allRiddles[index].answer,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
