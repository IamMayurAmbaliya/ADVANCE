import 'package:api_calling_using_helpers/headers.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

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
              'Event',
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
              Navigator.of(context).pushNamed(AppRoutes.instance.contentPage);
            },
            icon: const Icon(
              Icons.next_plan_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: controller.allEvents.isEmpty
          ? const CircularProgressIndicator()
          : ListView.builder(
              itemCount: controller.allEvents.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Season :${controller.allEvents[index].shortDisplayName}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      // Text(
                      //   "Start-Time :${controller.allEvents[index].startTime}",
                      //   style: const TextStyle(fontSize: 20),
                      //   overflow: TextOverflow.ellipsis,
                      //   maxLines: 2,
                      // ),
                      // Text(
                      //   "End-Time :${controller.allEvents[index].endTime}",
                      //   style: const TextStyle(fontSize: 20),
                      //   overflow: TextOverflow.ellipsis,
                      //   maxLines: 2,
                      // ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
