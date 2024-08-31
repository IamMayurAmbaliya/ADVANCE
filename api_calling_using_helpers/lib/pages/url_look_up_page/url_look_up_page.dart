import 'package:api_calling_using_helpers/global.dart';
import 'package:api_calling_using_helpers/headers.dart';

class UrlLookUpPage extends StatelessWidget {
  const UrlLookUpPage({super.key});

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
              'UrlLookUp',
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
                initialValue: Globals.globals.searchUrl,
                onSaved: (val) {
                  Globals.globals.searchUrl = val ?? "https://www.facebook.com";
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
                  labelText: "Enter Url",
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
            child: controller.urlLookUp == null
                ? const CircularProgressIndicator()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.urlLookUp!.url,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        controller.urlLookUp!.city,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
