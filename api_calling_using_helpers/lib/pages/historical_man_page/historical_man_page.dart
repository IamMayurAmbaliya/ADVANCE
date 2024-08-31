import 'package:api_calling_using_helpers/global.dart';
import 'package:api_calling_using_helpers/headers.dart';

class HistoricalManPage extends StatelessWidget {
  const HistoricalManPage({super.key});

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
              'HistoricalMan',
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
                initialValue: Globals.globals.searchHistoricalManName,
                onSaved: (val) {
                  Globals.globals.searchHistoricalManName =
                      val ?? "Maharana Pratap";
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
                  labelText: "Search Name Of HistoricalMan",
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
            child: controller.allHistoricalMans.isEmpty
                ? const CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                      itemCount: controller.allHistoricalMans.length,
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
                                  "name : ${controller.allHistoricalMans[index].name}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "title : ${controller.allHistoricalMans[index].title}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "born : ${controller.allHistoricalMans[index].info.born}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "died : ${controller.allHistoricalMans[index].info.died}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "reign : ${controller.allHistoricalMans[index].info.reign}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "dynasty : ${controller.allHistoricalMans[index].info.dynasty}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "religion : ${controller.allHistoricalMans[index].info.religion}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "spouse : ${controller.allHistoricalMans[index].info.spouse}",
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
