import 'package:api_calling_using_helpers/global.dart';
import 'package:api_calling_using_helpers/headers.dart';

class HistoricalEventPage extends StatelessWidget {
  const HistoricalEventPage({super.key});

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
              'HistoricalEvent',
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
                initialValue: Globals.globals.searchHistoricalEventName,
                onSaved: (val) {
                  Globals.globals.searchHistoricalEventName =
                      val ?? "maratha empire";
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
                  labelText: "Search HistoricalEvent",
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
            child: controller.allHistoricalEvents.isEmpty
                ? const CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                      itemCount: controller.allHistoricalEvents.length,
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
                                  "day : ${controller.allHistoricalEvents[index].day}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "month : ${controller.allHistoricalEvents[index].month}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "year : ${controller.allHistoricalEvents[index].year}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "event : ${controller.allHistoricalEvents[index].event}",
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
