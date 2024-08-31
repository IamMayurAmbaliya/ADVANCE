import 'package:api_calling_using_helpers/headers.dart';

class WeaponPage extends StatelessWidget {
  const WeaponPage({super.key});

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
              'Weapon',
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
              Navigator.of(context).pushNamed(AppRoutes.instance.sprayPage);
            },
            icon: const Icon(
              Icons.next_plan_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      // body: FutureBuilder(
      //   future: ApiHelper.apiHelper.getPostData(),
      //   builder: (context, Snapshot) {
      //     if (Snapshot.hasData) {
      //       List<Post> data = Snapshot.data ?? [];
      //       return ListView.builder(
      //         itemCount: data.length,
      //         itemBuilder: (context, index) {
      //           return Container(
      //             height: 200,
      //             color: Colors.black,
      //             padding: const EdgeInsets.all(8),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(
      //                   "User Id: ${data[index].userId}",
      //                   style: const TextStyle(
      //                     fontSize: 20,
      //                   ),
      //                 ),
      //                 Text(
      //                   "     Id: ${data[index].id}",
      //                   style: const TextStyle(fontSize: 20),
      //                 ),
      //                 Text(
      //                   "  Title: ${data[index].title}",
      //                   style: const TextStyle(fontSize: 20),
      //                   overflow: TextOverflow.ellipsis,
      //                   maxLines: 2,
      //                 ),
      //                 Text(
      //                   "   Body: ${data[index].body}",
      //                   style: const TextStyle(fontSize: 20),
      //                   overflow: TextOverflow.ellipsis,
      //                   maxLines: 2,
      //                 ),
      //               ],
      //             ),
      //           );
      //         },
      //       );
      //     } else {
      //       return const CircularProgressIndicator();
      //     }
      //   },
      // ),
      body: controller.allWeapons.isEmpty
          ? const CircularProgressIndicator()
          : ListView.builder(
              itemCount: controller.allWeapons.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          controller.allWeapons[index].displayIcon),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
    );
  }
}
