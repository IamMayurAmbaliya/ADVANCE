import 'package:local_database_of_employee_data/headers.dart';

class DbController extends ChangeNotifier {
  List<Employee> allEmployees = [];

  DbController() {
    initData();
  }

  void initData() async {
    DbHelper.dbHelper.initDb();
    allEmployees = await DbHelper.dbHelper.getAllEmployee();
    notifyListeners();
  }

  void insertData({required Employee employee}) {
    DbHelper.dbHelper.insertEmployee(employee: employee);
    initData();
    notifyListeners();
  }
}
