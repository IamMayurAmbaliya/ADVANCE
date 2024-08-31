import 'package:local_database_of_employee_data/headers.dart';
import 'package:local_database_of_employee_data/models/employee_model.dart';

enum EmployeeTable { id, name, contact, email }

class DbHelper {
  DbHelper._();
  static final DbHelper dbHelper = DbHelper._();

  String dbName = "MyEmployeeData.db";
  String tableName = "Employee";

  // String employeeID = "id";
  // String employeeName = "name";
  // String employeeContact = "contact";
  // String employeeEmail = "email";

  late Database database;
  Logger logger = Logger();

  Future<void> initDb() async {
    String dbPath = await getDatabasesPath();
    database = await openDatabase(
      "$dbPath/$dbName",
      version: 1,
      onCreate: (db, version1) {
        String query = """CREATE TABLE IF NOT EXISTS $tableName(
        ${EmployeeTable.id.name} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${EmployeeTable.name.name} TEXT NOT NULL,
        ${EmployeeTable.contact.name} TEXT UNIQUE,
        ${EmployeeTable.email.name} TEXT UNIQUE
        );""";

        //OnCreate ma internal aapelo database je ****db****(db,version valo) che ano use karvo
        db
            .execute(query)
            .then((value) => logger.i("$tableName CREATED....."))
            .onError((error, stackTrace) => logger.e("ERROR: $error"));
      },
      onUpgrade: (db, version1, version2) {},
      onDowngrade: (db, version1, version2) {},
    );
  }

  Future<void> insertEmployee({required Employee employee}) async {
    String sql = "INSERT INTO $tableName(name,contact,email)VALUES(?,?,?);";
    List arguments = [
      employee.name,
      employee.contact,
      employee.email,
    ];
    await database
        .rawInsert(
          sql,
          arguments,
          // [
          //   employee.name,
          //   employee.contact,
          //   employee.email,
          // ]
        )
        .then(
          (value) => logger.i("DATA INSERTED SUCCESSFULLY....."),
        )
        .onError(
          (error, stackTrace) => logger.e("INSERTION ERROR: $error"),
        );
    ;
    //2nd way
    // await database.insert(tableName, employee.getEmployee);
    //values mate modal ma je getter banavyo te call karavi devo....employee.getEmployee kari devu....
  }

  Future<void> updateEmployee({required Employee employee}) async {
    // String sql = "";
    // await database.rawUpdate(sql);

    //2nd Way
    await database.update(tableName);
  }

  Future<void> deleteEmployee({required Employee employee}) async {
    // String sql = "";
    // await database.rawDelete(sql);

    //2nd Way
    await database.delete(
      tableName,
      where: 'id=?',
      whereArgs: [employee.id],
    );
  }

  Future<List<Employee>> getAllEmployee() async {
    List<Employee> allEmployeeData = [];

    String sql = "select * from $tableName";

    List data = await database.rawQuery(sql);

    allEmployeeData = data.map((e) => Employee.fromSQL(e)).toList();

    return allEmployeeData;
  }
}
