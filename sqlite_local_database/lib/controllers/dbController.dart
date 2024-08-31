import 'package:sqlite_local_database/headers.dart';

class DbController extends ChangeNotifier {
  List<User> allUsersData = [];

  DbController() {
    initData();
  }

  Future<void> initData() async {
    await DbHelper.dbHelper.initDb();
    allUsersData = await DbHelper.dbHelper.getAllUser();
    notifyListeners();
  }

  Future<void> insertData({required User user}) async {
    await DbHelper.dbHelper.insertUser(user: user);
    initData();
    notifyListeners();
  }

  Future<void> updateUser({required User user}) async {
    await DbHelper.dbHelper.updateUser(user: user);
    initData();
    notifyListeners();
  }

  void deleteUser({required User user}) {
    DbHelper.dbHelper.deleteUser(user: user);
    initData();
    notifyListeners();
  }
}
