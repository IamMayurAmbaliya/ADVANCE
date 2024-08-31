import 'package:local_database_of_employee_data/controllers/dbcontroller.dart';
import 'package:local_database_of_employee_data/headers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.dbHelper.initDb();
  runApp(ChangeNotifierProvider(
    create: (_) => DbController(),
    child: const MyApp(),
  ));
}
