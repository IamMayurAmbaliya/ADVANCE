import 'package:api_calling_using_helpers/headers.dart';

class AgentPage extends StatelessWidget {
  const AgentPage({super.key});

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
              'Agent',
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
              Navigator.of(context).pushNamed(AppRoutes.instance.userPage);
            },
            icon: const Icon(
              Icons.next_plan_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: controller.allAgents.isEmpty
          ? const CircularProgressIndicator()
          : ListView.builder(
              itemCount: controller.allAgents.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage(controller.allAgents[index].displayIcon),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        controller.allAgents[index].displayName,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        controller.allAgents[index].description,
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
