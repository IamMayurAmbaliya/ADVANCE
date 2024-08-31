import 'package:api_calling_using_helpers/global.dart';
import 'package:api_calling_using_helpers/headers.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

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
              'Exercise',
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
                initialValue: Globals.globals.searchExerciseName,
                onSaved: (val) {
                  Globals.globals.searchExerciseName = val ?? "biceps";
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
                  labelText: "Search The Name of Exercise",
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
            child: controller.allExercises.isEmpty
                ? const CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                      itemCount: controller.allExercises.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              // margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(16),
                                // image: DecorationImage(
                                //   image: NetworkImage(
                                //     controller.allEmojis[index].image,
                                //   ),
                                //   fit: BoxFit.cover,
                                // ),
                              ),
                            ),
                            Text(
                              "Name : ${controller.allExercises[index].name}",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Type : ${controller.allExercises[index].type}",
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Muscle : ${controller.allExercises[index].muscle}",
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Equipment : ${controller.allExercises[index].equipment}",
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Difficulty : ${controller.allExercises[index].difficulty}",
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Instructions : ${controller.allExercises[index].instructions}",
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
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
