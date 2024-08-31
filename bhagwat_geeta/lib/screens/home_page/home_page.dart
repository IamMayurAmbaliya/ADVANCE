import 'package:bhagwat_geeta/headers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    DataController mutable = Provider.of<DataController>(context);
    DataController unMutable =
        Provider.of<DataController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "BHAGWAT GEETA",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: mutable.allData.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: mutable.allData.length,
                itemBuilder: (context, index) => ListTile(
                  leading: Text(
                    mutable.allData[index]["chapter_number"].toString(),
                  ),
                  title: Text(
                    mutable.allData[index]["name"],
                  ),
                  subtitle: Text(
                    mutable.allData[index]["name_translation"],
                  ),
                ),
              ),
      ),
    );
  }
}
