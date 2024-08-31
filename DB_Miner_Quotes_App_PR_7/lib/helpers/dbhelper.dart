import 'package:db_miner_quotes_app_pr_7/headers.dart';

class DbHelper {
  DbHelper._();

  static final DbHelper dbHelper = DbHelper._();

  late Database database;
  Logger logger = Logger();

  // Future<void> initDb() async {
  //   String dbPath = await getDatabasesPath();
  //   database = await openDatabase(
  //     "$dbPath/$dbName",
  //     version: 1,
  //     onCreate: (db, version) {
  //       String query = """CREATE TABLE IF NOT EXISTS $tableName(
  //       $userID INTEGER PRIMARY KEY AUTOINCREMENT,
  //       $userName TEXT NOT NULL,
  //       $userContact TEXT UNIQUE,
  //       $userEmail TEXT UNIQUE
  //       );""";
  //
  //       //OnCreate ma internal aapelo database je ****db****(db,version valo) che ano use karvo
  //       db
  //           .execute(query)
  //           .then((value) => logger.i("$tableName CREATED....."))
  //           .onError((error, stackTrace) => logger.e("ERROR: $error"));
  //     },
  //     onUpgrade: (db, version1, version2) {},
  //     onDowngrade: (db, version1, version2) {},
  //   );
  // }
}
