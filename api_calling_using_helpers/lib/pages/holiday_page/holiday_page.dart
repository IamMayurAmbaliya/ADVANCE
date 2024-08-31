import 'package:api_calling_using_helpers/global.dart';
import 'package:api_calling_using_helpers/headers.dart';

class HoliDayPage extends StatelessWidget {
  const HoliDayPage({super.key});

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
              'Holiday',
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
              child: Column(
                children: [
                  TextFormField(
                    initialValue: Globals.globals.searchHolidayCountry,
                    onSaved: (val) {
                      Globals.globals.searchHolidayCountry = val ?? "IN";
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
                      labelText: "Enter Country",
                      labelStyle: TextStyle(
                        color: Colors.blue.shade900,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: Globals.globals.searchHolidayYear,
                    onSaved: (val) {
                      Globals.globals.searchHolidayYear = val ?? "2024";
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
                      labelText: "Enter Year",
                      labelStyle: TextStyle(
                        color: Colors.blue.shade900,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          Container(
            child: controller.allHolidays.isEmpty
                ? const CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                      itemCount: controller.allHolidays.length,
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
                                  "Country : ${controller.allHolidays[index].country}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "ISO Code Of Country : ${controller.allHolidays[index].iso}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "Year : ${controller.allHolidays[index].year}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "Date : ${controller.allHolidays[index].date}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "day : ${controller.allHolidays[index].day}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "Name : ${controller.allHolidays[index].name}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "Holiday Type : ${controller.allHolidays[index].type}",
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
