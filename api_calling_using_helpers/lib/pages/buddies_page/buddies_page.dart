import 'package:api_calling_using_helpers/headers.dart';

class BuddyPage extends StatelessWidget {
  const BuddyPage({super.key});

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
              'Buddies',
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
              Navigator.of(context).pushNamed(AppRoutes.instance.themePage);
            },
            icon: const Icon(
              Icons.next_plan_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: controller.allBuddies.isEmpty
          ? const CircularProgressIndicator()
          : ListView.builder(
              itemCount: controller.allBuddies.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: NetworkImage(
                            controller.allBuddies[index].displayIcon,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      controller.allBuddies[index].displayName,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      controller.allBuddies[index].levels[0].displayName,
                      style: const TextStyle(fontSize: 20),
                    ),
                    const Divider()
                  ],
                );
              },
            ),
    );
  }
}
