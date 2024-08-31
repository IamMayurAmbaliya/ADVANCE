import 'package:api_calling_using_helpers/headers.dart';

class SprayPage extends StatelessWidget {
  const SprayPage({super.key});

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
              'Spray',
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
              Navigator.of(context).pushNamed(AppRoutes.instance.postPage);
            },
            icon: const Icon(
              Icons.next_plan_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: controller.allSprays.isEmpty
          ? const CircularProgressIndicator()
          : ListView.builder(
              itemCount: controller.allSprays.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(controller.allSprays[index].fullIcon),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
    );
  }
}
