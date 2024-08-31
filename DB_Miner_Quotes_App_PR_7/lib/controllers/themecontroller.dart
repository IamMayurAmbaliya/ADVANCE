import 'package:db_miner_quotes_app_pr_7/headers.dart';

class ThemeController extends ChangeNotifier {
  bool isDark = false;

  void changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
