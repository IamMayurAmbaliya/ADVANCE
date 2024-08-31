import 'package:sqlite_local_database/headers.dart';

// enum UserTable { id, name, contact, email }

class DbHelper {
  DbHelper._();
  static final DbHelper dbHelper = DbHelper._();

  String dbName = "MyDatabase.db";
  String tableName = "User";

  String userID = "id";
  String userName = "name";
  String userContact = "contact";
  String userEmail = "email";

  late Database database;
  Logger logger = Logger();

  Future<void> initDb() async {
    String dbPath = await getDatabasesPath();
    database = await openDatabase(
      "$dbPath/$dbName",
      version: 1,
      onCreate: (db, version) {
        String query = """CREATE TABLE IF NOT EXISTS $tableName(
        $userID INTEGER PRIMARY KEY AUTOINCREMENT,
        $userName TEXT NOT NULL,
        $userContact TEXT UNIQUE,
        $userEmail TEXT UNIQUE
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

  Future<List<User>> getAllUser() async {
    List<User> allStudentData = [];
    List data = await database.rawQuery("select * from $tableName");
    allStudentData = data.map((e) => User.fromSQL(e)).toList();
    return allStudentData;
  }

  Future<void> insertUser({required User user}) async {
    String sql = "INSERT INTO $tableName(name,contact,email)VALUES(?,?,?);";
    await database
        .rawInsert(
          sql,
          [userName, userContact, userEmail],
        )
        .then(
          (value) => logger.i("DATA INSERTED SUCCESSFULLY....."),
        )
        .onError(
          (error, stackTrace) => logger.e("INSERTION ERROR: $error"),
        );
  }

  Future<void> updateUser({required User user}) async {
    await database
        .update(
          tableName,
          // User model mathi getter banvyo last ma getUser e call karavvo as values je Map<String, Object?> ma malse
          user.getUser,
          where: "id=$userID",
        )
        .then(
          (value) => logger.i("DATA INSERTED SUCCESSFULLY....."),
        )
        .onError(
          (error, stackTrace) => logger.e("INSERTION ERROR: $error"),
        );
  }

  void deleteUser({required User user}) {
    database
        .delete(
          tableName,
          where: "id=?",
          whereArgs: [userID],
        )
        .then(
          (value) => logger.i('Deleted'),
        )
        .onError(
          (error, stackTrace) => logger.e('Error : $error'),
        );
  }
}
