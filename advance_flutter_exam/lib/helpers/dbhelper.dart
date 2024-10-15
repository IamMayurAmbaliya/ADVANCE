import 'package:advance_flutter_exam/models/product_model.dart';
import 'package:logger/logger.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  DbHelper._();
  static final DbHelper dbHelper = DbHelper._();

  String dbName = "MyDatabase.db";
  String tableName = "Product";

  String productID = "id";
  String productName = "name";
  String productCategory = "category";
  String productPrice = "price";

  late Database database;
  Logger logger = Logger();

  Future<void> initDb() async {
    String dbPath = await getDatabasesPath();
    database = await openDatabase(
      "$dbPath/$dbName",
      version: 1,
      onCreate: (db, version) {
        String query = """CREATE TABLE IF NOT EXISTS $tableName(
        $productID INTEGER PRIMARY KEY AUTOINCREMENT,
        $productName TEXT NOT NULL,
        $productCategory TEXT UNIQUE,
        $productPrice TEXT 
        );""";

        db
            .execute(query)
            .then((value) => logger.i("$tableName CREATED....."))
            .onError((error, stackTrace) => logger.e("ERROR: $error"));
      },
      onUpgrade: (db, version1, version2) {},
      onDowngrade: (db, version1, version2) {},
    );
  }

  Future<List<Product>> getAllProduct() async {
    List<Product> allStudentData = [];
    List data = await database.rawQuery("select * from $tableName");
    allStudentData = data.map((e) => Product.fromJson(e)).toList();
    return allStudentData;
  }

  Future<void> insertProduct({required Product product}) async {
    String sql = "INSERT INTO $tableName(name,category,price)VALUES(?,?,?);";
    await database
        .rawInsert(
          sql,
          [productName, productCategory, productPrice],
        )
        .then(
          (value) => logger.i("DATA INSERTED SUCCESSFULLY....."),
        )
        .onError(
          (error, stackTrace) => logger.e("INSERTION ERROR: $error"),
        );
  }

  Future<void> updateProduct({required Product product}) async {
    await database
        .update(
          tableName,
          product.getProduct,
          where: "id=$productID",
        )
        .then(
          (value) => logger.i("DATA INSERTED SUCCESSFULLY....."),
        )
        .onError(
          (error, stackTrace) => logger.e("INSERTION ERROR: $error"),
        );
  }

  void deleteProduct({required Product product}) {
    database
        .delete(
          tableName,
          where: "id=?",
          whereArgs: [productID],
        )
        .then(
          (value) => logger.i('Deleted'),
        )
        .onError(
          (error, stackTrace) => logger.e('Error : $error'),
        );
  }
}
