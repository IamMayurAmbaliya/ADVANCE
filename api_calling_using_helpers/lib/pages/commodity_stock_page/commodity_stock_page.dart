import 'package:api_calling_using_helpers/global.dart';
import 'package:api_calling_using_helpers/headers.dart';

class CommodityStockPage extends StatelessWidget {
  const CommodityStockPage({super.key});

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
              'CommodityPrice',
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
                initialValue: Globals.globals.searchCommodityStock,
                onSaved: (val) {
                  Globals.globals.searchCommodityStock = val ?? "Gold";
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
                  labelText: "Enter Stock Name",
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
            child: controller.commodityStock == null
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Exchange : ${controller.commodityStock!.exchange}"
                              .toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Stock-Name : ${controller.commodityStock!.name}"
                              .toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Price : ${controller.commodityStock!.price}"
                              .toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Updated : ${controller.commodityStock!.updated}"
                              .toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
