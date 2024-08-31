import 'package:api_calling_using_helpers/global.dart';
import 'package:api_calling_using_helpers/headers.dart';

class HelicopterPage extends StatelessWidget {
  const HelicopterPage({super.key});

  @override
  Widget build(BuildContext context) {
    WallPaperController controller = Provider.of<WallPaperController>(context);
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Helicopter-Manufacturer',
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: TextFormField(
                initialValue: Globals.globals.searchHelicopterManufacturerName,
                onSaved: (val) {
                  Globals.globals.searchHelicopterManufacturerName =
                      val ?? "bell";
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      formKey.currentState!.save();
                      controller.getData();
                    },
                    icon: const Icon(
                      Icons.search,
                    ),
                  ),
                  labelText: "Search The Name of HelicopterManufacturer",
                  labelStyle: TextStyle(
                    color: Colors.blue.shade900,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          Container(
            child: controller.allHelicopterManufacturers.isEmpty
                ? const CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                      itemCount: controller.allHelicopterManufacturers.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            width: 200,
                            child: Column(
                              children: [
                                Text(
                                  "manufacturer : ${controller.allHelicopterManufacturers[index].manufacturer}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "model : ${controller.allHelicopterManufacturers[index].model}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "fuelCapacityGallons : ${controller.allHelicopterManufacturers[index].fuelCapacityGallons}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "numBlades : ${controller.allHelicopterManufacturers[index].numBlades}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "lengthFt : ${controller.allHelicopterManufacturers[index].lengthFt}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "heightFt : ${controller.allHelicopterManufacturers[index].heightFt}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
