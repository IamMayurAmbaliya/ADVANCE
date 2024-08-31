import 'package:provider/provider.dart';
import 'package:sqlite_local_database/controllers/dbController.dart';
import 'package:sqlite_local_database/headers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.dbHelper.initDb();
  runApp(
    ChangeNotifierProvider(
      create: (context) => DbController(),
      child: const MyApp(),
    ),
  );
}
