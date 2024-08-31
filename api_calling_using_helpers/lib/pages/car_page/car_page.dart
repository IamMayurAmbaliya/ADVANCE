import 'package:api_calling_using_helpers/headers.dart';

class CarPage extends StatelessWidget {
  const CarPage({super.key});

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
              'Car',
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
      body: controller.allCars.isEmpty
          ? const CircularProgressIndicator()
          : ListView.builder(
              itemCount: controller.allCars.length,
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
                        controller.allCars[index].carClass,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        controller.allCars[index].fuelType,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        "${controller.allCars[index].cylinders}",
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        "${controller.allCars[index].year}",
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
