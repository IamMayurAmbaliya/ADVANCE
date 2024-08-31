import 'package:api_calling_using_helpers/headers.dart';

class CurrenciesPage extends StatelessWidget {
  const CurrenciesPage({super.key});

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
              'Currencies',
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
              Navigator.of(context).pushNamed(AppRoutes.instance.themePage);
            },
            icon: const Icon(
              Icons.next_plan_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: controller.allCurrency.isEmpty
          ? const CircularProgressIndicator()
          : ListView.builder(
              itemCount: controller.allCurrency.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(
                        controller.allCurrency[index].displayIcon,
                      ),
                    ),
                  ),
                  // child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       controller.allCurrency[index].displayName,
                  //       style: const TextStyle(
                  //         fontSize: 20,
                  //       ),
                  //     ),
                  //     Text(
                  //       controller.allCurrency[index].displayNameSingular,
                  //       style: const TextStyle(fontSize: 20),
                  //     ),
                  //   ],
                  // ),
                );
              },
            ),
    );
  }
}
