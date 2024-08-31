import 'package:api_calling_using_helpers/global.dart';
import 'package:api_calling_using_helpers/headers.dart';

class SwiftCodePage extends StatelessWidget {
  const SwiftCodePage({super.key});

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
              'SwiftCode',
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
                initialValue: Globals.globals.searchBankName,
                onSaved: (val) {
                  Globals.globals.searchBankName = val ?? "Hdfc bank";
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
                  labelText: "Enter BankName",
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
            child: controller.allSwiftCodes.isEmpty
                ? const CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                      itemCount: controller.allSwiftCodes.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "*bankName* : ${controller.allSwiftCodes[index].bankName}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "*city* : ${controller.allSwiftCodes[index].city}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "*country* : ${controller.allSwiftCodes[index].country}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "*countryCode* : ${controller.allSwiftCodes[index].countryCode}",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "*swiftCode* : ${controller.allSwiftCodes[index].swiftCode}",
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
