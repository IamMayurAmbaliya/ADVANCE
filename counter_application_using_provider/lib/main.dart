import 'package:counter_application_using_provider/headers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();

  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterController(preferences: preferences),
      child: const MyApp(),
    ),
  );
}
