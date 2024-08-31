import 'package:api_calling_using_helpers/global.dart';
import 'package:api_calling_using_helpers/headers.dart';

class CompanyLogoPage extends StatelessWidget {
  const CompanyLogoPage({super.key});

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
              'CompanyLogo',
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
                initialValue: Globals.globals.searchCompanyName,
                onSaved: (val) {
                  Globals.globals.searchCompanyName = val ?? "Microsoft";
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
                  labelText: "Search CompanyName",
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
          controller.allCompanyLogos.isEmpty
              ? const CircularProgressIndicator()
              : Expanded(
                  child: ListView.builder(
                    itemCount: controller.allCompanyLogos.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 200,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: NetworkImage(
                                  controller.allCompanyLogos[index].image,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            controller.allCompanyLogos[index].name,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            controller.allCompanyLogos[index].ticker,
                            style: const TextStyle(fontSize: 20),
                          ),
                          const Divider()
                        ],
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
