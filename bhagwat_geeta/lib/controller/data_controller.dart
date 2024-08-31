import 'package:bhagwat_geeta/headers.dart';

class DataController extends ChangeNotifier {
  List allData = [];

  DataController() {
    loadJson();
  }

  void loadJson() async {
    String data = await rootBundle.loadString("lib/assets/data.json");

    allData = jsonDecode(data);
    notifyListeners();
  }
}
