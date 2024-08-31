import 'package:api_calling_using_helpers/headers.dart';

class PlayerCardPage extends StatelessWidget {
  const PlayerCardPage({super.key});

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
              'PlayerCard',
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
                  .pushNamed(AppRoutes.instance.currenciesPage);
            },
            icon: const Icon(
              Icons.next_plan_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: controller.allPlayerCard.isEmpty
          ? const CircularProgressIndicator()
          : ListView.builder(
              itemCount: controller.allPlayerCard.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage(controller.allPlayerCard[index].wideArt),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
    );
  }
}
